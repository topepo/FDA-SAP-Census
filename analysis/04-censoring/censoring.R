library(dplyr)
library(purrr)
library(stringr)

source("R/parse_census.R")

entries <-
  read_census("census/census.md") |>
  mutate(
    endpoints = map_chr(lines, field, "^- \\*Endpoints:\\*"),
    primary_analysis = map_chr(lines, field, "^- \\*Primary analysis:\\*"),
    full_text = map_chr(lines, paste, collapse = " ")
  ) |>
  select(-lines)

# ------------------------------------------------------------------------------
# Restrict to entries whose primary analysis uses a method with
# outcome_type == "Censored" in tables/primary_analysis.tsv.

censored_methods <- c(
  "Kaplan-Meier estimation" = "Kaplan[- ]Meier|Greenwood|restricted mean survival|\\bRMST\\b",
  "Log-rank test" = "log-?rank",
  "Cox proportional-hazards model" = "\\bCox\\b|proportional[- ]hazards",
  "hazard ratio CI" = "hazard ratio|\\bHR\\b",
  "Brookmeyer-Crowley method" = "Brookmeyer",
  "Finkelstein-Schoenfeld method" = "Finkelstein|win ratio",
  "Gehan-Wilcoxon rank score" = "Gehan|Peto",
  "Joint rank test" = "joint rank"
)

# Censoring vocabulary is matched against the full entry text, since censoring
# rules are mostly described in the narrative and SAP excerpts rather than in
# the Keywords bullets. Only sentences that mention "censor" are searched so
# that terms like "data cutoff" or "transplant" elsewhere in the entry don't
# count.

type_patterns <- c(
  "Right-censoring" = "right[- ]censor|censored at (the )?(last|data|date|time|day|randomi[sz]ation|end|withdrawal|initiation|start)|censored (if|for|before|prior)|patients censored|were censored|be censored|is censored|censoring at",
  "Interval-censoring" = "interval[- ]censor",
  "Competing risks" = "competing[- ]risk|competing event|non-CV death|cumulative incidence",
  "Fixed observation window" = "censored (as|at) [0-9]+ (minutes|hours|days)|censored at (31|46) minutes|censored as 14 days|censored at Hour 12|censored at [0-9]+ years|end of (the )?(observation|double-blind) (window|period)"
)

reason_patterns <- c(
  "Data cutoff" = "cut-?off|data cut|database (cutoff|lock)|alive at (the time of )?(trial completion|analysis)",
  "Last contact/known alive" = "last (known[- ])?(alive|contact)|last date known|last follow-up|last visit|last observation|last available|last diary",
  "Last evaluable assessment" = "last (evaluable|adequate|valid|tumor|disease|radiolog|RECIST|EDSS|known CLL)[a-z ]*assessment|last assessment",
  "Lost to follow-up/withdrawal" = "lost to follow-?up|withdraw|early termination|discontinu[a-z]+ (the study|early)",
  "No baseline/post-baseline assessment" = "no (baseline|post-baseline)|randomi[sz]ation ?\\+ ?1 day|at day 1|at randomi[sz]ation if|censored at Time 0",
  "Missed assessments" = "missed (assessment|visit|tumor)|missing (tumor |disease |response )?assessment|2\\+? (or more )?missing|two or more|≥2 (consecutive )?missed|consecutive missed|visit gap|assessment[- ]interval gap|long gaps",
  "New anticancer/alternative therapy" = "new anti-?(cancer|lymphoma|leukemic|myeloma|neoplastic)|subsequent (anti-?cancer )?therap|further (anti-myeloma )?treatment|antineoplastic|alternative (MS )?(drug|medication|therap)|non-protocol",
  "Rescue medication" = "rescue",
  "Treatment discontinuation" = "end[- ]of[- ]treatment|EOT|treatment discontinuation|discontinuation of study drug|on-treatment|last dose",
  "Stem cell transplant" = "transplant|\\bSCT\\b|HSCT",
  "Crossover/switch" = "crossover|switch",
  "COVID-19" = "COVID",
  "Clinical/unconfirmed progression" = "clinical progression|unconfirmed progression|symptomatic deterioration"
)

issue_patterns <- c(
  "Informative/differential censoring" = "informative censoring|differential censoring|imbalanced censoring|censoring imbalance|imbalance in censoring|censoring[- ]distribution imbalance|premature censoring|heavy .{0,20}censoring|early censoring|non-?informative censoring|censoring rate",
  "Censoring-rule sensitivity analyses" = "sensitivity analys[ie]s .{0,80}censor|censor.{0,80}sensitivity analys[ie]s|alternative[- ]censoring|backdat",
  "Worst-case censoring" = "worst[- ]case",
  "IPCW" = "inverse probability of censoring|\\bIPCW\\b",
  "Tipping-point analysis" = "tipping[- ]point",
  "Reverse Kaplan-Meier/time to censoring" = "revers(ed|e)[- ]censoring|reverse Kaplan|time to censoring",
  "FDA-sponsor censoring-rule disagreement/change" = "FDA.{0,60}censoring rules?|censoring rules? .{0,60}(FDA|Agency|reviewer)|changes? to (the )?censoring|censoring[- ]rule (deviation|differences|mismatch)|different censoring|differing censoring",
  "Not applicable (single-arm/descriptive)" = "not applicable in the conventional censoring|not a conventional censoring"
)

censor_sentences <- function(x) {
  s <- str_extract_all(x, regex("[^.;]*censor[^.;]*", ignore_case = TRUE))
  map_chr(s, \(z) paste(z, collapse = " | "))
}

censoring <-
  entries |>
  mutate(
    primary_methods = collapse_hits(primary_analysis, censored_methods, NA)
  ) |>
  filter(!is.na(primary_methods)) |>
  mutate(
    censor_text = censor_sentences(full_text),
    censoring_described = if_else(censor_text == "", "No", "Yes"),
    censoring_type = collapse_hits(censor_text, type_patterns),
    censoring_type = if_else(
      censoring_type == "Not stated" & censoring_described == "Yes",
      "Right-censoring (implied)",
      censoring_type
    ),
    censoring_reasons = collapse_hits(censor_text, reason_patterns),
    censoring_issues = collapse_hits(censor_text, issue_patterns, "None noted")
  ) |>
  select(
    drug,
    application,
    therapeutic_area,
    sponsor,
    year,
    primary_methods,
    censoring_described,
    censoring_type,
    censoring_reasons,
    censoring_issues,
    endpoints,
    censor_text
  )

write.table(
  censoring,
  "analysis/04-censoring/censoring.tsv",
  sep = "\t",
  quote = FALSE,
  row.names = FALSE,
  na = ""
)
