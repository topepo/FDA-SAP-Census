# Analysis-tables project — status and next steps

## Context

Alongside the SAP census itself, a second effort has been building a normalized "poor man's database" under `tables/` — controlled-vocabulary tables (`Method`/`primary_label`/`type`+`method` → `species`) paired with `_counts.tsv` files that count how many of the ~684 census entries' `README.md` `Keywords:` bullets mention each entry, built by substring-matching against the raw bullet text (not full-entry reads). Three tables exist and are considered current:

- `tables/primary_analysis.tsv` + `tables/primary_analysis_counts.tsv` — statistical methods, sourced from every entry's `- *Primary analysis:*` bullet
- `tables/multiplicity.tsv` + `tables/multiplicity_counts.tsv` — multiplicity/interim-monitoring structure, sourced from `- *Multiplicity:*` + `- *Interim/alpha-spending:*` bullets combined
- `tables/imputations.tsv` + `tables/imputations_counts.tsv` — missing-data handling methods, sourced from `- *Missing data/bias:*` bullets

The older `Analysis_Taxonomy.md`, `Analysis_Records.csv`, and `Analysis_Taxonomy_Raw_Values.csv` (a 14-drug pilot + raw term dump built before the `tables/` pattern existed) have been retired/deleted — superseded by the above. This doc preserves the one piece of still-useful content from `Analysis_Taxonomy.md` that was never carried into a table (the Trial_Design and Claim_Type seed vocabularies, below), plus lays out the two new workstreams (secondary-endpoint analyses, clin pharm analyses) agreed as next up.

## Methodology playbook (read this before starting any of the below)

Lessons from building the three existing tables — skipping these will waste a session re-learning them:

1. **Harvest raw bullet lines with a targeted grep, not a full-entry read.** `grep -oE '^\- \*<Category>:\*.*' README.md | sed 's/^- \*<Category>:\* //'` pulls every entry's bullet for one Keywords category in one shot (~679-684 lines depending on category). This is cheap; a full per-entry read for 684 drugs is not, and isn't needed for this kind of table.
2. **Don't naively split bullet lines on commas to enumerate "unique values."** Model-covariate lists ("...with terms for treatment, region, visit, baseline score...") use unprotected commas too, and naive splitting fragments them into garbage pseudo-methods. Prefer: build a controlled vocabulary top-down (general label → specific named "species"), then substring-match whole lines against it.
3. **Separate the general method/label from the specific named technique.** Every table here ended up as `general_label → species`, where `species` is either a real named technique (e.g. `Miettinen-Nurminen method`) or the literal string `non-specific` (general method used, no specific technique named). Every general label should have a `non-specific` row — don't skip it, and don't reuse the label's own name as a stand-in for `non-specific` (do that once, then correct it — see multiplicity table history).
4. **Purpose is not machinery — don't let one absorb the other.** Two confirmed mistakes this session, worth re-reading before repeating them:
   - Adjustment/completion procedures (RPSFT, IPCW, multiple imputation) are not themselves *inferential methods* — they feed into one (a Cox model, an ANCOVA, etc.). But they *can* be their own row in a table whose scope is "how was missing/incomplete data handled," which is a legitimate, separate axis from "what was the primary inferential test."
   - A stopping *purpose* (e.g. "futility") is not a statistical *method*. Conditional-power rules, Bayesian predictive-probability rules, and formal beta-spending functions are three different pieces of machinery that can each serve a futility-motivated stop — don't let "mentions futility" become the anchor for one specific machinery's catch-all bucket (this inflated `multiplicity.tsv`'s `beta spending | non-specific` from ~8 to 48 before it was caught and split into three separate methods).
   - Similarly, "sensitivity analysis" is not itself an imputation method (tipping-point analysis is a robustness check that *uses* multiple imputation as a mechanism; it doesn't belong in `imputations.tsv` as its own row).
5. **Verify coverage with a rough substring-match count before trusting a proposed vocabulary.** Aim for high-80s/90s% coverage of the raw corpus; read the unmatched residual in full (it's usually 30-100 lines, very readable) and bucket it into: genuine new categories to add, mis-filed content that belongs in a different table, and matching-script false negatives. Don't guess at gaps without doing this pass.
6. **Typos in a method/species name silently zero out that row's count** if a matching script keys off the exact string. Check `awk -F'\t' '{print NF}' file.tsv | sort | uniq -c` after every edit — trailing tabs get silently stripped by the file-write tooling in this environment, which breaks column counts if not caught.
7. **Watch for cross-row double-counting**, especially for a `non-specific` row under a method with no other named species — its anchor terms can overlap with a *sibling* method's content and inflate the count unless you explicitly exclude lines already claimed elsewhere (the `multiplicity.tsv` `Sequential | other` bug: 89 → 50 → 6 across three passes of tightening this).
8. **A trial legitimately produces multiple rows.** Don't try to force one-row-per-trial; the whole point of these tables is that a single entry's bullet can, and usually does, name several methods/species at once.

## Deferred: `tables/trial_design.tsv`

Not started. Source corpus: `- *Design:*` bullet (684 lines, already known to exist; re-harvest fresh each session since scratch/tmp files don't persist across sessions).

Seed vocabulary (from the retired `Analysis_Taxonomy.md §4`, reclustered from `Keyword_Taxonomy.md §1`'s ~55 flat design-keyword rows) — treat as a starting point to validate against real coverage, not a final list:

- RCT parallel-group
- RCT crossover / PK-bridging
- randomized-withdrawal / enrichment
- single-arm
- external / historical-control comparison
- cross-trial pooled / basket
- adaptive / seamless
- diagnostic-accuracy paired-comparison
- literature-based
- factorial combination-product
- cluster / household-randomized

Expect this to need the same general-label + specific-modifier split as the other three tables (e.g. blinding, comparator type, biomarker-enrichment, dose pooling, crossover-permitted, NI-then-superiority, stratification-factor lists are modifiers on a family, not new families). `Keyword_Taxonomy.md §1` already has the raw 55-term list to start the mapping from — same relationship the other three tables had to `Keyword_Taxonomy.md §3-6`.

## Deferred: `tables/claim_type.tsv`

Not started, and structurally different from the other four tables: there is no dedicated `- *Claim type:*` Keywords bullet in the census template, so this can't be harvested the same way. Claim tier (primary / key secondary / secondary / sensitivity / exploratory) is embedded as parenthetical annotations *within* the `- *Endpoints:*` bullet and the narrative "Trial design & endpoints" section (e.g. "PFS (BICR, primary), OS (secondary), ORR (secondary)"), not as its own clean line. Extraction will likely need to parse the `Endpoints:` bullet for `(primary)`/`(secondary)`/`(key secondary)` style parenthetical tags per named endpoint, which is a different (probably regex-per-endpoint-mention) approach than the whole-bullet substring matching used so far. Worth a short scoping pass on a handful of entries before committing to a method.

Seed vocabulary (from the retired `Analysis_Taxonomy.md §5`):

- Primary
- Key secondary
- Secondary
- Sensitivity
- Exploratory
- Subgroup
- Diagnostic accuracy
- Clin Pharm - PK
- Clin Pharm - PD/PK-PD

Note from that doc, still valid: use whichever the source `Keywords:` line actually states for secondary vs. key secondary — don't upgrade a plain "secondary" to "key secondary" without textual support.

This table is also the natural place to eventually join against `tables/primary_analysis.tsv` — the real long-term goal implied by "secondary analyses" below is *not* a new methods vocabulary, but tagging each existing primary_analysis label/species match with which claim tier it applied to.

## New workstream: secondary-endpoint analyses

Problem: `tables/primary_analysis.tsv`/`_counts.tsv` were built only from the `- *Primary analysis:*` bullet. That bullet frequently *does* already name secondary-endpoint methods too (e.g. "Cox proportional-hazards model (PFS, primary), repeated-measures ANCOVA (PRO, secondary)"), so there's likely already substantial secondary-analysis signal sitting uncounted in that same corpus — this is probably cheaper to mine than it sounds.

Recommended approach: **don't build a separate methods vocabulary for secondary endpoints.** The statistical methods themselves (Cox model, ANCOVA, MMRM, etc.) are the same controlled vocabulary already in `tables/primary_analysis.tsv`. What's missing is the claim-tier tag. Two options, in order of preference:

1. Once `tables/claim_type.tsv` exists (see above) and its extraction approach is worked out, re-run the same substring-matching logic used for `primary_analysis_counts.tsv`, but per claim tier — i.e. produce counts of `(primary_label, species, claim_type)` rather than just `(primary_label, species)`. This requires knowing, for each matched line, whether the matched method-phrase is attributed to a primary or secondary endpoint within that same bullet — harder than the existing whole-line matching, since a single bullet can name methods for both tiers in one sentence.
2. Alternative, cheaper first pass: just check whether the `- *Endpoints:*` bullet's secondary-endpoint mentions correlate positionally with specific method phrases in the `- *Primary analysis:*` bullet for a sample of ~20-30 entries, to gauge how often a clean per-tier split is even recoverable from the Keywords bullets alone vs. needing the narrative "Trial design & endpoints" prose.

## New workstream: clin pharm (PK/PD) analyses

Different shape of problem from everything above: Clin Pharm was never one of the census's 7 standard Keywords categories, so there's no dedicated bullet to grep at all. PK/PD content that exists in the census today is scattered across the `- *Primary analysis:*` bullet (only for the minority of entries where PK *was* the primary basis — already partly captured as the `equivalence testing` label's `TOST`/`bioequivalence` species in `tables/primary_analysis.tsv`) and, more often, buried in the free-text "Trial design & endpoints" narrative for entries where PK/PD was a secondary/supportive analysis alongside a clinical primary endpoint.

Recommended approach:
1. Full-text search `README.md` for PK/PD-signal phrases directly (not a Keywords-bullet grep, since none exists): `population PK`, `population pharmacokinetic`, `exposure-response`, `non-compartmental`, `PPK`, `PK/PD model`, `pharmacometric`. Expect a much smaller, sparser hit set than the other four tables' 400-680 lines — this is a fundamentally lower-volume category.
2. Given the likely small N, this may not need the full harvest→coverage-check→gap-review pipeline used for the other tables — a direct read of the matched entries might be more efficient than building substring-match infrastructure for a few dozen hits.
3. Seed vocabulary carried over from the retired `Analysis_Taxonomy.md` (never validated against real data): population PK model, PK/PD exposure-response model, bioequivalence/PK-bridging analysis (ratio of geometric means + 90% CI — already exists as `equivalence testing` species in `primary_analysis.tsv`, don't duplicate), non-compartmental analysis (NCA).
4. `PPK` (population-PK) imputation already has its own row in `tables/imputations.tsv` for the specific case where PK modeling was used to *reconstruct a missing value* — that's a different use case from a dedicated PK/PD analysis table and should stay where it is.

## Suggested order of operations for a future session

1. `tables/trial_design.tsv` — same pattern as the three existing tables, most direct next step.
2. Clin pharm scoping pass (full-text search, likely small N) — cheap to at least measure before committing to more structure.
3. `tables/claim_type.tsv` — needs its own extraction-method scoping pass first (see above) since it can't reuse the whole-bullet substring-match approach directly.
4. Secondary-endpoint analyses — depends on (3) being resolved first.
