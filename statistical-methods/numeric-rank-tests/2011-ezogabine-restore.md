# Ezogabine / retigabine (Potiga) — NDA 22345

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2011/022345s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 22178. Epilepsy (partial-onset seizures, adjunctive). Valeant / GSK. Approved 2011.

**Summary:** Three placebo-controlled trials compared retigabine doses with placebo on percent change from baseline in 28-day total partial seizure frequency over the double-blind phase. Studies 301 and 302 used a "non-parametric stratified rank ANCOVA": within each stratum (region x baseline seizure category), percent change and baseline seizure rate are converted to standardized ranks (rank / (stratum n + 1)) and the baseline rank is the covariate. Study 205 used a rank ANCOVA (ranked response, ranked baseline covariate, treatment and center as factors) with a closed test for monotone dose trend. All tested doses in the phase 3 trials were significant (301: 1200 mg p < 0.001; 302: 600 mg p = 0.007, 900 mg p < 0.001).

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says Study 205 had "no formal dose-response test reaching significance at every dose". The clinical review reports "a statistically significant linear dose effect (p<0.001)" and closed-test p-values 0.199 (600), 0.043 (900), <0.001 (1200) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.48].
- The census says Study 205 tested "900/1200 mg/day vs. placebo" in the design keyword; it tested 600, 900 and 1200 mg/day [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.5].
- The census does not mention that Study 205 was also re-analyzed post hoc with the 301/302 method ("harmonized analysis"), giving p = 0.156, 0.0495, 0.002 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.48].
- The census quote of the 301/302 method is accurate. The standardization formula sentence is omitted in the census: rank divided by (stratum size + 1).
- No effect estimate with CI (e.g. Hodges-Lehmann) is reported for the primary endpoint in 301/302; only medians and p-values. HL estimates are mentioned only for Study 205.

No SAP or protocol is public for any of the three trials. Everything below is from FDA reviews.

## Studies 301 (VRX-RET-E22-301, RESTORE 1) and 302 (VRX-RET-E22-302, RESTORE 2)

### Design

- 301: retigabine 1200 mg/day vs placebo, 1:1; 306 randomized (154 / 152 in StatR Table 2; ITT 153 / 152) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.9; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.47]. 8-week baseline, 6-week titration, 12-week maintenance.
- 302: retigabine 600 mg/day, 900 mg/day, placebo, 1:1:1; 539 randomized (181 / 179 / 179; ITT 181 / 178 / 179) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.9]. 8-week baseline, 4-week titration, 12-week maintenance.
- Randomization: central IVRS, stratified by two variables [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.47-48]:
    - Baseline seizure frequency: ≤8 vs >8 per 28 days (2 levels)
    - Region: 301 US/Canada vs Mexico/South America; 302 Central/Eastern Europe vs Rest of World (2 levels)
- Double-blind, placebo-controlled, add-on to 1-3 AEDs.
- Primary analysis population (ITT double-blind): received at least one dose, had a baseline seizure evaluation and at least one on-therapy seizure evaluation [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.8]. n analyzed: 301 placebo 150, 1200 mg 151; 302 placebo 176, 600 mg 179, 900 mg 175 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) Table 4 p.11].

### Endpoint

- Percent change in 28-day total partial seizure frequency from the baseline phase to the double-blind phase (titration plus maintenance) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.8].
- Derivation: 28-day rate from seizures counted in the phase; for early discontinuation, seizures up to discontinuation (before taper) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.8]. Exact formula: Not stated.
- Distribution: strongly right-skewed, bounded at -100; ranges such as -100 to 1712 with mean -1.1, SD 138.37, median -15.9 (302 placebo) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) Table 12 p.49].

### Hypothesis and contrast

- Two-sided, 5% ("The criteria for statistical significance was P<0.05" [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2011/022345s000lbl.pdf) §14]).
- 301: 1200 mg vs placebo. 302: each dose vs placebo; the protocol's primary objective was 900 mg vs placebo and 600 mg vs placebo was secondary [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.37-38].
- Estimand language: none (2011).

### Decision rule

Not contingent.

### Primary analysis method

- Test name: "non-parametric stratified rank analysis of covariance (ANCOVA)" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.8]. Tables in the clinical review label the same method "Rank Transformation Residual ANCOVA" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.60].
- What is ranked: both the response (percent change) and the covariate (continuous baseline seizure rate). Ranking scope: within stratum, pooled over treatment groups ("regardless of treatment"). Score: standardized rank = rank within stratum / (number of patients in stratum + 1) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.8]. Tie handling: Not stated.
- Strata: region (2) x baseline seizure frequency category (≤8, >8) (2), i.e. up to 4 strata. Additional analyses stratified by region only and by baseline category only [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.8].
- Covariate: standardized rank of baseline seizure rate "nested within the strata".
- Test statistic and reference distribution: Not stated. How strata are combined: Not stated.
- For 302 (three arms): whether each dose vs placebo was run as a separate two-group analysis or from one three-group model: Not stated.

| Term | Type | Levels | Notes |
|---|---|---|---|
| Response: percent change in 28-day seizure frequency | ranked (standardized within stratum) | - | rank / (n_stratum + 1) |
| Treatment | categorical | 2 (301); 3 (302) | |
| Stratum (region x baseline category) | categorical | 4 | stratification, not a model factor as described |
| Baseline seizure rate | ranked (standardized within stratum) | - | covariate, nested within strata |

### Effect estimate and interval

- Medians per arm and "Effect size (tmt - Placebo)" as a simple difference of medians (301: -26.8; 302: -12 and -24) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) Tables 11-12 p.49]. No CI reported. Hodges-Lehmann: Not stated for 301/302.

### Missing data and intercurrent events

- No imputation. Patients with no post-baseline seizure data excluded; for dropouts the 28-day rate uses data up to discontinuation [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.8-9].
- Discontinuation in double-blind phase: 301 placebo 17.1%, 1200 mg 36.6%; 302 placebo 15.1%, 600 mg 25.4%, 900 mg 31.5% [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) Table 2 p.9].

### Multiplicity

- Not stated for 302's two doses. The FDA statistical reviewer wrote "There was no statistical issue in each of the three studies." [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.4]. Two regional primary endpoints (FDA: percent change over double-blind phase; EMEA: responder rate in maintenance) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.47].

### Sample size assumptions

Based on responder rates, not on the rank analysis: 301, 125 evaluable per arm for a 17% difference, 85% power, two-sided 5%; 302, 151 per arm for a 16% difference (900 mg vs placebo), 85% power [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.47].

### Software and code

Not stated. No code.

### Results as presented

- Layout (StatR Table 4; MedR Tables 11-13): per arm N, n, mean ± SD, median, range, effect size (difference in medians), p-value with footnote naming the rank ANCOVA.

| Study | Arm | n | Mean ± SD | Median | Range | p vs placebo |
|---|---|---|---|---|---|---|
| 301 | Placebo | 150 | 1.6 ± 95.09 | -17.5 | -90, 628 | - |
| 301 | 1200 mg/day | 151 | -25.1 ± 64.75 | -44.3 | -100, 302 | <0.001 |
| 302 | Placebo | 176 | -1.1 ± 138.37 | -15.9 | -100, 1712 | - |
| 302 | 600 mg/day | 179 | -20.4 ± 51.02 | -27.9 | -94, 250 | 0.007 |
| 302 | 900 mg/day | 175 | -27.8 ± 56.12 | -39.9 | -100, 226 | <0.001 |

- Figures: bar chart of median percent change; cumulative distribution profile of percent change by dose [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) Figures 4-5 p.11-12]. Label shows median percent reduction by dose (Figure 1) and a categorical distribution (Figure 2).

### Sensitivity and supportive analyses

- Maintenance-phase percent change, same method: 301 p < 0.001; 302 p = 0.002 (600), <0.001 (900) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) Table 5 p.13].
- Stratified by region only / by baseline category only: results not tabulated in the review.
- Responder rate sensitivity analyses for dropouts (Fisher's exact) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) Table 9 p.17].

### FDA reviewer comments and reanalyses

- Reviewer reproduced the sponsor's results and added two analyses of post-baseline 28-day seizure frequency (not percent change) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.16-17, Table 10]:

| Analysis | 205: 600 | 205: 900 | 205: 1200 | 301: 1200 | 302: 600 | 302: 900 |
|---|---|---|---|---|---|---|
| Rank ANCOVA, seizure frequency on original scale | 0.426 | 0.105 | 0.003 | <0.001 | 0.039 | <0.001 |
| ANCOVA, log-transformed seizure frequency | 0.190 | 0.083 | 0.004 | <0.001 | 0.025 | <0.001 |

Model terms for these two reviewer analyses: Not stated.

## Study 205 (phase IIb dose-ranging)

### Design

- Placebo, 600, 900, 1200 mg/day; 1:1:1:1; randomized 97 / 101 / 95 / 106; ITT 96 / 99 / 95 / 106 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) Table 2 p.9]. 8-week baseline, 8-week titration, 8-week maintenance.
- Site-based randomization with sealed envelopes; no stratification factors other than site [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.47].

### Endpoint

Percent change in monthly (28-day) total partial seizure rate, baseline to double-blind phase [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.33].

### Hypothesis and contrast

- Dose-response by "appropriate contrasts in the ANCOVA according to a closed test procedure for a monotonic trend (two-sided, α = 5%)" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.33].
- Linear dose effect p < 0.001 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.48].

### Primary analysis method

- Rank ANCOVA: rank of percent change as dependent variable, rank of baseline monthly seizure rate as covariate, treatment and center as factors [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.8]. Ranking scope (overall vs within center), score type, center pooling, tie handling: Not stated.
- Test statistic: Not stated (contrasts within the ANCOVA; presumably F or t tests).

| Term | Type | Levels | Notes |
|---|---|---|---|
| Response: percent change | ranked | - | |
| Treatment | categorical | 4 | contrasts for monotone trend, closed test |
| Center | categorical | Not stated (73 sites participated) | pooling Not stated |
| Baseline monthly seizure rate | ranked | - | covariate |

### Effect estimate and interval

"Hodges-Lehmann estimates and two-sided 95% confidence intervals are provided for the pairwise comparisons." [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.33]. Values not reproduced in the reviews for the primary endpoint.

### Multiplicity

Closed test procedure under monotonicity [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.33, p.48].

### Sample size assumptions

82 per group, 90% power, responder rates 30% vs 10%, two-sided 0.05; 90 per group planned [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) p.47].

### Results as presented

| Arm | n | Mean ± SD | Median | Range | p (a) closed test, monotone | p (b) direct, no monotonicity | p (c) harmonized 301/302 method |
|---|---|---|---|---|---|---|---|
| Placebo | 96 | -3.3 ± 75.03 | -13.1 | -100, 533 | - | - | - |
| 600 mg/day | 99 | 8.5 ± 190.94 | -23.4 | -100, 1703 | 0.199 | - | 0.156 |
| 900 mg/day | 95 | -14.1 ± 70.35 | -29.3 | -100, 298 | 0.043 | - | 0.0495 |
| 1200 mg/day | 106 | -23.5 ± 64.87 | -35.2 | -100, 375 | <0.001 | 0.001 | 0.002 |

[[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) Table 10 p.48]

### Sensitivity and supportive analyses

- Excluding six sites with GCP or record-access issues: similar [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) p.12].

## Verbatim specification excerpts

> "In studies 301 and 302, the primary analysis was a non-parametric stratified rank analysis of covariance (ANCOVA) to compare the percent change in total partial seizure frequency of the retigabine and placebo treatment groups." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf), p.8]

> "category (8≤, >8] with primary ranks of percent change in seizure frequency for all patients as the response within each stratum and the standardized rank of continuous baseline seizure rate nested within the strata as a covariate. The standardized rank is the rank (regardless of treatment) for a patient within a stratum divided by the number of patients within that stratum, plus 1." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf), p.8]

> "Additional analyses of percent change in total partial seizure frequency was stratified by geographic region only, and then stratified by baseline seizure rate category only." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf), p.8]

> "In the study 205, a rank analysis of covariance (ANCOVA) with the rank of the percentage change in monthly total partial seizure rate as a dependent measure and the rank of baseline monthly seizure rate as a covariate and treatment and center as factors in the model. The dose- response was studied by using appropriate contrasts in the ANCOVA according to a closed test procedure." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf), p.8]

> "closed test procedure for a monotonic trend (two-sided, α = 5%). In addition, Hodges- Lehmann estimates and two-sided 95% confidence intervals are provided for the pairwise comparisons." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf), p.33]

> "For patients who discontinued treatment prematurely, the number of seizures reported up to the treatment discontinuation before entering the taper phase was used to calculate the 28-day seizure frequency. Patients who did not have any post baseline seizure data" — [statr.txt, p.8] (the sentence continues on p.9: "were excluded from the primary analysis of percent change in 28-day total partial seizure frequency.")

> "a. The p-values presented are from the original closed test using rank ANCOVA under the assumption of monotonicity. b. The p-value presented is from the direct comparison vs. placebo using pre-specified statistical method rank ANCOVA but without the assumption of monotonicity. c. The p-values presented are from the harmonized analysis using the non-parametric rank ANCOVA analysis as described in section 5.3." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf), p.48]

> "include (i) Rank ANCOVA analysis on the observed total partial seizure frequency at post baseline; and (ii) ANCOVA on the log-transformed total partial seizure frequency at post baseline." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf), p.16]

## Implementation notes (inference)

- Inference: the 301/302 description (standardized ranks within stratum for response and covariate, covariate "nested within the strata", name "Rank Transformation Residual ANCOVA") matches the Koch / Stokes-Davis-Koch nonparametric stratified rank ANCOVA: (1) within each stratum compute standardized ranks (modified ridits, `PROC RANK ... FRACTION`/`NPLUS1` by stratum) of response and covariate; (2) regress ranked response on ranked covariate with a separate slope per stratum (`PROC REG ... BY stratum`, or one model with stratum and covariate-within-stratum) ignoring treatment, and keep residuals; (3) test treatment on the residuals with a stratified mean score test (`PROC FREQ; TABLES stratum*trt*resid / CMH2 SCORES=TABLE NOPRINT`), read as chi-square with (groups - 1) df. The FDA text does not say this explicitly; step 3 in particular is not stated.
- "divided by the number of patients within that stratum, plus 1" is read as rank / (n + 1), not rank / n + 1.
- Open decisions: mid-ranks for ties (default); whether 302 used pairwise two-group analyses or a 3-group CMH with a contrast; how 302's two doses were ordered for multiplicity.
- Study 205 corresponds to the Conover-Iman rank-transform ANCOVA: rank response and baseline over all patients, then `PROC GLM; CLASS trt center; MODEL r_pchg = trt center r_base;` with CONTRAST statements. The closed test under monotonicity is not specified in detail (which contrasts, which order); a step-down trend test (test linear trend over all 4 groups, then drop the top dose) is one reading.
- R sketch for 301/302: `ave(rank(y), stratum, FUN = function(r) r / (length(r) + 1))` per stratum, `lm(ry ~ stratum / rx)`, then `coin::independence_test(resid ~ trt | stratum)` or `mantelhaen`-type mean score test.

## Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000StatR.pdf) — fetched (statr.txt). Clinical efficacy review appears twice in the file (text lines about 1780-2490 and again about 5480-6190); page numbers are that review's own.
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000MedR.pdf) — fetched (medr.txt). The side-by-side table describing the harmonized analysis (clinical review p.34) is an image with no text layer.
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022345Orig1s000SumR.pdf) — fetched (sumr.txt); no method detail.
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2011/022345s000lbl.pdf) — fetched (label.txt).
- ClinicalTrials.gov [NCT00232596](https://clinicaltrials.gov/study/NCT00232596), [NCT00235755](https://clinicaltrials.gov/study/NCT00235755) — API checked; no documents posted.
- Neurology 2011;76:1555, Neurology 2010;75:1817, Epilepsy Res 2012;101:103 — not in Europe PMC full text; not fetched.
