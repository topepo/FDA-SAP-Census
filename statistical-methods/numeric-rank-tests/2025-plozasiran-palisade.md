# Plozasiran (Redemplo) — NDA 219947

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [SAP (NCT05089084, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) · [Protocol (NCT05089084, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/Prot_000.pdf) · [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2025/219947s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 16473. Familial chylomicronemia syndrome (lipid). Arrowhead Pharmaceuticals. Approved 2025.

**Summary:** PALISADE compared each plozasiran dose (25 mg, 50 mg) with pooled placebo on percent change from baseline in fasting triglycerides (TG) at Month 10. The primary analysis was an unstratified Wilcoxon rank-sum test with the Hodges-Lehmann (HL) location shift and 95% CI (SAS PROC NPAR1WAY, HL option), run on each of 100 multiply imputed datasets (placebo-washout pattern-mixture imputation) and combined with Rubin's rules plus a modified Mogg-Mehrotra macro. Results: -58.7% (95% CI -89.6, -27.9; p < 0.0001) for 25 mg and -52.5% (-83.1, -21.9; p = 0.0002) for 50 mg.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says "each dose tested only after the prior endpoint reached significance for both doses ... the two doses are tested sequentially (higher dose gates the lower)". The SAP and FDA review say the two doses within an endpoint were handled by Holm's step-down procedure, not a fixed high-then-low order [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.53].
- The census describes the three-scenario imputation as planned. FDA reports that because too few non-adherent subjects had Month 10 data, the implemented model was the washout fallback, and "incorporated only baseline TGs as a covariate" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.51].
- The census says 72 randomized; 72 was planned, 75 were randomized (26 / 24 / 25 pooled placebo) [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.49, Table 10].
- The census does not note that the rank test is unstratified even though randomization was stratified by screening TG.

## PALISADE (AROAPOC3-3001, NCT05089084)

### Design

- Four cohorts randomized 2:1:2:1: plozasiran 25 mg, volume-matched placebo, plozasiran 50 mg, volume-matched placebo; SC every 3 months, 4 doses in 12 months [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §2.2.1 p.12]. Placebo cohorts pooled for analysis, giving roughly 1:1 for each dose vs pooled placebo [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §4 p.41]. Randomized: 26 / 24 / 25 (pooled placebo) [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) Table 10 p.57].
- Stratification factor: TG level at screening, ≥2000 mg/dL vs <2000 mg/dL (2 levels) [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §2.2.2 p.22, partly garbled in the text layer; [IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.52 subgroup list]. Block randomization via IWRS.
- Double-blind for active vs placebo; dose group not blinded because of injection volume [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §2.2.2].
- Primary analysis population: Full Analysis Set, "all randomized subjects regardless of adherence to the treatment", analyzed as randomized [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.2.1 p.29].

### Endpoint

- Percent change from baseline at Month 10 in fasting TG (mg/dL) [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §2.3.1 p.22].
- Baseline: "the average of the last 2 non-missing values prior to the first dose or the last non-missing value prior to the first dose if only a single value is available" [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.1.2 p.27]. The FDA table footnote says geometric mean of the last 2 values [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.57]. Month 10 is the "average of 2 assessments, 2 to 7 days apart" [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2025/219947s000lbl.pdf) §14].
- Distribution: "Due to the known distribution of TG and percent change from baseline in TG, normality assumption is usually difficult to satisfy." [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.1 p.33]. FDA: positively skewed; "the Shapiro-Wilk normality test confirmed that the data violated normality assumptions" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].

### Hypothesis and contrast

- "For each dose of ARO-APOC3, the primary null hypothesis is that there is no difference in the median percent change from baseline in fasting TG at Month 10 between ARO-APOC3 and placebo, and the alternative hypothesis is that a median difference exists." [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.1.4 p.28]. Two-sided, family-wise alpha 0.05.
- Two comparisons: each dose vs pooled placebo.
- Estimand: difference in median percent change, treatment-policy for non-compliance and prohibited medication [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §2.3.2 p.22].

### Decision rule

Not contingent for the primary analysis: the nonparametric method was pre-specified as primary. (History: the primary method was changed from a redacted parametric method to the rank-sum test in SAP draft v0.2, Sept 2021 [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.332 revision summary].) The ANCOVA sensitivity analysis was conditional: to be run "if normality assumption is not violated" [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.1 p.34]. For other secondary/exploratory endpoints the order was reversed: ANCOVA primary, residuals checked for normality, HL-based analysis if violated [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.3 p.36].

### Primary analysis method

- Test name: Wilcoxon rank-sum test; "As an extension to the Wilcoxon rank-sum test, the Hodges-Lehmann method will be used to estimate the median difference and its corresponding 95% CI" [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.1 p.33].
- What is ranked: the percent change (`pchg`), pooled over the two groups being compared; no covariate; no stratification (the code has only a CLASS statement for treatment). Score type: Wilcoxon scores (PROC NPAR1WAY default with HL). Tie handling: Not stated.
- Stratification: none in the test, although randomization was stratified.
- Test statistic and reference distribution: Not stated explicitly (no EXACT statement in the code). Continuity correction: Not stated.
- Each dose is compared with pooled placebo separately (the code has a two-level class variable per comparison; how the data were subset is Not stated).

Parametric sensitivity model (ANCOVA) [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.1 p.34]:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 3 (25 mg, 50 mg, pooled placebo) presumably | "treatment as a factor" |
| Baseline TG | continuous | - | covariate |

ANHECOVA (Ye et al. 2022) for change from baseline: FDA says it "included treatment-by-stratification factor interactions" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].

### Effect estimate and interval

- HL estimate of location shift ("median difference") with 95% CI, per imputed dataset, from PROC NPAR1WAY `hl alpha=0.05` [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.1 p.33].
- Combined across imputations: "The estimate and standard error for treatment effect from the analysis will be analyzed by PROC MIANALYZE to obtain the overall estimate of treatment difference, as well as the confidence interval and p-value. The test statistics for making inference will be based on the method provided by Rubin and a modified macro from Mogg and Mehrotra (2007)." [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) App. A p.44]

### Missing data and intercurrent events

- Planned pattern-mixture MI in three scenarios [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) App. A p.43-44]: (I) non-adherent with missing Month 10 imputed from non-adherent with observed Month 10 in the same arm; (II) if too few such subjects, plozasiran arms imputed as washed out (baseline TG only plus placebo data, method of Ratitch et al. 2013) and placebo imputed under MAR from placebo data; (III) adherent with missing Month 10 imputed from adherent subjects in the same arm.
- Implemented: scenario II (placebo washout) with only baseline TG as covariate [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.51].
- 100 imputations, FCS method, log transform of TG values, `minimum=0`. Percent change computed after imputation [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) App. A p.44].
- Seeds: sample code shows `seed = 98547`; text says "A pre-specified seed number of 4893155 will be used in all imputation procedures" [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.1 p.35].
- Missing at Month 10: 2 (7.7%) / 2 (8.3%) / 6 (24.0%) [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) Table 10 p.57].
- If the regression would not fit, covariates were dropped in order of Spearman correlation with baseline TG [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) App. A p.44].

### Multiplicity

Fixed sequence across endpoints (TG Month 10; TG Months 10 and 12 averaged; ApoC-III Month 10; ApoC-III Month 12), each step requiring significance at both doses; within an endpoint the two dose comparisons use Holm's step-down procedure [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.1.4 p.28-29; [IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.53].

### Sample size assumptions

72 subjects, 2:1:2:1; about 99% power; "a 2.5% level of significance for each test"; assumed mean reductions 75% and 80% (active) vs 5% (placebo), SD 40%; "The Wilcoxon (Mann-Whitney) rank-sum test is used with the assumption of p1=P(X<Y)=0.108"; dropout 10-15% [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §4 p.41].

### Software and code

SAS 9.3 or higher [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §7 p.42].

Primary analysis [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.1 p.33]:

```sas
proc npar1way data = indata hl alpha=0.05;
     class trt01pn;
     var pchg;
run;
```

Imputation, scenario I sample code [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) App. A p.43]:

```sas
proc mi data = datain out = imout1 minimum=0 nimpute = 100 seed = 98547;
  by trt01pn;
  var age sex ethnicity bmi baseapoc3 baseldl base m1 m2 m3 m4 m5 m6 m7 m8
m9 m10;
  class sex ethnicity;
  FCS; /* fully conditional specification method*/
  transform log(base) log(m1) log(m2) log(m3) log(m4) log(m5) log(m6)
log(m7) log(m8) log(m9) log(m10);
run;
```

Tipping point (MMRM-based), step 1 [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.1 p.35]:

```sas
Proc mi data = indata out = mcmc nimpute = 100 seed = &seed;
  var trt01pn etipfl baseapoc3 baseldl base m1 m2 m3 m4 m5 m6 m7 m8 m9
m10 m11 m12;
  mcmc chain = multiple;
run;
```

### Results as presented

- FDA Table 10 layout [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.57]: columns 25 mg, 50 mg, pooled placebo. Rows: baseline mean (SD); baseline median; Month 10 mean (SD); Month 10 median; missing n (%); median % change; "% Median difference from control, (95% CI)"; unadjusted p-value.
- Label Table 2 [§14]: baseline median, median % change, treatment difference (95% CI), 25 mg only (the approved dose), with footnote naming the HL method and washout imputation.

| | 25 mg (N=26) | 50 mg (N=24) | Placebo pooled (N=25) |
|---|---|---|---|
| Baseline TG, mean (SD) | 2349.5 (1374.54) | 2491.5 (1523.2) | 2271.9 (1141.43) |
| Baseline TG, median | 2008.0 | 1902.4 | 2052.6 |
| Month 10, median | 443.0 | 664.0 | 1613.9 |
| Missing, n (%) | 2 (7.7) | 2 (8.3) | 6 (24.0) |
| % change at Month 10, median | -80.1 | -77.6 | -17.1 |
| HL median difference (95% CI) | -58.7 (-89.6, -27.9) | -52.5 (-83.1, -21.9) | - |
| p-value (unadjusted) | <0.0001 | 0.0002 | - |

- Figures: median percent change over time and median TG over time, observed data [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) Figures 7-8].

### Sensitivity and supportive analyses

- Per-protocol set, no imputation: -59.5% and -53.8% [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].
- Trimmed HL: sequentially removing the top 10 subjects; both doses stayed significant (p < 0.05) at every step [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].
- ANCOVA (treatment, baseline TG): mean differences -63.9% (95% CI -99.0, -28.7) and -57.4% (-92.0, -22.3) [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].
- MMRM under MAR: -69.7% and -62.0% [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].
- ANHECOVA: -65.1% and -58.7% [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].
- Tipping point (MMRM with delta-adjusted MI, shifts -500 to +500 mg/dL): no reversal [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].
- Excluding data after intercurrent events (FDA request): -58.0 (-88.3, -27.6), p < 0.0001; -52.5 (-83.1, -21.9), p = 0.0002 [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) Table 158 p.354].
- Key secondaries (TG averaged Months 10/12, ApoC-III) used the same Wilcoxon/HL method [[SAP](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) §3.5.2 p.36].

### FDA reviewer comments and reanalyses

- FDA weighted ANCOVA for heterogeneous variances: -64.0% (-101.4, -26.6) and -57.4% (-93.4, -21.4) [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.353].
- Bootstrap CI requested "in case the assumptions underlying the Hodges-Lehmann method were violated". Applicant's Boot MI percentile (500 bootstrap samples stratified by arm, M = 100 each; only 101 samples converged): -65.5% (-93.3, -49.5) and -59.2% (-85.6, -44.9), judged too narrow. FDA's MI Boot percentile (M = 100, then 500 bootstraps each): -59.8% (-92.1, -27.5) and -53.2% (-84.5, -21.9) [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) p.354-355].

### Verbatim specification excerpts

> "Due to the known distribution of TG and percent change from baseline in TG, normality assumption is usually difficult to satisfy. A nonparametric approach will be used as the primary analysis for the primary efficacy endpoint. As an extension to the Wilcoxon rank-sum test, the Hodges-Lehmann method will be used to estimate the median difference and its corresponding 95% CI for percent changes between ARO-APOC3 doses and placebo." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf), p.33]

> "After the multiple imputation step, each imputed dataset will be analyzed by nonparametric Hodges-Lehmann method. The method provided by Rubin and a modified macro from Mogg and Mehrotra (2007) will be used to combine and derive treatment difference estimates, 95% confidence intervals and p-values for the imputation procedure." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf), p.34]

> "After imputation step, percentage change in TG will be calculated and each of the 100 multiply imputed datasets for FAS patients will be analyzed by either PROC NPAR1WAY procedure (primary) or PROC MIXED procedure (sensitivity). The estimate and standard error for treatment effect from the analysis will be analyzed by PROC MIANALYZE to obtain the overall estimate of treatment difference, as well as the confidence interval and p-value." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf), p.44]

> "For each ARO-APOC3 arm, the treatment effect is considered washed out. Baseline TG values from these subjects (no intermediate measures will be used) and data from placebo group will be used to impute the missing Month 10 TG values; Missing Month 10 TG values will be imputed by using the method which was proposed by Ratitch et al (2013)." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf), p.44]

> "The Hodges-Lehmann method was utilized to estimate the median difference and its corresponding 95% confidence interval for percent changes between plozasiran doses and placebo. The p-value was calculated by the Wilcoxon rank-sum test." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf), p.51]

> "This imputation model incorporated only baseline TGs as a covariate." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf), p.51]

> "The method proposed by Rubin was used to combine and derive treatment difference estimates, 95% CIs, and p- values. The proposed imputation approach is essentially a placebo- washout multiple imputation." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf), p.51]

> "The trimmed Hodge-Lehman statistical analysis addressed concerns about the positively skewed distribution of the data by sequentially removing the top 10 subjects from the analysis." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf), p.353]

### Implementation notes (inference)

- Inference: PROC NPAR1WAY with `HL` gives the HL shift, an asymptotic (Moses) CI, and an interval midpoint with an asymptotic standard error. The reported CIs are symmetric about the estimate (-58.7 ± 30.85; -52.5 ± 30.6), consistent with Rubin's rules applied to a per-imputation estimate and standard error (PROC MIANALYZE), not a pooled order-statistic interval.
- Inference: the p-values are not the Wald p-values implied by those CIs (CI-implied z is about 3.7 and 3.4, p about 0.0002 and 0.0008, vs reported <0.0001 and 0.0002). So the Wilcoxon p-value was pooled separately, plausibly by pooling the per-imputation Wilcoxon z statistic as in Mogg and Mehrotra (2007). The exact pooling rule in the "modified macro" is not public; a programmer must choose (e.g. Rubin's rules on the standardized Wilcoxon statistic with unit within-imputation variance).
- Inference: with no EXACT statement, the per-dataset test is the normal approximation (SAS applies a continuity correction by default for two-sample Wilcoxon).
- Inference: the test ignores the randomization stratum (screening TG); a van Elteren test was not used.
- The `minimum=0` and log transforms in PROC MI keep imputed TG positive. Percent change is derived after imputing on the TG scale.
- The SAP text layer drops some symbols (e.g. the "≥2000" in the stratification sentence and "Holm's step" in the multiplicity paragraph); the FDA review confirms both.

### Sources consulted

- [SAP (NCT05089084, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/SAP_002.pdf) — fetched (sap.txt), SAP v2.0, 06 May 2024.
- [Protocol (NCT05089084, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/84/NCT05089084/Prot_000.pdf) — fetched (prot.txt), not needed beyond the SAP.
- [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/219947Orig1s000IntegratedR.pdf) — fetched (intr.txt). Not listed in census.
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2025/219947s000lbl.pdf) — fetched (label.txt).
- NEJM 2025;392:127 (Watts) — not open access in Europe PMC; not fetched.
