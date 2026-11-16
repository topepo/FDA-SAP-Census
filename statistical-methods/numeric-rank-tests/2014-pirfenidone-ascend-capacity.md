# Pirfenidone (Esbriet) — NDA 22535

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/022535s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 37279. Pulmonology (idiopathic pulmonary fibrosis). InterMune. Approved 2014.

**Summary:** In ASCEND (Study 016, 52 weeks) and both CAPACITY trials (Studies 004 and 006, 72 weeks), the primary endpoint, absolute change from baseline in percent predicted FVC, was analyzed by a rank ANCOVA: standardized ranks (rank/(N+1), midranks for ties) of the change as outcome and of baseline %FVC as covariate, with the treatment effect tested by a Mantel-Haenszel mean score chi-square test at two-sided alpha 0.0498. Deaths were ranked worst, ordered by time to death; other missing values were imputed by a nearest-neighbor "sum of squared differences" method. CAPACITY additionally stratified by region (USA vs rest of world). Results: Study 016 p<0.001, Study 004 p=0.001, Study 006 p=0.501. The magnitude was reported as the raw difference in mean change (deaths set to 0 %FVC) and as a categorical distribution, not as a rank-based estimate.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census is accurate for ASCEND. It omits that the ranking is over all patients regardless of treatment, with ties given mean ranks, and that the standardized rank is rank/(N+1).
- The census does not state what CAPACITY used: the same rank ANCOVA, stratified by geographic region (USA vs ROW), in the "MITT" population (which equaled all randomized), with the same death and SSD rules. The ASCEND description in the review has no region term even though randomization was by region.
- The census quotes "-3.7 vs -6.6 ... difference 2.9" as the "rank-ANCOVA ... mean"; these are raw means of the imputed data (deaths imputed as 0 %FVC), not a model output.

## ASCEND (PIPF-016)

### Design

- Pirfenidone 2403 mg/day 278, placebo 277; 1:1 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.8, p.12].
- Randomized "by geographic region (USA or the rest of the world [ROW])" (2 levels) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.8].
- Double-blind, placebo-controlled, 52 weeks [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.7].
- Primary analysis population: ITT, all randomized patients (278 / 277) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9].

### Endpoint

- Absolute change in percent predicted FVC (post-bronchodilator per the review text) from baseline to Week 52 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9].
- Baseline = mean of the maximum acceptable FVC at screening and Day 1; Week 52 = mean of the maximum acceptable FVC on two separate days (Week 52A and 52B). %predicted FVC = 100 × actual FVC (L) / predicted FVC, with sex- and race-specific prediction equations in height and age [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9].
- Distribution: the applicant assumed non-normality; the FDA reviewer found the "actual distribution of the data appeared not far from normality" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.29]. Deaths create an extreme lower tail when scored (0 %FVC in the descriptive means).

### Hypothesis and contrast

- Pirfenidone vs placebo; two-sided alpha 0.0498 (adjusted for two anticipated interim mortality analyses) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9].
- Null/alternative: Not stated for ASCEND. Estimand: Not stated.

### Decision rule

Not contingent: the rank ANCOVA was pre-specified. (For CAPACITY the protocol amendment changed the method "from ANCOVA to rank ANCOVA, where appropriate" before unblinding [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.15].)

### Primary analysis method

- Test name as given: "rank ANCOVA" with treatment effect tested by "the Mantel-Haenszel mean score chi-square test" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9].
- What is ranked: both the outcome (change in %FVC, after imputation, with deaths placed below all others) and the covariate (baseline %FVC). Scope: all patients regardless of treatment. Score: standardized rank = rank / (sample size + 1), stated to correspond to modified ridits in SAS. Ties: mean of the corresponding ranks [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9].
- Reference: Stokes et al. (2000), section 7.7, pages 174-177 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9].
- Stratification: none stated for Study 016 (the table footnote lists only treatment and ranked baseline) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.17, Table 5 footnote b].
- Model terms as described in the reviewer's table footnote:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Standardized ranked change from baseline in %FVC | ranked (response) | — | deaths ranked worst |
| Treatment | categorical fixed effect | 2 | |
| Standardized ranked baseline %FVC | ranked covariate | — | |

- Test statistic and reference distribution: Mantel-Haenszel mean score chi-square; degrees of freedom and continuity correction Not stated.
- For the key secondary 6MWT endpoint the same rank ANCOVA was used, with ranked baseline DLco added to the model by SAP amendment [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.11-12].

### Effect estimate and interval

- No estimate from the rank model. Magnitude was pre-specified as the distribution (n, %) of patients across categories of change: decline ≥10% or death before Week 52; decline <10% to >0%; stability or improvement ≥0% [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9].
- FDA tables report raw mean (SD) change per arm on imputed data, absolute difference (pirfenidone − placebo) and relative difference 100 × (pirfenidone − placebo)/|placebo|; no CI [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.17, Table 5].

### Missing data and intercurrent events

- Death: ranked worse than any non-death value, ordered by time to death with shortest time as worst rank [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9]. For mean summaries, 0 was imputed for the assessment if the patient died on or before the protocol-specified date [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) Table 5 note].
- Other missing data (missed visits, early withdrawal, lung transplantation): SSD imputation. Step 1: for patient A missing visit X, select all patients in the same study with no missing values at the same visits from baseline to visit X as patient A; if A is missing everything from baseline to X, do not impute and exclude. Step 2: compute the sum of squared differences between each selected patient and A over all non-missing values from baseline to the visit before X. Step 3: average the visit-X values of the 3 patients with the smallest SSD (fewer if unavailable; more if tied) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.10].
- Amount: Week 52 imputed for reasons other than death in 24 pirfenidone and 18 placebo patients; observed (death) counts at Week 52: 243 (11) and 239 (20) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.17].
- Lung transplant is treated as "other missing" (SSD) in the primary analysis but as non-response in the reviewer's continuous responder plots [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.10, p.19].

### Multiplicity

- Primary at 0.0498; if significant, the two key secondaries (PFS and 6MWT change) by Hochberg: both significant if the larger p < 0.05, otherwise the smaller p compared with 0.025 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.11].

### Sample size assumptions

- 250 per group, 90% power to detect a treatment difference in normalized ranks of change at Week 52 of 0.08, SD 0.27, significance level 0.05 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.11]. (The effect size is specified on the standardized-rank scale.)

### Software and code

- SAS is named only through the phrase "modified ridits in the SAS® system" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.9]. No code in the sources.

### Results as presented

- FDA Table 5 layout: rows Baseline, Week 13, 26, 39, 52; per arm "N Observed (Death)" and "Mean (STD)" of change; then Absolute Diff., Relative Diff., p-value (rank ANCOVA at each visit) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.17].

| Week | Pirfenidone N obs (deaths) | Mean change (SD) | Placebo N obs (deaths) | Mean change (SD) | Abs. diff | Rel. diff % | p (rank ANCOVA) |
|---|---|---|---|---|---|---|---|
| Baseline | 278 (0) | 67.8 (11.2) | 277 (0) | 68.6 (10.9) | -0.8 | | |
| 13 | 273 (1) | -0.7 (4.0) | 270 (0) | -2.5 (4.4) | 1.8 | 72.0 | <0.001 |
| 26 | 255 (4) | -1.5 (4.5) | 262 (6) | -3.9 (5.2) | 2.4 | 61.5 | <0.001 |
| 39 | 246 (7) | -2.2 (5.1) | 246 (8) | -5.1 (6.4) | 2.9 | 56.9 | <0.001 |
| 52 | 243 (11) | -3.7 (6.7) | 239 (20) | -6.6 (6.7) | 2.9 | 43.9 | <0.001 |

(StatR Table 6 gives the pirfenidone Week 52 SD as 6.2 rather than 6.7.)

- Label §14: text only, "using a rank ANCOVA with the lowest rank imputation for missing data due to death", no p-value or table; Figure 1 is the cumulative distribution of patients by change in %FVC at Week 52 with dashed lines at ≥10% decline and ≥0% decline; a separate paragraph gives mean FVC change in mL (-235 vs -428; difference 193 mL) [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/022535s000lbl.pdf) §14].
- Figures in the review: individual and mean FVC trajectories, mean change over time, continuous responder (cumulative distribution) curves [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.15-19].

### Sensitivity and supportive analyses

| Analysis | Pirfenidone | Placebo | Difference | p |
|---|---|---|---|---|
| Primary: rank ANCOVA, SSD imputation; mean (SD) | -3.7 (6.2) | -6.6 (6.7) | 2.9 | <0.001 |
| Applicant: repeated measures mixed model, SSD; LS mean (SE) | -6.2 (0.9) | -11.0 (0.9) | 4.8 | <0.001 |
| FDA: ANCOVA, placebo mean imputation; LS mean (SE) | -3.7 (0.5) | -6.5 (0.5) | 2.8 | <0.001 |
| FDA: random coefficient regression, no imputation; LS mean (SE) | -3.0 (0.6) | -6.8 (0.6) | 3.8 | <0.001 |

Source: [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) Table 6, p.19].

- Pre-specified supportive: repeated measures mixed model on rank change at Weeks 13, 26, 39, 52 (treatment, baseline %FVC, week, unstructured covariance; deaths ranked worst at the 13-week visit after death, then by time to death); rank analysis of relative change in FVC volume; landmark rank analyses at Weeks 13, 26, 39 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.10].
- Responder cut: ≥10% decline in %FVC 17% vs 32% [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.19].
- Subgroup interaction tests used a rank ANCOVA with treatment-by-subgroup interaction [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.28].

### FDA reviewer comments and reanalyses

- Death and SSD handling "is acceptable and not a statistical issue" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.29].
- The reviewer ran a parametric ANCOVA because the data "appeared not far from normality"; "The results were consistent." [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.29-30].
- On the post-hoc rank repeated measures analysis in CAPACITY: such an analysis tests "that the observations come from the same distribution and not exactly testing whether there is difference in treatment effect at Week 72" [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.23].

## CAPACITY (PIPF-004 and PIPF-006)

### Design

- 004: pirfenidone 2403 mg/day 174, placebo 174, pirfenidone 1197 mg/day 87; 2:2:1. 006: 171 vs 173; 1:1. Randomized by geographic region (USA or ROW). 72 weeks [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.10; census counts].
- Primary comparison: 2403 mg/day vs placebo only. Population: "MITT" = all randomized who received any study treatment; all randomized were treated [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.12].

### Endpoint

- Absolute change in %predicted FVC from baseline to Week 72; baseline and Week 72 (72A, 72B) defined as in ASCEND [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.11].

### Primary analysis method

- Same rank ANCOVA, "stratified (fixed effect) by geographic region (USA vs. ROW)"; Mantel-Haenszel mean score chi-square test; two-sided alpha 0.0498 (adjustment for two DMC mortality analyses) [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.12, p.14].

| Term | Type | Levels | Notes |
|---|---|---|---|
| Standardized ranked change from baseline in %FVC | ranked (response) | — | deaths ranked worst |
| Treatment | categorical fixed effect | 2 | 2403 mg/day vs placebo |
| Geographic region | categorical fixed effect / stratum | 2 | USA, ROW |
| Standardized ranked baseline %FVC | ranked covariate | — | |

- Whether ranks were computed within region: Not stated.
- Missing data: identical death and SSD rules. Imputed at Week 72 for non-death reasons: 004: 12 and 8 patients; 006: 10 and 9 [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.21].

### Sample size assumptions

- 160 per group, 97% power for a 2.75% difference in absolute change in %predicted FVC, SD 6%, alpha 0.05 (specified on the raw scale, unlike ASCEND) [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.14].

### Multiplicity

- No adjustment for secondary endpoints [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.13].

### Results as presented

| Study | Week 72 pirfenidone N obs (deaths), mean change (SD) | Placebo | Abs. diff | Rel. diff % | p (rank ANCOVA) |
|---|---|---|---|---|---|
| 004 | 154 (8), -8.0 (16.5) | 150 (16), -12.4 (18.5) | 4.4 | 35.3 | 0.001 |
| 006 | 148 (13), -9.0 (19.6) | 149 (15), -9.6 (19.1) | 0.6 | 6.5 | 0.501 |

Source: [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) Table 7, p.21]. Same layout as ASCEND Table 5, with rows at Weeks 12-72. (The 2014 Summary Review table prints the Study 004 p-value as 0.01 and Study 016 as <0.01 [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000SumR.pdf) Table 2].)

### Sensitivity and supportive analyses (Week 72 difference; p)

| Analysis | Study 004 | Study 006 |
|---|---|---|
| Rank ANCOVA, SSD (primary) | 4.4; 0.001 | 0.6; 0.501 |
| Repeated measures, death = 30%, no other imputation (pre-specified) | 3.1 (0.8, 5.4); 0.009 | 0.7 (-1.9, 3.3); 0.576 |
| ANCOVA, SSD, overall mean change (pre-specified) | 3.3 (1.2, 5.3); 0.002 | 1.13 (-1.2, 3.5); 0.338 |
| Rank repeated measures, SSD (post hoc) | <0.001 | 0.007 |
| Rank ANCOVA, LOCF, death = 0 (post hoc) | 4.4; 0.001 | 0.6; 0.503 |

Source: [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) Table 8, p.24]. Pre-specified supportive items also included an ogive (cumulative distribution based on FVC rank) [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.12-13]. The applicant reported a Shapiro-Wilk rejection at Week 72 (p < 0.0001) as the reason for the post-hoc rank repeated measures analysis [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) p.23]. FDA's 2010 analysis without imputation (rank ANCOVA with LOCF and no zero for death) reduced the differences to 1.9 and 0.8 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000MedR.pdf) p.54].

## Verbatim specification excerpts

> "The analysis of the primary endpoint was a rank ANCOVA, with a standardized rank change in FVC as the outcome and standardized rank baseline FVC as a covariate. Ties were assigned the mean of the corresponding ranks. Standardized ranks corresponded to modified ridits in the SAS® system and were obtained as ranks for all patients (regardless of treatment) divided by the sample size plus one. For details, refer to the section 7.7, pages 174-177 of Stokes et al. (2000)." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.9]

> "The treatment effect was to be tested using the Mantel-Haenszel mean score chi-square test. The test of significance for the primary analysis of the primary efficacy outcome variable was to use a two-sided alpha of 0.0498; adjusting for two anticipated interim mortality analyses." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.9]

> "Data that were missing as a result of death were ranked “worse” than data missing for reasons other than death and the ranking will be based on the time-to-death, with the shortest time until death as the worst rank." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.9]

> "Step 3: The 3 patients with the smallest SSDs will be identified and the average of their non- missing value at Visit X will be used to impute the missing value for Patient A at that visit. The number of smallest SSDs to calculate the average can be less than 3 due to availability of patients defined in Step 1 or more than 3 based on tied SSDs." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.10]

> "[b] Ranked Analysis of Covariance (ANCOVA), with standardized ranked change from baseline as the outcome variable, treatment as fixed effect, and standardized ranked baseline as a covariate. Deaths are ranked worst." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.17]

> "Note: For missing values if the patient was alive on protocol specified visit the imputation was by the smallest sum of differences (SSD) method. If the patient died on or prior to the protocol specified date then 0 was imputed for the assessment." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.17]

> "250 patients in pirfenidone group provided 90% power to detect a treatment difference (in normalized ranks of change at Week 52 of 0.08) between Baseline and Week 52, assuming a standard deviation of 0.27 at a significance level of 0.05." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.11]

> "The analysis was to be stratified (fixed effect) by geographic region (USA vs. ROW) within the MITT patient population (all randomized patients who received any amount of study treatment) including only the pirfenidone 2403-mg/d and placebo groups." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), appended 2010 review p.12]

> "[b] Ranked Analysis of Covariance (ANCOVA), with standardized ranked change from baseline as the outcome variable, treatment and geographic region (USA and ROW) as fixed effects, and standardized ranked baseline as a covariate. Deaths are ranked worst." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), appended 2010 review p.21]

> "Since actual distribution of the data appeared not far from normality, I" — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.29]

> "conducted a parametric ANCOVA model analysis to assess impact of the assumption on the results. The results were consistent." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf), p.30]

> "the primary efficacy analysis for the change in %FVC from baseline to Week 52 demonstrated a statistically significant treatment effect of ESBRIET 2403 mg/day (n=278) compared with placebo (n=277) using a rank ANCOVA with the lowest rank imputation for missing data due to death." — [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/022535s000lbl.pdf), §14]

## Implementation notes (inference)

- Inference: Stokes, Davis and Koch §7.7 describes nonparametric ANCOVA as (1) `PROC RANK NPLUS1 TIES=MEAN` on response and covariate (within strata if stratified), (2) `PROC REG` of ranked response on ranked covariate (by stratum) with residuals output, (3) `PROC FREQ ... CMH2 SCORES=TABLE` on `stratum*treatment*residual`, reading the "Row Mean Scores Differ" chi-square (1 df for two groups). The review's phrases "modified ridits", "Mantel-Haenszel mean score chi-square test" and the citation fit this. The table footnotes ("treatment as fixed effect") instead read like a linear model on ranks with treatment as a factor; the two give close but not identical p-values. The sources do not say which statistic was actually computed, so a programmer should follow the Stokes recipe if matching the SAP wording.
- Rank construction with deaths (inference on mechanics): sort all N patients on a composite key so that deaths are below every survivor value, ordered by days from randomization to death (earliest = rank 1), then survivors by observed or SSD-imputed change; assign midranks; divide by N+1. In R: build a numeric key such as `ifelse(dead, -1e6 + days_to_death, change)` and use `rank(key, ties.method = "average")/(N + 1)`.
- For CAPACITY, "stratified (fixed effect) by geographic region" leaves open whether ranks were formed within region (the Stokes stratified version) or overall with region as a model factor.
- The SSD distance is computed on raw values at visits before X (baseline included), over visits non-missing for patient A, restricted to donors complete through visit X; donors are from the same study but the text does not restrict to the same arm. Whether baseline-only matches are allowed when A has only baseline is implied (A must have some data from baseline up to X).
- Reported "difference 2.9" is a difference of raw means in which each death contributes (0 − baseline), so it is dominated by the death count imbalance (11 vs 20); it is not a location-shift estimate. A Hodges-Lehmann estimate was not reported.
- ASCEND power was specified directly on the standardized-rank scale (difference 0.08, SD 0.27; a uniform(0,1) rank has SD 0.289), which is a usable template for sizing a rank ANCOVA.

## Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000StatR.pdf) — fetched (statr.txt; contains the 2014 review of Study 016 with its own page numbers, followed by the appended 2010 review of Studies 004/006, cited here as "StatR-2010")
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000MedR.pdf) — fetched (medr.txt)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/022535Orig1s000SumR.pdf) — fetched (sumr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/022535s000lbl.pdf) — fetched (label.txt)
- <https://www.nejm.org/doi/suppl/10.1056/NEJMoa1402582/suppl_file/nejmoa1402582_protocol.pdf> and ..._appendix.pdf (King 2014 protocol/SAP) — failed (HTTP 403)
- ClinicalTrials.gov API v2 for [NCT01366209](https://clinicaltrials.gov/study/NCT01366209), [NCT00287716](https://clinicaltrials.gov/study/NCT00287716), [NCT00287729](https://clinicaltrials.gov/study/NCT00287729) — fetched; no documents posted
- King 2014 (NEJM), Noble 2011 (Lancet) — not fetched; not open access in Europe PMC
