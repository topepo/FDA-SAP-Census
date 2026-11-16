# Riociguat (Adempas) — NDA 204819

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: parametric primary with a rank-based fallback that was invoked.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2013/204819s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 14036. Cardiopulmonary (PAH and CTEPH). Bayer. Approved 2013.

**Summary:** Riociguat 1.0-2.5 mg (individual dose titration) vs placebo on change from baseline in 6-minute walk distance (6MWD) at last visit (Week 12 in PATENT-1, Week 16 in CHEST-1). The SAP made ANCOVA primary unless the Shapiro-Wilk test on the ANCOVA residuals was significant, in which case a stratified Wilcoxon test became the formal test. The fallback fired in both trials (Shapiro-Wilk p=0.0001 in each); stratified Wilcoxon p<0.0001 in both. The sponsor reported ANCOVA LS mean differences; the FDA statistician computed Hodges-Lehmann estimates (29 m and 39 m), which the label reports next to the ANCOVA means.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census PATENT-1 HL CI "17-40" matches the label; the FDA statistical review gives (18 m, 40 m) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=12) PDF p.12]. Both exist in the sources.
- The census implies the SAP specified the Hodges-Lehmann estimator for the fallback. The StatR says LS means and CIs "were calculated based on the ANCOVA"; the HL estimate was the FDA reviewer's own calculation ("which I calculated") [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8) PDF p.8, p.12, p.14].
- The census "last observed value carried forward and worst-value/zero imputation applied for subjects who died or had clinical worsening": correct only when there was no termination-visit measurement [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.81; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2013/204819s000lbl.pdf) §14].
- The census "No formal multiplicity adjustment across secondary endpoints": secondaries were tested hierarchically in a pre-specified sequence [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=14) PDF p.14; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) Tables 23, 47].

Page tags: `StatR PDF p.N` = page of the PDF (matches form feeds in `statr.txt`). `MedR p.N` = printed page number at the foot of the clinical review. Result tables in both reviews are images; numbers below marked "image" were transcribed from page renders in `SRC/riociguat/img/` and cannot be found in the `.txt` files.

## PATENT-1 (Trial 12934, PAH) and CHEST-1 (Trial 11348, CTEPH)

### Design

- PATENT-1: riociguat 1.0-2.5 mg N=254, placebo N=126, exploratory riociguat 1.0-1.5 mg capped arm N=63; 12 weeks [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=7) PDF p.7]. Primary comparison is 1.0-2.5 mg vs placebo only.
- CHEST-1: riociguat 1.0-2.5 mg N=173, placebo N=88; 16 weeks; 2:1 randomization [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=7) PDF p.7; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.80].
- Stratification: PATENT-1 has a "stratification group (therapy-naïve / add-on)", 2 levels [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8) PDF p.8]. CHEST-1: none used in the model besides region. Whether region was a randomization stratum: Not stated.
- Region levels (both trials, 5): Asia/Pacific, China, Europe, North America, South (Latin) America [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.75 Table 11, p.104 Table 32; images].
- Double-blind, placebo-controlled.
- Analysis set: "subjects valid for ITT" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8) PDF p.8]; randomized and treated (the clinical reviewer calls it mITT; one CHEST-1 patient randomized but not treated was excluded: 174 randomized, 173 ITT) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.80-81].

### Endpoint

- Change in 6MWD (m) from baseline to Week 12 (PATENT-1) or Week 16 (CHEST-1), "last observation until week 12/16" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8) PDF p.8].
- "Last visit = Last observed value (not including follow-up) for subjects who completed the study or withdrew, except imputed worst value in case of death or clinical worsening without a termination visit or a measurement at that termination visit" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=13) PDF p.13 Table 7 footnote; image].
- Distribution: ANCOVA residuals non-normal (Shapiro-Wilk p=0.0001 both trials). Observed changes range to about -430 m because of zero imputation (PATENT-1 min -430, CHEST-1 min -376) [images of StatR Table 7, MedR Table 19].

### Hypothesis and contrast

- Superiority of riociguat 1.0-2.5 mg over placebo; two-sided; declared if p ≤ 0.05 (PATENT-1 wording) / p < 0.05 (CHEST-1 wording) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8) PDF p.8-9].
- Estimand: Not stated.

### Decision rule

- Trigger: Shapiro-Wilk test "for normality of residuals" of the primary ANCOVA (pooled over arms, one test per trial) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8) PDF p.8].
- Threshold: "statistically significant"; numeric level Not stated.
- Outcome: p=0.0001 in PATENT-1 and p=0.0001 in CHEST-1; the stratified Wilcoxon p-value "was formally used for determining statistical significance, as pre-specified" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=12) PDF p.12, p.14].
- Mechanical, pre-specified rule; no judgment call.

### Primary analysis method

Parametric model (ANCOVA on change in 6MWD):

| Term | Type | Levels | Notes |
|---|---|---|---|
| Baseline 6MWD | continuous | | both trials |
| Treatment group | categorical | 2 (riociguat 1.0-2.5 mg, placebo) | PATENT-1 1.5 mg arm not in the primary contrast; whether it was in the fitted model is Not stated |
| Region | categorical | 5 | both trials; main effect |
| Stratification group | categorical | 2 (therapy-naïve, add-on) | PATENT-1 only |

No interactions are mentioned. [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8) PDF p.8; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.81 footnote]

Fallback (operative) test:

- Name: "stratified Wilcoxon test".
- Strata: CHEST-1 "by region" (5 strata); PATENT-1 "by region and stratification group" (up to 10 strata) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.81 Table 19 footnote; [StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf) Table 7 footnote, image].
- Ranked quantity: change from baseline in 6MWD at last visit, including the imputed values (zero 6MWD gives change = -baseline). Baseline is not adjusted for in the rank test.
- Ranking scope, stratum weights, tie handling, asymptotic vs exact: Not stated.

### Effect estimate and interval

- Sponsor (SAP): LS mean difference and 95% CI from the ANCOVA [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8) PDF p.8].
- FDA reviewer: "the Hodges-Lehmann estimate associated with the stratified Wilcoxon test", citing Randles and Wolfe (1979), with 95% CI; method of stratification of the HL estimate and of the CI: Not stated [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=12) PDF p.12].
- Reviewer also gave a "Bayesian estimate" under a uniform prior equal to the ANCOVA estimate: normal posterior, mean 35.78, SD 8.02 (PATENT-1); mean 45.69, SD 10.69 (CHEST-1) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=13) PDF p.13-14].

### Missing data and intercurrent events

- Death or clinical-worsening withdrawal with no termination-visit measurement: 6MWD = 0 (worst value) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.81, p.110; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2013/204819s000lbl.pdf) §14].
- All other withdrawals without termination-visit data: LOCF of most recent value (baseline if no post-baseline data, i.e. change 0) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.81, p.110].
- Withdrawals with a termination visit: that value is used.
- Amount: PATENT-1 worst-value imputation in 2 riociguat 1.0-2.5 mg and 6 placebo subjects [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf) Table 7 footnote; image]. CHEST-1 count: Not stated in text. About 90% (PATENT-1) and more than 90% (CHEST-1) completed treatment [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=9) PDF p.9, p.11].
- The imputed dataset is a single completed dataset; the rank test is run once on it (no combining needed).

### Multiplicity

- Single primary comparison at two-sided 0.05; secondary endpoints tested "in sequential order" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=14) PDF p.14].

### Sample size assumptions

- Not stated in the documents consulted.

### Software and code

- Not stated. No code. (The FDA reviewer's CDF figures look like R graphics; inference.)

### Results as presented

Layout (sponsor table reproduced in both reviews): columns = arms; rows = Baseline mean (SD), median (min-max); change from baseline to last visit mean (SD), median (min-max); then "Treatment comparison": LS mean difference, 95% CI, p-value (ANCOVA), p-value (stratified Wilcoxon test). No rank-based estimate in the sponsor table.

| Statistic | PATENT-1 riociguat 1.0-2.5 mg (N=254) | PATENT-1 placebo (N=126) | CHEST-1 riociguat (N=173) | CHEST-1 placebo (N=88) |
|---|---|---|---|---|
| Baseline mean (SD) | 361.4 (67.7) | 367.8 (74.6) | 342.3 (81.9) | 356.0 (74.7) |
| Change, mean (SD) | 29.6 (65.8) | -5.6 (85.5) | 38.9 (79.3) | -5.5 (84.3) |
| Change, median (min-max) | 30.0 (-430 to 279) | 8.5 (-400 to 204) | 42.0 (-376 to 335) | 5.0 (-389 to 226) |
| LS mean difference (95% CI) | 35.78 (20.06 to 51.51) | | 45.69 (24.74 to 66.63) | |
| p (ANCOVA) | <0.0001 | | <0.0001 | |
| p (stratified Wilcoxon) | <0.0001 | | <0.0001 | |
| Shapiro-Wilk p (residuals) | 0.0001 | | 0.0001 | |
| HL estimate (95% CI), FDA | 29 (18, 40) | | 39 (25, 54) | |

Sources: StatR PDF p.13 Table 7 (image), MedR p.81 Table 19 (image), StatR PDF p.12 and p.14 (text). Label §14: mean 36 m (95% CI 20 to 52), HL 29 m (95% CI 17 to 40) for PATENT-1; mean 46 m (25 to 67), HL 39 m (25 to 54) for CHEST-1.

Figures: FDA cumulative distribution functions of change in 6MWD by arm, excluding worst-case-imputed subjects [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=12) PDF p.12, p.14]; label has mean change over time and a histogram of change categories.

### Sensitivity and supportive analyses

Estimated treatment difference (95% CI), sponsor [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.86 Table 21 and p.117 Table 43; images]:

| Analysis | CHEST-1 | PATENT-1 |
|---|---|---|
| Mixed model at last scheduled visit | 44.40 (27.94 to 60.85) | 30.02 (16.11 to 43.94) |
| MI, fixed penalty -60 m both arms | 43.69 (26.25 to 61.13) | 33.10 (18.49 to 47.71) |
| MI, decreasing slope -20 m per visit both arms | 41.81 (24.05 to 59.58) | 35.03 (20.49 to 49.57) |
| MI, fixed penalty -60 m riociguat, 0 placebo | 40.07 (22.94 to 57.21) | 26.31 (12.32 to 40.30) |
| MI, slope -20 m per visit riociguat, 0 placebo | 38.71 (21.27 to 56.15) | 27.16 (13.36 to 40.96) |
| Robust regression | 40.31 (25.86 to 54.75) | 30.00 (18.91 to 41.10) |

Per-protocol CHEST-1: LS mean difference 52.24 (30.53 to 73.95), both p<0.0001 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) p.86 Table 20; image]. Robust regression and HL estimates are close to each other and smaller than the ANCOVA LS mean.

### FDA reviewer comments and reanalyses

- "The LS mean difference shown in the table is not a good estimate of the treatment effect for the same reason that the ANCOVA is not a good test (errors not normally distributed)" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=12) PDF p.12]. Recommended the label show medians or the HL estimate instead of the ANCOVA LS mean [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=17) PDF p.17]. The final label shows both.
- "No statistical issues were identified"; sensitivity analyses consistent [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=6) PDF p.6, p.8].

### Verbatim specification excerpts

> "The riociguat 1.0-2.5 mg and placebo groups were compared using analysis of covariance (ANCOVA), with baseline 6MWD as a covariate and treatment group, stratification group (therapy-naïve / add-on), and region as main effects. The primary statistical method would be the stratified Wilcoxon test if the Shapiro-Wilk test for normality of residuals was statistically significant." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8), PDF p.8, trial 12934]

> "compared using analysis of covariance (ANCOVA), with baseline 6MWD as a covariate and treatment group and region as main effects." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=8), PDF p.8, trial 11348]

> "Note that the Shapiro-Wilk test for normality of the ANCOVA residuals was significant (p=0.0001). Therefore, the stratified Wilcoxon p-value was formally used for determining statistical significance, as pre-specified in the statistical analysis plan." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=12), PDF p.12]

> "A better estimate would be the Hodges-Lehmann estimate associated with the stratified Wilcoxon test †, which I calculated as 29 m with a 95% CI of (18 m, 40 m)." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf#page=12), PDF p.12]

> "ANCOVA model with baseline value, treatment group, and region as fixed effects, stratified Wilcoxon test by region" — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf), p.81, CHEST-1 Table 19 footnote]

> "For all other withdrawals without termination visit data, LOCF of the most recent data (baseline if no post-baseline data) was utilized." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf), p.81]

> "For deaths or clinical worsening without a termination visit or a measurement at that visit, the imputed worst value (zero) was used." — [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2013/204819s000lbl.pdf), §14 CHEST-1]

### Implementation notes (inference)

- Inference: the stratified Wilcoxon is a van Elteren test, e.g. `PROC FREQ; TABLES region*strat*trt*chg / CMH2 SCORES=MODRIDIT;` restricted to the two primary arms, or `PROC NPAR1WAY WILCOXON; STRATA region strat;`. In R, `coin::wilcox_test(chg ~ trt | stratum)`.
- Inference: Shapiro-Wilk via `PROC UNIVARIATE NORMAL` on residuals output from `PROC GLM`/`PROC MIXED`. With n=261-380, Shapiro-Wilk is very sensitive, and zero-imputed 6MWD produces large negative outliers, so the trigger was nearly certain to fire; a designer may prefer to pre-specify the rank test outright.
- The "Hodges-Lehmann estimate associated with the stratified Wilcoxon test" can be obtained by inverting the van Elteren statistic (the shift that zeroes the centred stratified statistic) with CI limits from inverting the test at the 0.05 level; the review does not say whether that or a pooled two-sample HL was used. The label and review CIs for PATENT-1 differ slightly (17 vs 18), suggesting two computations.
- PATENT-1 strata: 5 regions × 2 groups; small cells (e.g. North America add-on) may hold few patients; handling of empty or one-arm strata is not described.
- Worst-rank handling is by value: death/worsening gets 6MWD = 0, so change = -baseline, and these patients take the lowest ranks within stratum but are not tied with each other (ranks depend on baseline). A programmer wanting pure worst-rank scoring would have to assign a common worst value instead.
- LOCF with baseline carried forward gives change = 0 for withdrawals without post-baseline data.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000StatR.pdf) — fetched (`statr.txt`; tables are images, rendered to `img/statr-13.png`, `img/statr-14.png`)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/204819Orig1s000MedR.pdf) — fetched (`medr.txt`; tables are images, rendered to `img/medr-076.png`, `-082`, `-087`, `-105`, `-118`)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2013/204819s000lbl.pdf) — fetched (`label.txt`)
- NEJM publications and protocols (10.1056/NEJMoa1209657, NEJMoa1209655) — failed (403)
- ClinicalTrials.gov API [NCT00855465](https://clinicaltrials.gov/study/NCT00855465), [NCT00810693](https://clinicaltrials.gov/study/NCT00810693) — no protocol/SAP posted
