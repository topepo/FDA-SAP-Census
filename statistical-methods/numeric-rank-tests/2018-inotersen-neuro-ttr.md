# Inotersen (Tegsedi) — NDA 211172

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: rank test specified or run, but not the operative primary analysis.

**Source documents:** [SAP (NCT01737398, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) · [Protocol (NCT01737398, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/Prot_000.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/211172lbl.pdf)

Census entry: [`README.md`](../../README.md) line 29192. Neurology (hATTR amyloidosis polyneuropathy). Ionis/Akcea. Approved 2018.

**Summary:** NEURO-TTR compared inotersen with placebo (2:1) on two hierarchically tested primary endpoints (change to Week 66 in mNIS+7, then Norfolk QoL-DN). The primary analysis was a parametric MMRM; no rank test was primary. Three rank/nonparametric elements exist: (1) a pre-specified fallback, a stratified re-randomization (permutation) test of the MMRM treatment estimate, to be used if Shapiro-Wilk on the Week-66 MMRM residuals had p ≤ 0.01 (this is a permutation test of a parametric statistic, not a rank test); (2) a van Elteren test with Hodges-Lehmann estimates as Sensitivity Analysis 1; (3) an FDA reviewer's post hoc joint-rank analysis (deaths ranked worst by survival time; ANCOVA on the joint ranks) because all 5 deaths were in the inotersen arm. All reported results are from the MMRM; the joint-rank analysis agreed (p=0.0003 for mNIS+7).

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The rank test was not part of the primary analysis. The census's "Van Elteren-type re-randomization test" conflates two separate things: the fallback is a re-randomization test of the MMRM LS-mean difference (shuffling treatment within the 8 randomization strata, 50,000 times); the van Elteren test is a separate sensitivity analysis.
- The census says "8 prespecified sensitivity analyses"; SAP v3.1 lists 13 (the FDA review reproduces the first 8) [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.50-51].
- The census says protocol/SAP not posted on ClinicalTrials.gov. Both are posted (SAP v3.1, 21 April 2017).
- Whether the Shapiro-Wilk trigger fired is not stated in any FDA document; census does not say either way.

## NEURO-TTR — ISIS 420915-CS2 (NCT01737398)

### Design

- Inotersen 300 mg SC weekly vs placebo, 2:1. 173 randomized (113 / 60) [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.53 Table 14]; 172 dosed.
- Randomization: permuted blocks within the 8 combinations of 3 binary factors: previous treatment with tafamidis or diflunisal (yes/no); disease stage (1 vs 2); V30M TTR mutation (yes/no) [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.14; census entry].
- Double-blind, placebo-controlled; 66 weeks of treatment; assessments at Week 35 and Week 66.
- Primary population: Full Analysis Set = randomized, at least 1 injection, and a baseline plus at least one post-baseline efficacy assessment for mNIS+7 or Norfolk QoL-DN [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.43]. FAS N = 106 inotersen, 59 placebo; the MMRM used 95 / 56 for mNIS+7 and 94 / 57 for Norfolk QoL-DN (patients with data in the Week 35 or 66 windows) [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.53; [label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/211172lbl.pdf) p.20].

### Endpoint

- Change from baseline to Week 66 in mNIS+7 composite score (maximum 346.32; higher is worse) and in Norfolk QoL-DN total score [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.47].
- mNIS+7 is measured twice at baseline and twice at Week 66; subcomponent scores are averaged first, then summed. Data from visits more than 52 days after last dose are excluded from the primary analysis [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.47].
- Missing items/subcomponents are imputed by a pre-specified hierarchy before analysis (sap §3.2.1.3; not reproduced here).
- Distribution: no remarks beyond the normality check rule. Group SDs of change about 19-24 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.49-51].

### Hypothesis and contrast

- Inotersen vs placebo at Week 66. MMRM route: two-sided 0.05. Fallback route: one-sided 0.025 [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.48-49].
- Estimand: not stated in E9(R1) terms; MAR assumption for missing data; on-treatment (within 52 days of last dose) data only.

### Decision rule

- Trigger: Shapiro-Wilk test on the MMRM residuals from Week 66 (plus inspection of a histogram of marginal studentized residuals and a normal probability plot), per endpoint [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.49].
- Threshold: significant at 0.01 → hypothesis test for that endpoint by the re-randomization test at one-sided 0.025; MMRM test used only if Shapiro-Wilk p > 0.01.
- Outcome: Not stated. The FDA review, Summary Review and label report MMRM estimates, CIs and two-sided p-values as the primary results (label footnote: "All endpoints analyzed using the mixed-effect model repeated measures (MMRM) method") and never mention a re-randomization p-value or bootstrap CI [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.47, p.50; [label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/211172lbl.pdf) p.20].

### Primary analysis method

- Parametric primary: MMRM on change from baseline (Week 35 and Week 66), REML, unstructured 2×2 covariance shared across treatments, Kenward-Roger adjustment; fallback covariance TYPE=UNR if non-convergent [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.48-49; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.28]. The example SAS code is redacted in the posted SAP.

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | |
| Time (visit) | categorical | 2 | Week 35, Week 66 |
| Treatment × time | categorical | 4 cells | Week 66 contrast is primary |
| Previous tafamidis/diflunisal | categorical | 2 | stratification factor |
| Disease stage | categorical | 2 | stratification factor |
| V30M mutation | categorical | 2 | stratification factor |
| Baseline value of endpoint | continuous | — | |
| Baseline × time | continuous × categorical | — | |

- Fallback (re-randomization test) [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.49]:
  1. Fit the MMRM with actual treatment; store the Week-66 LS-mean difference t*.
  2. Shuffle treatment labels within each of the eight strata, for all FAS patients; refit the MMRM; store the Week-66 difference. Repeat the shuffle if the model does not converge.
  3. Repeat 50,000 times (may be increased if simulation error is large).
  4. One-sided p = (1 + number of shuffles with t_i ≤ t*) / (1 + 50,000); reject if < 0.025.
  - What is permuted: treatment labels. What is ranked: nothing. Statistic: MMRM LS-mean difference. Reference distribution: stratified randomization distribution (Monte Carlo).

### Effect estimate and interval

- MMRM route: LS-mean difference at Week 66 with model-based 95% CI.
- Fallback route: same point estimate; 95% CI by bootstrap, resampling patients (not assessments), 10,000 samples, 2.5th and 97.5th percentiles [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.50].

### Missing data and intercurrent events

- MMRM under MAR, no explicit imputation of missing visits [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.48 (spaced-letter text layer); [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.28].
- Deaths: 5, all inotersen; 2 had post-baseline assessments (Week 35 only) and 3 had none and were excluded from the primary analysis [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.53].
- Completion: mNIS+7 at both Week 35 and 66 in 87/113 inotersen and 52/60 placebo; no post-baseline assessment in 10 vs 1 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.53 Table 14].

### Multiplicity

- Fixed sequence: mNIS+7 first, then Norfolk QoL-DN, each at two-sided 0.05 [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.48; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.28]. Secondary endpoints not controlled.

### Sample size assumptions

- 135 patients (2:1), about 25% dropout: at least 90% power for a 9.6-point difference in mNIS+7 (SD 14) and at least 80% for 10.7 points in Norfolk QoL-DN (SD 18), two-sided 5% [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.28-29; census entry].

### Software and code

- SAS (PROC MIXED named; SCORING=4, TYPE=UNR mentioned) [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.49]. Example code redacted. MI seed 2855 [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.53].

### Results as presented

- Label Table 3: baseline mean, LS-mean change to Week 66 per arm, treatment difference LS mean (95% CI), p-value [[label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/211172lbl.pdf) p.20]. FDA text gives Week 35 and Week 66 differences with CI and p.

| Endpoint | Inotersen LS mean change | Placebo LS mean change | Difference (95% CI) | p (MMRM) |
|---|---|---|---|---|
| mNIS+7 (n=95 / 56) | 5.8 | 25.5 | −19.7 (−26.4, −13.0) | <0.001 (0.00000004) |
| Norfolk QoL-DN (n=94 / 57) | 1.0 | 12.7 | −11.7 (−18.3, −5.1) | <0.001 (0.0006) |

[[label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/211172lbl.pdf) p.20; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.47, p.50]

- Figures: LS-mean change over time; histograms of change from baseline to Week 66 (or last available value) in 10-point bins with deaths placed at the far worse end [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.51; [label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/211172lbl.pdf) p.20].

### Sensitivity and supportive analyses

- Sensitivity Analysis 1: "The non-parametric Van-Elteren test will also be performed for the two primary study endpoints as the sensitivity analysis." Hodges-Lehmann estimates of the inotersen − placebo difference "as well as distribution-free CIs based on the Wilcoxon Rank Sum Test will also be provided." [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.50]. Stratification variables for the van Elteren test, the analysis variable (Week 66 change; handling of patients without Week 66), and whether the HL estimate is stratified: Not stated. Results: Not stated in the FDA documents (Summary Review: sensitivity analyses "are all consistent with the results of the prespecified co-primary endpoint analyses" [[sumr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000SumR.pdf) p.15]).
- Others (SAP): conservative assessment-level imputation; excluding early-termination data; MI under MAR, copy-increments-from-reference, jump-to-reference (at least 5000 imputations, ANCOVA at Week 66 with treatment, 3 strata, baseline; Rubin's rules); withdrawal-visit data included; per-protocol; pooled site; responder thresholds with cumulative distribution plot; alternative mNIS+7 scoring [[sap](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) p.50-53].

### FDA reviewer comments and reanalyses

- Joint-rank sensitivity analysis by the statistical reviewer (post hoc) [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.56-58]:
  - Rationale: all 5 deaths in the inotersen arm; 3 of them excluded from the MMRM.
  - Scoring: each patient is compared with every other patient; +1 if better, −1 if worse, 0 if tied. Both died: longer survivor is better. One died: the survivor is better. Both survived: "the functional scores are compared at the last assessment common to both patients". Joint rank = sum over comparisons (with N patients and no ties the values are −(N−1), −(N−3), ..., N−1).
  - Test: "a Wilcoxon rank sum test, or, in order to adjust for covariates, ANCOVA of the ranks ... (with the prespecified covariates of baseline score, pretreatment (Y/N), stage, TTR mutation, and Treatment group)". Table 17 uses the ANCOVA.
  - Population: mNIS+7 N=164 (59 placebo, 105 inotersen); Norfolk N=161 (59, 102); the reviewer "relaxed the rules for inclusion of observed data related to visit windows and time of treatment discontinuation" to include more patients [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.53].
  - Second scenario: one inotersen patient with a liver transplant on Day 388 also given a worse rank, as for death.

| Endpoint | Scenario | Week 66 difference (rank scale) | SE | p |
|---|---|---|---|---|
| mNIS+7 | 5 deaths ranked worst | −26.9 | 7.2 | 0.0003 |
| mNIS+7 | plus 1 liver transplant ranked as death | −25.6 | 7.5 | 0.0008 |
| Norfolk QoL-DN | 5 deaths ranked worst | −23.1 | 9.7 | 0.0188 |
| Norfolk QoL-DN | plus 1 liver transplant | −21.4 | 9.8 | 0.0304 |

  - ANCOVA model on the joint rank:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | |
| Baseline score | continuous | — | raw |
| Pretreatment (prior stabilizer) | categorical | 2 | |
| Stage | categorical | 2 | |
| TTR mutation (V30M) | categorical | 2 | |

- Other FDA comments: high rates of missing mNIS+7 items (e.g., heart rate deep breathing 40-45% not evaluable) judged acceptable given the imputation plan [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) p.58].

### Verbatim specification excerpts

> "If the Shapiro-Wilks test assessing normality of the MMRM residuals from week 66 is statistically significant at the 0.01 level, formal hypothesis testing for that endpoint will be done at the 0.025 one-sided significance level using a non-parameteric rerandomization test. Thus, the null hypothesis for the endpoint will only be tested using the results from the MMRM if the p-value from the Sharpio-Wilks test is > 0.01." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf), p.49]

> "Assignment to ISIS 420915 and Placebo is randomly shuffled within each of the eight study strata. Note that the shuffling will be done for all patients in the FAS irrespective of whether their post-baseline data falls within an analysis window." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf), p.49]

> "Step 2 is repeated 50,000 times, where the collection of the estimated treatment effects under the shuffled treatment assignment defines the randomization distribution." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf), p.49]

> "If the rerandomization test is implemented, 95% CIs obtained by bootsrapping the data will be presented, with the resampling being done at the patient and not at the assessment level. A total of 10,000 bootstrap samples will be drawn, with the CI being defined as the 2.5th and 97.5th percentile from the empirical distribution of the treatment effect." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf), p.50]

> "The MMRM method included fixed categorical effects for treatment (2 levels), time (2 levels), treatment-by-time interaction, and each of the 3 randomization stratification factors (each with 2 levels). The Baseline value of the endpoint and the Baseline-by-time interaction were included as fixed covariates in the model." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf), p.28]

> "In the standard joint rank analysis, each patient’s rank is determined by comparing them to every other patient and adding a score of -1 if they are worse or +1 if they are better under the various possible scenarios, i.e., if i) both died then the longer survivor is better, ii) if only one died then the other is better, iii) if both survived the functional scores are compared at the last assessment common to both patients and the better scoring patient gets a +1 for that comparison." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf), p.57]

> "How extreme the actually observed drug group’s sum of ranks is can be formally tested with a Wilcoxon rank sum test, or, in order to adjust for covariates, ANCOVA of the ranks can be used (with the prespecified covariates of baseline score, pretreatment (Y/N), stage, TTR mutation, and Treatment group)." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf), p.57]

### Implementation notes (inference)

- Inference: the fallback did not fire, or at least was not reported, because every public result is the model-based MMRM output with two-sided p-values. This is an inference from silence.
- The re-randomization test: `for (i in 1:50000) { trt_perm <- ave(trt, stratum, FUN = sample); fit MMRM; store LS-mean difference }`. The one-sided formula counts t_i ≤ t* because benefit is a negative difference (lower score is better). Using the unstudentized LS-mean difference as the statistic is the SAP's choice. 50,000 MMRM fits is costly; non-convergent shuffles are redrawn, which slightly conditions the reference set.
- van Elteren (inference): `PROC FREQ; TABLES stratum*trt*chg / CMH2 SCORES=MODRIDIT;` or `PROC NPAR1WAY WILCOXON; STRATA stratum;` with stratum = the 8 randomization cells (assumed; SAP does not say). "distribution-free CIs based on the Wilcoxon Rank Sum Test" matches `PROC NPAR1WAY HL` (unstratified Moses interval), so the test would be stratified while the estimate is not. Sparse strata (8 cells, about 150 patients, 2:1) could leave some cells with very few placebo patients.
- FDA joint rank: scores are sums of ±1, i.e., 2 × midrank − (N + 1); an ANCOVA on these gives the same test as on midranks, and the "rank scale" difference of −26.9 is on the ±(N−1) scale (about −13.5 ordinary ranks out of 164). The pairwise rule "last assessment common to both patients" (Week 66 if both have it, otherwise Week 35) makes the pairwise ordering potentially non-transitive, so the score cannot be reproduced by ranking one composite variable; the pairwise loop must be coded. How pairs with no common post-baseline assessment were scored is not stated.
- Unlike tofersen, no multiple imputation was used with the joint rank; survivors without usable data were either included through relaxed windows or dropped (164 of 173).

### Sources consulted

- [SAP (NCT01737398, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/SAP_001.pdf) — fetched (sap.txt; p.48 has a letter-spaced text layer; example SAS code redacted)
- [Protocol (NCT01737398, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/98/NCT01737398/Prot_000.pdf) — fetched (prot.txt; not needed beyond the SAP)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000MedR.pdf) — fetched (medr.txt; combined clinical/biostatistical review)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/211172Orig1s000SumR.pdf) — fetched (sumr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/211172lbl.pdf) — fetched (label.txt)
- Europe PMC [PMC12611561](https://pmc.ncbi.nlm.nih.gov/articles/PMC12611561/) (Benson 2018 NEJM) — failed (full text XML not available)
