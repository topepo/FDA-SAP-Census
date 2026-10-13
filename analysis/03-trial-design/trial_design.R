library(dplyr)
library(purrr)
library(stringr)

source("R/parse_census.R")

# Ordered from most to least design-specific; the first type present in an
# entry's Documents section wins.
doc_types <- c(
  "Protocol/SAP" = "^- (Protocol|Study Protocol|SAP|Statistical Analysis Plan)",
  "FDA Statistical Review" = "^- FDA Statistical",
  "FDA Multi-Discipline/Integrated Review" = "^- FDA (Multi-Discipline|Multi-Disciplinary|Multi-disciplinary|Integrated) Review",
  "FDA Medical/Clinical Review" = "^- FDA (Medical|Clinical)",
  "Pivotal publication" = "^- Pivotal publication",
  "ClinicalTrials.gov record" = "^- ClinicalTrials\\.gov",
  "Package Insert / Label" = "^- (Package Insert|Prescribing Information)"
)

design_doc <- function(x) {
  doc_start <- grep("^\\*\\*Documents\\*\\*", x)
  if (length(doc_start) == 0) {
    return(c(NA_character_, NA_character_))
  }
  doc_lines <- x[(doc_start[1] + 1):length(x)]
  doc_end <- grep("^\\*\\*", doc_lines)
  if (length(doc_end) > 0) {
    doc_lines <- doc_lines[seq_len(doc_end[1] - 1)]
  }
  for (type in names(doc_types)) {
    hits <- grep(doc_types[[type]], doc_lines, value = TRUE, perl = TRUE)
    url <- str_extract(hits, "https?://[^\\s)\\]>,;]+")
    url <- sub("[.]$", "", url[!is.na(url)])
    if (length(url) > 0) {
      return(c(type, url[1]))
    }
  }
  c(NA_character_, NA_character_)
}

entries <-
  read_census("census/census.md") |>
  mutate(
    pivotal_trial = map_chr(lines, field, "^\\*\\*Pivotal trials?[^*]*:\\*\\*"),
    doc = map(lines, design_doc),
    design_doc_type = map_chr(doc, 1),
    design_doc_url = map_chr(doc, 2),
    design_text = map_chr(lines, field, "^- \\*Design:\\*")
  ) |>
  select(-lines, -doc)

# ------------------------------------------------------------------------------
# Classify the free-text Design bullet. Each column is matched independently;
# multi-valued columns are "; "-delimited since one bullet often describes
# several pivotal trials or a multi-part study.

nonrand_pat <- "non-?randomi[sz]ed|single-arm|single arm|uncontrolled|no (internal |concurrent |randomized )?(comparator|control)"
rand_pat <- "(?<!non-)(?<!non)randomi[sz](ed|ation)|\\bRCTs?\\b"

blinding_patterns <- c(
  "Double-blind" = "double[- ]blind|double[- ]mask|(triple|quadruple)[- ](blind|mask)|placebo-masked",
  "Single-blind" = "single[- ]blind|partially masked|assessor[- ]blind|evaluator[- ]blind|investigator[- ]blind|observer[- ]blind|rater[- ]blind|single[- ]mask|blinded (independent|central) read|reader[- ]blind",
  "Open-label" = "open[- ]label|unblinded|non-blinded|unmasked"
)

control_patterns <- c(
  "Placebo" = "placebo|saline-controlled",
  "Vehicle" = "vehicle",
  "Sham" = "\\bsham\\b",
  "Active" = "active[- ]\\(?[a-z ]*\\)?-?(control|comparator)|active-?controlled|double-dummy|head-to-head",
  "Dose comparison" = "dose[- ](comparison|ranging|response|finding|arm)|two-active-dose|multiple (randomized )?dose arms|dose-regimen|fixed-dose",
  "External/historical" = "historical|external[- ]?(control|comparator)|natural[- ]history|threshold|benchmark|performance goal",
  "No treatment/deferred" = "no prophylaxis|on-demand|deferred[- ]treatment|untreated control|delayed[- ]start",
  "Standard of care" = "standard[- ]of[- ]care|best supportive care|investigator'?s choice|physician'?s choice|\\bSOC\\b",
  "Reference standard" = "truth standard|reference standard|histopatholog|paired comparison",
  "None" = "single-arm|single arm|uncontrolled|no (internal |concurrent )?(comparator|control)|non-comparative"
)

family_patterns <- c(
  "Crossover" = "(period|sequence|way|complete|incomplete-block|single|one-way|staggered|blind start\"?)[- ]crossover|(?<!not )(?<!no )crossover (trial|design|stud|diagnostic|phase|dose-ranging|bridging|alcohol)|, crossover,|open-label crossover|within-subject",
  "Crossover permitted" = "(?<!no )crossover[- ](to open-label )?permitted|permitted crossover|rescue[-/]crossover|mandatory crossover|crossover extension|placebo[- ]crossover|crossover from",
  "Randomized withdrawal" = "withdrawal",
  "Single-arm" = "single-arm|single arm|uncontrolled|non-comparative",
  "External/historical control" = "historical|external[- ]?(control|comparator)|natural[- ]history",
  "Pooled/basket" = "pooled|basket|tumor-agnostic|tissue-agnostic|integrated analysis",
  "Adaptive/seamless" = "adaptive|seamless|two-stage|phase 2/3|phase ii/iii|response-adaptive|sample[- ]size re-?estimation",
  "Diagnostic accuracy" = "diagnostic[- ](accuracy|performance|imaging)|paired comparison|sensitivity and specificity",
  "Literature-based" = "literature|published (RCT|trial|stud)",
  "Factorial" = "factorial",
  "Cluster/household" = "cluster|household",
  "Dose-ranging" = "dose[- ](ranging|finding|escalat|response)",
  "Animal Rule" = "animal rule",
  "PK bridging" = "PK[- ]bridging|scientific bridge|bioavailability"
)

hypothesis_patterns <- c(
  "Non-inferiority-then-superiority" = "non-?inferiority[- ]then[- ]superiority|non-?inferiority/superiority",
  "Non-inferiority" = "non-?inferiority(?![- ]then)(?!/superiority)",
  "Equivalence" = "equivalence|bioequivalence",
  "Superiority" = "(?<!then[- ])(?<!/)superiority"
)

design <-
  entries |>
  mutate(
    randomized = case_when(
      has(design_text, rand_pat) & has(design_text, nonrand_pat) ~ "Mixed",
      has(design_text, rand_pat) ~ "Randomized",
      has(design_text, nonrand_pat) ~ "Non-randomized",
      .default = "Not stated"
    ),
    blinding = collapse_hits(design_text, blinding_patterns),
    blinding = if_else(
      blinding == "Not stated" & has(design_text, "(?<!un)(masked|blind)"),
      "Blinded, level not stated",
      blinding
    ),
    control = collapse_hits(design_text, control_patterns),
    design_family = collapse_hits(design_text, family_patterns),
    design_family = case_when(
      has(design_text, "parallel") |
        (randomized %in%
          c("Randomized", "Mixed") &
          !has(
            design_family,
            "Crossover(?! permitted)|Randomized withdrawal|Factorial|Cluster"
          )) ~
        paste("Parallel-group RCT", design_family, sep = "; "),
      .default = design_family
    ),
    design_family = sub("; Not stated$", "", design_family),
    hypothesis = collapse_hits(design_text, hypothesis_patterns),
    allocation_ratio = map_chr(
      str_extract_all(design_text, "\\b[0-9]+(:[0-9]+){1,4}\\b"),
      \(x) {
        if (length(x) == 0) {
          return("Not stated")
        }
        paste(unique(x), collapse = "; ")
      }
    ),
    biomarker_selected = if_else(
      has(
        design_text,
        "biomarker-selected|enriched population|companion diagnostic|mutation-positive|-positive (tumors|population|patients)"
      ),
      "Yes",
      "No"
    ),
    multicenter = case_when(
      has(
        design_text,
        "single[- ]cent(er|re)|single[- ]site"
      ) ~ "Single-center",
      has(
        design_text,
        "multi-?cent(er|re)|multinational|international|global|multi-?site"
      ) ~ "Multicenter",
      .default = "Not stated"
    ),
    n_pivotal_trials = case_when(
      has(
        design_text,
        "\\b(four|4) (near-)?(identical|randomized|phase|pivotal|independent)"
      ) ~ "4",
      has(
        design_text,
        "\\b(three|3) (identical|randomized|phase|pivotal|independent|co-pivotal)"
      ) ~ "3",
      has(
        design_text,
        "\\b(two|2) (replicate|identical|identically|near-identical|randomized|phase|pivotal|independent|co-pivotal|prospective|multicenter)"
      ) ~ "2",
      .default = "1 or not stated"
    )
  ) |>
  relocate(design_text, .after = last_col())

write.table(
  design,
  "analysis/03-trial-design/trial_design.tsv",
  sep = "\t",
  quote = FALSE,
  row.names = FALSE,
  na = ""
)
