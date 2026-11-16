# Cannabidiol (Epidiolex) — NDA 210365

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) · [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000StatR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/210365lbl.pdf)

Census entry: [`README.md`](../../README.md) line 23990. Epilepsy (Lennox-Gastaut syndrome and Dravet syndrome). GW Research. Approved 2018.

**Summary:** Three placebo-controlled trials compared cannabidiol (CBD) with placebo on percent change from baseline in 28-day seizure frequency over a 14-week treatment period (drop seizures in LGS studies 1414 and 1423; convulsive seizures in Dravet study 1332B). The primary analysis was an unstratified Wilcoxon rank-sum test with a Hodges-Lehmann (HL) median difference and "approximate" 95% CI. Pre-specified sensitivity analyses included ANCOVA on rank-transformed percent change (baseline and age group as covariates), ANCOVA on log-transformed seizure frequency, and ANCOVA on the raw percent change. All primary comparisons were significant (p = 0.0123, 0.0047 / 0.0016, 0.0135); the raw-scale ANCOVA was not significant in three of four comparisons.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- Method, estimates and p-values match the sources.
- The census does not mention that randomization was stratified by age group while the primary test was unstratified.
- The census does not mention the route by which the Wilcoxon test became primary: protocol amendments first "Changed the primary analysis to an ANCOVA" with an added "assessment for normality and use of the non-parametric Wilcoxon rank-sum test if data were not normally distributed" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) Table 5, OCR p.49; Table 35, OCR p.107 for 1423]; the review then describes the SAP primary analysis as the Wilcoxon rank-sum test.
- The census says the FDA Statistical Review does not cover efficacy; correct, but the "Medical Review" file is a Combined Clinical and Statistical Review (Getzoff and Ling) with the full statistical detail. The census's Documents list omits it.
- GWPCARE1 "N=120" is the ITT N (61 / 59); 1414 age strata are four groups, 1332B three.
- Exact vs asymptotic p-value: not determinable from FDA documents (census did not claim either).

No SAP or protocol is posted on ClinicalTrials.gov; NEJM supplementary protocols returned HTTP 403. The FDA review quotes the SAPs in places.

## Studies GWEP1332B (GWPCARE1, Dravet), GWEP1414 (GWPCARE3, LGS), GWEP1423 (GWPCARE4, LGS) — same method

### Design

| Study | Arms (ITT N) | Ratio | Age strata for randomization |
|---|---|---|---|
| 1332B | CBD 20 mg/kg/day (61), placebo (59) | 1:1 | 2-5, 6-12, 13-18 years (3 levels) |
| 1414 | CBD 20 mg/kg/day (76), CBD 10 mg/kg/day (73), placebo (76) | 1:1:1 | 2-5, 6-11, 12-17, 18-55 years (4 levels) |
| 1423 | CBD 20 mg/kg/day (86), placebo (85) | 1:1 | same as 1414 |

[[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) p.17-18, 25-26, 31-32]

- Double-blind, placebo-controlled, add-on; 28-day baseline, 14-week treatment (2-week titration plus 12-week maintenance).
- ITT set: randomized, received at least 1 dose, and had any post-baseline efficacy data [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) p.18].

### Endpoint

- Percent change from baseline in seizure frequency (average per 28 days) during the treatment period (titration plus maintenance). Drop seizures (1414, 1423); total convulsive seizures (1332B) [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) p.18, 31].
- Seizures recorded daily by IVRS telephone diary. Formula for 28-day frequency: Not stated beyond "calculated as a 28-day frequency"; amendment text says "calculated and presented pro rata (as number of seizures in 28 days)" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.49].
- For withdrawals, SAP quote: "the primary analysis variable will be calculated from all the available data, during the treatment period, prior to the patient withdrawing." [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) p.44, citing 1332B SAP p.10]
- Distribution: no explicit statement. IQRs are wide and asymmetric (1332B placebo Q1, Q3: -52.5, 20.2).

### Hypothesis and contrast

- Two-sided, 5% level [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) p.18].
- 1414: 20 mg/kg/day vs placebo, then 10 mg/kg/day vs placebo (each a separate two-group comparison). 1332B and 1423: 20 mg/kg/day vs placebo.
- Estimand language: none.

### Decision rule

- Protocol amendment (1332B: amendment 5, 30 Mar 2015; 1423: amendment 3, 03 Jun 2015): primary analysis changed to ANCOVA, with an added normality assessment and "use of the non-parametric Wilcoxon rank-sum test if data were not normally distributed" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.49; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.107 for 1423].
- The review's SAP description states the Wilcoxon rank-sum test as the primary analysis without a condition [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.48; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) p.106].
- Which normality test, applied to what, the threshold, and whether it was formally run: Not stated.

### Primary analysis method

- Test name: "Wilcoxon rank-sum test".
- What is ranked: percent change from baseline, pooled over the two groups compared. No covariate. Not stratified by age group. Tie handling: Not stated.
- Test statistic and reference distribution: Not stated (exact or normal approximation; continuity correction).
- For 1414, each dose vs placebo is a separate two-sample test (N = 76 + 76 and 73 + 76).

Sensitivity models (pre-specified) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.48]:

Rank ANCOVA:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Response: percent change in seizure frequency, treatment period | ranked | - | scope Not stated |
| Treatment group | categorical | 2 (3 in 1414) | "fixed factor" |
| Baseline (seizure frequency) | continuous; whether ranked is Not stated | - | covariate |
| Age group | categorical | 3 (1332B); 4 (1414, 1423) | "covariate" |

Log ANCOVA: response is log-transformed seizure frequency during the treatment period; "If there were any patients with no seizures post-baseline, then 1 was added to the drop seizure frequency for all patients prior to log transformation." Covariates: Not stated (presumably as above with log baseline).

Raw ANCOVA: percent change from baseline; covariates Not stated.

### Effect estimate and interval

- "An estimate of the median difference between CBD and placebo, together with approximate 95% confidence interval (CI), was calculated using the Hodges-Lehmann approach." [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.48]
- CI method beyond "approximate": Not stated.
- For ANCOVA sensitivity analyses the figure reports the difference in LS means with 95% CI [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) Figure 2 footnote, OCR p.59].

### Missing data and intercurrent events

- Primary: no imputation; frequency from all available diary days before withdrawal.
- Intermittent missing diary days: about 4% (1332B), 2% (1414), 2% (1423) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.60, 96, 117].
- Dropouts: 1332B 9 (15%) vs 3 (5%); 1414 9 (12%) at 20 mg vs 2 (3%) in each other arm; 1423 14 (16%) vs 1 (1%).
- Pre-specified missing-data sensitivity analyses [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.48]:
    - Wilcoxon test after imputing unreported IVRS days using the worst of LOCF, next observation carried backward, and the patient's mean of non-missing data.
    - Wilcoxon test with multiple imputation: intermittent missing imputed under MAR, then dropout data under MNAR with a penalty for CBD patients who discontinued "for certain reasons"; a tipping-point style result is reported (significant up to 1 SE of the placebo-group seizure frequency in 1332B and 1423, up to 4 SE in 1414). Number of imputations, imputation model, and how Wilcoxon/HL results were combined: Not stated.

### Multiplicity

- 1414: hierarchical gate-keeping, 8 steps: primary 20 mg, primary 10 mg, then three key secondaries for 20 mg, then for 10 mg [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) Table 1 p.19].
- 1423: single primary comparison; secondary hierarchy disputed (US vs EU SAP) [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) p.26].
- 1332B: single primary comparison; no pre-specified hierarchy in the US SAP [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) p.31].

### Sample size assumptions

- 1414: raised from 120 to 150 (40 to 50 per group); assumed placebo mean reduction in drop seizure frequency 18% (previously 10%) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.85]. Enrolled 225.
- 1423: raised from 80 to 100; enrolled 171. 1332B Part B: raised from 60 to 80; enrolled 120.
- Assumed treatment effect, SD, power, and the test used for the calculation: Not stated.

### Software and code

Not stated. No code.

### Results as presented

- Layout (CSR Table 8.4.1.1-1 as reproduced by FDA): per arm N; baseline period median; treatment period median; median percentage change with (Q1, Q3); "Estimated Median Difference (CI)" by HL; "p-value by Wilcoxon rank-sum test". Label Tables 4-5: baseline median, median percentage change, p-value only (no HL difference).

| Study | Arm | N | Baseline median (per 28 d) | Treatment median | Median % change (Q1, Q3) | HL median difference (95% CI) | Wilcoxon p |
|---|---|---|---|---|---|---|---|
| 1332B | CBD 20 | 61 | 12.4 | 5.9 | -38.9 (-69.5, -4.8) | -22.8 (-41.1, -5.4) | 0.0123 |
| 1332B | Placebo | 59 | 14.9 | 14.1 | -13.3 (-52.5, 20.2) | - | - |
| 1414 | CBD 20 | 76 | 85.5 | 44.9 | -41.9 (-72.4, -1.3) | -21.6 (-34.8, -6.7) | 0.0047 |
| 1414 | CBD 10 | 73 | 86.9 | 50.0 | -37.2 (-63.8, -5.6) | -19.2 (-31.2, -7.7) | 0.0016 |
| 1414 | Placebo | 76 | 80.3 | 72.7 | -17.2 (-37.1, 0.9) | - | - |
| 1423 | CBD 20 | 86 | 71.4 | 31.4 | -43.9 (-69.6, -1.9) | -17.2 (-30.3, -4.1) | 0.0135 |
| 1423 | Placebo | 85 | 74.7 | 56.3 | -21.8 (-45.7, 1.7) | - | - |

[[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) Tables 2, 6, 10]

- Figures: bar charts of proportion of patients by category of seizure response; continuous (cumulative) response curves; forest plot of sensitivity analyses [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) Figures 3-5; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) Figures 2, 6-10].

### Sensitivity and supportive analyses

From the CSR forest plots as reproduced in the review (image pages, read by OCR; some minus signs were lost in OCR and are restored here from the SumR tables where available; verify against the PDF) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.59, 94, 95, 116]:

| Analysis (treatment period, ITT unless noted) | 1332B: 20 vs P | 1414: 20 vs P | 1414: 10 vs P | 1423: 20 vs P |
|---|---|---|---|---|
| Wilcoxon / HL (primary) | -22.79 (-41.06, -5.43), p=0.0123 | -21.57 (-34.79, -6.67), p=0.0047 | -19.19 (-31.24, -7.69), p=0.0016 | -17.21 (-30.32, -4.09), p=0.0135 |
| Wilcoxon / HL, per protocol | -25.99, p=0.0037 | -26.28, p=0.0009 | -17.88, p=0.0054 | -19.43, p=0.0062 |
| Rank ANCOVA (LS mean difference in ranks) | -15.6 (-27.7, -3.5), p=0.0117 | -32.0 (-52.2, -11.7), p=0.0021 | -31.8 (-52.3, -11.4), p=0.0024 | -19.0 (-33.8, -4.2), p=0.0122 |
| ANCOVA on raw percent change (LS mean difference) | -21.99 (-45.20, 1.22), p=0.0631 | -18.88 (-49.52, 11.76), p=0.2259 | -33.66 (-64.66, -2.67), p=0.0334 | -14.62 (-32.09, 2.85), p=0.1003 |
| Wilcoxon after imputing unreported IVRS days | -22.98, p=0.0134 | -21.40, p=0.0068 | -19.46, p=0.0015 | -17.47, p=0.0126 |
| Wilcoxon, maintenance period | -26.06 (-45.07, -8.24), p=0.0052 | -21.23 (-36.40, -6.24), p=0.0067 | -19.54 (-32.22, -6.50), p=0.0033 | -19.45 (-33.05, -4.68), p=0.0096 |

- Log-transformed ANCOVA and MNAR MI: not shown in the figure ("Note: the log-transformed ANCOVA and multiple imputation to account for MNAR sensitivity analyses are not included"); the review says results were similar.
- Maintenance weeks 1-4, 5-8, 9-12: Wilcoxon / HL per period, restricted to patients with at least 7 days of diary data in the period [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) Tables 3, 7, 11].
- Total seizures (key secondary) analyzed by the same Wilcoxon / HL method [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) p.19].

### FDA reviewer comments and reanalyses

- Results "confirmed by FDA statistical reviewer".
- Reviewer's worst-case analysis: patients who withdrew were "assigned the worst result (the largest percentage change" from baseline); HL differences shrank to -14.1% (1332B), -15.6% (1414, 20 mg; CI about -31.7 to 1.2), and -5.5% (1423) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.60, 96, 117]. The CDTL review describes these same numbers as from "multiple imputation" [[SumR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) p.22, 28, 34]; the combined review calls them worst-case. Reviewer judged 1423 "less robust to the missing data caused by unbalanced dropouts".
- Over-enrollment checks: primary analysis on the first 150 (1414: -21.5, p = 0.0349; -19.8, p = 0.0101) and first 100 (1423: -8.6%, not significant) randomized patients [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) OCR p.97, 118].
- Reviewer argued early dropouts with few recorded seizures may give an artificial appearance of benefit.

### Verbatim specification excerpts

> "The primary endpoint of percent change from baseline in seizure frequency was analyzed using a Wilcoxon rank-sum test. Seizure frequency was calculated as a 28-day frequency. Estimates of the median differences between CBD and placebo and the approximate 95% confidence intervals (CI) were calculated using the Hodges-Lehmann approach." — [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf), p.19]

> "The primary analyses used the intention-to-treat (ITT) analysis set, which included all patients randomized to treatment who received at least 1 dose of the investigational treatment and who had any post-baseline efficacy data. All statistical tests were 2-sided and used the 5% significance level." — [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf), p.18]

> "Sensitivity analyses using ANCOVA on ranked data and log-transformed data yielded results similar to the primary analysis." — [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf), p.21]

> "the primary analysis variable will be calculated from all the available data, during the treatment period, prior to the patient withdrawing." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf), p.44]

From OCR of image pages (medr_ocr.txt; OCR artifacts such as bullet glyphs removed, so treat as near-verbatim):

> "Analysis of covariance (ANCOVA) on rank-transformed percentage change from baseline in convulsive seizure frequency during the treatment period, including baseline and age group as covariates and treatment group as a fixed factor." — [[medr_ocr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf), p.48]

> "ANCOVA model on log-transformed convulsive seizure frequency during the treatment period. If there were any patients with no seizures post-baseline, then 1 was added to the drop seizure frequency for all patients prior to log transformation." — [[medr_ocr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf), p.48]

> "Wilcoxon rank-sum test on percentage change from baseline in convulsive seizure frequency during the treatment period, using the worst case of last observation carried forward (LOCF), next observation carried backward (NOCB), and the mean from the non- missing data for each patient to impute intermittent missing data arising from unreported days during the treatment period only." — [[medr_ocr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf), p.48]

> "Added assessment for normality and use of the non-parametric Wilcoxon rank-sum test if data were not normally distributed." — [[medr_ocr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf), p.49]

> "In this analysis, intermittent missing values before the last visit were first imputed under missing at random assumption (MAR). Then non-intermittent missing data were imputed under the missing not at random (MNAR) assumption that the imputed values for CBD patients who discontinued were different from those of placebo patients." — [[medr_ocr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf), p.60]

### Implementation notes (inference)

- Inference: SAS `PROC NPAR1WAY WILCOXON HL` (or `EXACT`), or R `wilcox.test(pchg ~ arm, conf.int = TRUE)`. The reported CIs are asymmetric about the estimates (e.g. -21.6: -34.8, -6.7), consistent with the distribution-free order-statistic (Moses) interval, which SAS labels asymptotic and the SAP calls "approximate". With N of 60-86 per arm and continuous data, a normal-approximation p-value is likely, but the sources do not say.
- Inference: the rank ANCOVA "difference" (-15.6, -32.0, -31.8, -19.0) is on the rank scale (LS mean rank difference), not percent. Its magnitude scales with N (about 120 ranks in 1332B, about 150 per pairwise comparison in 1414 if only two arms were ranked, or 225 if all three were ranked together). Whether 1414 ranked all three arms together is not stated.
- Open decisions: ranking the baseline covariate or not (the source says only "baseline"); age group as a class effect; the log model's response (post-baseline frequency with log baseline as covariate, or log ratio).
- The test ignores the age stratification; a van Elteren test stratified by age would be the stratified analogue, and was not used.
- The raw-scale ANCOVA losing significance (3 of 4 comparisons) while rank methods stay significant illustrates the outlier sensitivity that motivated the rank method.
- For MI with a Wilcoxon test, the pooling rule is not described.

### Sources consulted

- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000SumR.pdf) — fetched (sumr.txt), CDTL review.
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000MedR.pdf) — fetched (medr.txt), Combined Clinical and Statistical Review. About half of its efficacy pages are images with no text layer; 38 pages OCR'd to medr_ocr.txt (tesseract, 220 dpi). Page numbers cited as "MedR OCR p.N" are the review's printed page numbers.
- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/210365Orig1s000StatR.pdf) — fetched (statr.txt); carcinogenicity and abuse-potential only, no efficacy.
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/210365lbl.pdf) — fetched (label.txt).
- ClinicalTrials.gov [NCT02091375](https://clinicaltrials.gov/study/NCT02091375), [NCT02224560](https://clinicaltrials.gov/study/NCT02224560), [NCT02224690](https://clinicaltrials.gov/study/NCT02224690) — API checked; no documents posted.
- NEJM protocol supplements (nejmoa1611618_protocol.pdf, nejmoa1714631_protocol.pdf) — HTTP 403. NEJM 2017, NEJM 2018, Lancet 2018 articles — not in Europe PMC full text; not fetched.
