# Patiromer (Veltassa) — NDA 205739

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/205739s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 14962. Nephrology / metabolic (hyperkalemia). Relypsa. Approved 2015.

**Summary:** OPAL-HK Part B (randomized withdrawal): patients who responded to patiromer in Part A were re-randomized 1:1 to continue patiromer or switch to placebo. Change in serum potassium from Part B baseline was ranked and the ranks analyzed in a linear model with treatment and the two binary randomization strata; the treatment effect on mean ranks was tested with a two-sided t-test. The effect size was a Hodges-Lehmann difference in median change (placebo minus patiromer) of 0.72 mEq/L (95% CI 0.46 to 0.99), p<0.001. Three subjects had multiply imputed values (10 datasets); tests and estimates were computed per dataset and combined.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- None material. Additions the census lacks: the displayed arm medians are constructed (patiromer = median of the 10 per-dataset medians; placebo = that value plus the HL difference), not observed medians [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=17) PDF p.17].
- The census says missing data in "4 of 107 subjects" were handled via multiple imputation; only 3 were multiply imputed, the 4th was a single regression imputation of the central-lab value from the local-lab value [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=10) PDF p.10].
- The clinical review's protocol summary calls the model "analysis of covariance (ANCOVA) model with strata used at randomization" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000MedR.pdf#page=39) PDF p.39]; the StatR calls it ANOVA. Same model (binary strata only).

Page tags are PDF pages counted by form feeds in the `.txt` files (StatR printed page = PDF page - 1).

## OPAL-HK (RLY5016-301), Part B

### Design

- Part A: single-arm, 4 weeks, N=243. Part B: Part A responders randomized 1:1 to patiromer (called RLY5016 FOS / Veltassa) or placebo; 108 randomized, 107 analyzed (52 placebo, 55 patiromer); one subject "randomized into Part B in error and not dosed" excluded [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=9) PDF p.9, p.17].
- Randomization: central IWRS, stratified in four strata, blocks of size 4 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=7) PDF p.7]:
  - Type 2 diabetes mellitus: yes / no
  - Part A baseline central-lab serum potassium: < 5.8 / ≥ 5.8 mEq/L
- Single-blind (subjects blinded, investigators not) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=7) PDF p.7]. Part B lasted 8 weeks; primary at Week 4.
- Primary population: ITT = all randomized subjects who met Part B eligibility criteria [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=10) PDF p.10].

### Endpoint

- Change from Part B baseline (central lab; Part B baseline = Part A Week 4) in serum potassium (mEq/L) to either (a) Part B Week 4, if local-lab potassium stayed ≥ 3.8 and < 5.5 mEq/L up to Week 4, or (b) the earliest Part B visit at which local-lab potassium was < 3.8 or ≥ 5.5 mEq/L [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=9) PDF p.9].
- So the assessment time is subject-specific: an out-of-range local value triggers intervention and freezes the endpoint at that visit. The trigger uses the local lab; the analyzed value is the central lab.
- Distributional remarks: none stated.

### Hypothesis and contrast

- Patiromer vs placebo; two-sided, type I error 0.05 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000MedR.pdf#page=39) PDF p.39].
- Difference reported as placebo minus patiromer.
- Estimand language: Not stated. The endpoint definition is in effect a composite/while-in-range strategy.

### Primary analysis method

- Described as: "changes from baseline serum potassium were ranked, and the treatment groups were compared using an ANOVA model with strata used at randomization ... included as covariates and a treatment indicator. ... the difference between the mean ranks was tested using a two-sided t-test" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=11) PDF p.11].
- What is ranked: the response (change from Part B baseline) only.
- Ranking scope: Not stated explicitly; the wording (rank, then adjust for strata in the model) implies overall ranking across all 107 subjects, not within stratum (see Implementation notes).
- Score type and ties: Not stated.

Model for the ranks:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment indicator | categorical | 2 (placebo, patiromer) | tested by t-test on its coefficient (difference in adjusted mean ranks) |
| Part A baseline serum potassium | categorical | 2 (< 5.8, ≥ 5.8 mEq/L) | randomization stratum |
| Type 2 diabetes mellitus | categorical | 2 (yes, no) | randomization stratum |

- Whether the two strata enter as two main effects or as one 4-level factor (with interaction), and any treatment-by-stratum term: Not stated.
- Reference distribution: t (two-sided); degrees of freedom after MI combination: Not stated.
- No continuous covariate (Part B baseline potassium is not in the model).

### Effect estimate and interval

- "The difference and 95% CI between the treatment groups in median change from baseline was estimated using a Hodges-Lehmann estimator" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=11) PDF p.11]. Unstratified vs stratified HL: Not stated.
- Displayed medians: patiromer median = "median of Veltassa medians from the 10 complete- observation datasets"; placebo median = patiromer median + HL difference [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=17) PDF p.17]. Quartiles are shown per arm; how they were combined: Not stated.

### Missing data and intercurrent events

- 4 of 107 subjects had imputed endpoint values [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=10) PDF p.10]:
  - 3 subjects missing both central and local values at Week 4 due to early withdrawal (none had a prior out-of-range local value): multiple imputation.
  - 1 subject missing the central value but with a local value: central value predicted from the local value by a linear regression (single imputation).
- Number of imputations: 10 "complete observation datasets" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=11) PDF p.11].
- Imputation model (variables, method, seed): Not stated.
- Combination: "The statistical tests and estimates were calculated for each of the 10 complete observation datasets and combined using multiple imputation methods" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=11) PDF p.11, p.17]. The specific combining rule (for the rank-model t-test, the HL estimate, and its CI) is Not stated.
- Excursions outside 3.8 to < 5.5 mEq/L are handled by the endpoint definition, not by imputation.

### Multiplicity

- Two secondary endpoints (potassium ≥ 5.5, then ≥ 5.1 mEq/L through Week 8; order as listed in StatR; the MedR lists ≥ 5.1 first) "tested formally only if the primary outcome was statistically significant" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000MedR.pdf#page=39) PDF p.39; [StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=9) PDF p.9].

### Sample size assumptions

- Mean difference 0.5 mEq/L in change, SD of change 0.55, "the assumption that the treatment groups would be compared using Hodges-Lehmann test of the median difference in changes"; 40 per group gives over 90% power at two-sided 0.05 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000MedR.pdf#page=38) PDF p.38].

### Software and code

- Not stated. No code.

### Results as presented

StatR Table 3.6 / Label Table 3 layout: one row; columns = estimated median change (quartiles) for placebo and patiromer, difference in median change estimate (95% CI), p-value. No means, no rank statistics shown.

| | Placebo (N=52) | Patiromer (N=55) | Difference, placebo - patiromer (95% CI) | p |
|---|---|---|---|---|
| Estimated median change in serum K+ (quartiles), mEq/L | 0.72 (0.22, 1.22) | 0.00 (-0.30, 0.30) | 0.72 (0.46, 0.99) | < 0.001 |

[[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=17) PDF p.17; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/205739s000lbl.pdf) §14 Table 3]. The p-value is "for between-group difference in mean ranks of change".

### Sensitivity and supportive analyses

- Subgroup analyses with the same ranked ANOVA, dropping the stratum that defines the subgroup (e.g. within T2DM subgroups the model keeps only the potassium stratum) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000MedR.pdf#page=57) PDF p.57 Table 22 footnotes c, d].
- Reviewer's Wilcoxon test (below).

### FDA reviewer comments and reanalyses

- Reviewer confirmed the sponsor's results and "also used other nonparametric test statistical methods such as Wilcoxon test to verify the primary efficacy results in Part B"; missing data "seem to be minor" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=17) PDF p.17]. No numbers given for the Wilcoxon check.

### Verbatim specification excerpts

> "In Part B, changes from baseline serum potassium were ranked, and the treatment groups were compared using an ANOVA model with strata used at randomization (Part A Baseline serum potassium [< 5.8 or ≥ 5.8 mEq/L] and presence of T2DM [yes/no]) included as covariates and a treatment indicator. To compare Veltassa with placebo, the difference between the mean ranks was tested using a two-sided t-test. The difference and 95% CI between the treatment groups in median change from baseline was estimated using a Hodges-Lehmann estimator. The statistical tests and estimates were calculated for each of the 10 complete observation datasets and combined using multiple imputation methods." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=11), PDF p.11]

> "The estimated median change in the Veltassa group was calculated as the median of Veltassa medians from the 10 complete- observation datasets created through multiple imputations. The placebo median was calculated by adding the Hodges-Lehmann difference to the RLY5016 FOS median." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=17), PDF p.17]

> "The potassium level was estimated using multiple imputation for 3 of 107 subjects, which were missing both central and local laboratory serum potassium values at Week 4 because of early withdrawal from Part B" — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=10), PDF p.10]

> "If no central laboratory serum potassium value is available for a visit but a local laboratory value is available, missing central laboratory serum potassium results were estimated from local laboratory results using a linear regression. Multiple imputation procedures were used in the event where the local laboratory result was also missing at a given visit." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf#page=10), PDF p.10]

> "An analysis of covariance (ANCOVA) model with strata used at randomization would be used to compare the treatment groups and estimate a mean difference in ranks. To compare RLY5016 with placebo, the difference between the mean ranks would be tested using a t-test." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000MedR.pdf#page=39), PDF p.39]

### Implementation notes (inference)

- Inference: this is a rank-transform (Conover-Iman) linear model, not a van Elteren test. In each completed dataset: `PROC RANK` (ties = mean) on change over all subjects; `PROC GLM`/`PROC MIXED` with `CLASS trt k_stratum t2dm; MODEL rank = trt k_stratum t2dm;` and take the treatment estimate, SE and t-test. In R: `lm(rank(chg) ~ trt + kstrat + t2dm)`.
- Inference on combining: the natural reading is Rubin's rules via `PROC MIANALYZE` on the per-dataset treatment coefficient (difference in adjusted mean ranks) and its SE, giving a pooled t-test. Ranks must be recomputed within each imputed dataset. For the HL estimate, Rubin's rules need a per-dataset SE, which could be backed out of each Moses CI (width / (2 × 1.96)); the sources do not say this was done. The arm medians were clearly combined ad hoc (median of medians), so the HL point estimate and CI limits may also have been combined by a simple median or mean across datasets. A programmer must choose and document the rule.
- With only 3 of 107 values multiply imputed, between-imputation variance is tiny and any reasonable combining rule gives nearly the same answer.
- Reporting placebo median as patiromer median + HL makes the table internally consistent (0.00 + 0.72 = 0.72) but the "placebo median" is not an observed median; label it as "estimated".
- The quartiles are symmetric about the medians ((0.22, 1.22) around 0.72; (-0.30, 0.30) around 0.00), which suggests they too were constructed (e.g. patiromer quartiles shifted by the HL difference for placebo, then rounded) rather than observed; this is inference.
- The power statement's "Hodges-Lehmann test" presumably means the Wilcoxon rank-sum test, sized as a t-test with (0.5 / 0.55) effect size.
- Open choices: overall vs within-stratum ranking; strata as two main effects vs one 4-level factor; ties method; the single regression-imputed subject is treated as observed.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000StatR.pdf) — fetched (`statr.txt`)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/205739Orig1s000MedR.pdf) — fetched (`medr.txt`)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/205739s000lbl.pdf) — fetched (`label.txt`)
- NEJM 2015 publication and protocol/SAP supplement (10.1056/NEJMoa1410853) — failed (403)
- ClinicalTrials.gov API [NCT01810939](https://clinicaltrials.gov/study/NCT01810939) — no protocol/SAP posted
