# Viltolarsen (Viltepso) — NDA 212154

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: rank test specified or run, but not the operative primary analysis.

**Source documents:** [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2020/212154s000lbl.pdf) · [Protocol and SAP (NCT02740972, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/72/NCT02740972/Prot_SAP_000.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC7251505/)

Census entry: [`README.md`](../../README.md) line 29631. Neurology (Duchenne muscular dystrophy, exon 53 skipping). NS Pharma, Inc. Approval 2020 (accelerated).

**Summary:** The rank-based method was NOT part of the primary analysis. The primary analysis of within-patient change in dystrophin (% of normal, Western blot) was a paired t-test within each dose group (n=8 each). The protocol allowed a normalizing transformation "if needed" (the FDA review paraphrases this as "a nonparametric test or a transformation"); no document consulted reports that normality was formally tested, what the outcome was, or that a transformation or nonparametric test replaced the t-test. All reported primary p-values are from untransformed paired t-tests. The only nonparametric analysis found is an FDA-reviewer sensitivity analysis using a sign test (nominal p=0.0078 for both doses).

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says "planned fallback to a nonparametric test or normalizing transformation if normality failed". The posted protocol (v7.0, §10.6.1) mentions only a transformation; "nonparametric test" appears only in FDA's paraphrase [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.27; [sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) p.15]. No fallback was reported as used.
- The census says ClinicalTrials.gov has no protocol/SAP posted. A document labelled "Study Protocol and Statistical Analysis Plan" is posted (Prot_SAP_000.pdf, 91 pages, image-only scan). It contains protocol v7.0 (28 Nov 2017); no separate SAP text was found in it (the protocol says "Details of handling missing data will be described in the Statistical Analysis Plan").
- The census does not mention the FDA sign-test sensitivity analysis.
- The census quotes p=0.94 for the dose comparison; that is the myosin-normalized result. The alpha-actinin-normalized comparison gave p=0.17 [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) p.16 Table 2].

## Study NS-065/NCNP-01-201 (Study 201, NCT02740972)

### Design

- Two sequential dose cohorts of 8 patients (40 mg/kg/wk, then 80 mg/kg/wk). Within each cohort, 3:1 randomization (6 viltolarsen : 2 placebo) for a 4-week double-blind period, then all patients on open-label viltolarsen at the cohort dose through Week 24, biopsy at Week 25 [census summary of SumR; [medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.27].
- Randomization stratification factors: Not stated.
- Blinding/control: placebo control only for the first 4 weeks (safety). The dystrophin analysis has no concurrent control; it is a pre/post within-patient comparison.
- Analysis population: mITT, "all randomized patients who received at least 1 dose of investigational product and had a baseline assessment and at least 1 post baseline efficacy assessment" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.27]. N=8 per dose group, 16 total; no discontinuations [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) p.15].

### Endpoint

- Dystrophin protein in biceps muscle biopsy by Western blot, expressed as % of normal, at baseline and Week 25 (after 20-24 weeks of active treatment). Two normalizations: myosin heavy chain and alpha-actinin [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.27, p.32].
- Derivation: for each biopsy and each normalization, up to 3 responses from triplicate gels were averaged; if some were missing, the available ones were averaged [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.27]. Change = Week 25 minus baseline.
- Variable type: continuous, bounded below near 0 at baseline (baseline means 0.2-0.6% of normal). Change-from-baseline distributions look right-skewed at 80 mg/kg (mean 5.3, median 3.8, range 0.7 to 13.9) [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.32 Table 5]. The sources make no distributional remarks.

### Hypothesis and contrast

- Within each dose group: mean change from baseline differs from 0 (two-sided) [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.33 table footnote]. Alpha 0.05 two-sided per protocol sample-size text [[prot_sap_ocr.txt](https://cdn.clinicaltrials.gov/large-docs/72/NCT02740972/Prot_SAP_000.pdf), protocol p.79 §10.2]; publication states "All statistical tests were performed at a significance level of .05 without correction for multiple comparisons" [[pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC7251505/)].
- Between doses: two-sample t-test on change (80 vs 40 mg/kg/wk).
- Combined doses: paired t-test on all 16 (stated in the plan; combined-dose result not shown in FDA tables).
- Estimand: Not stated.

### Decision rule (only if the method was contingent)

- Protocol: "Results will be summarized and normality assessed. If needed, a transformation to achieve normality will be performed." [[prot_sap_ocr.txt](https://cdn.clinicaltrials.gov/large-docs/72/NCT02740972/Prot_SAP_000.pdf), protocol p.81 §10.6.1]. No test name, threshold, or scope (per dose or pooled; raw changes) is given.
- FDA's description adds "a nonparametric test" as an alternative [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.27].
- Outcome of the normality assessment: Not stated. Who made the call: Not stated. Tables in both FDA documents label the p-values "(Paired T-Test)" on untransformed % of normal, so the fallback was evidently not applied to the reported primary results.

### Primary analysis method

- Test: paired t-test within dose level on within-patient change in % of normal dystrophin; two-sample t-test comparing change between dose levels [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.27].
- Nothing is ranked. No model, no covariates, no stratification.
- Statistic and reference distribution: t with n-1 = 7 df per dose group (inference; df not stated).
- 95% CI: for mean change within dose and for the 80-40 difference [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.32 Table 5]; method not stated (consistent with t-based intervals).

### Effect estimate and interval

- Mean change from baseline (SD) with 95% CI per dose and normalization; difference between doses with 95% CI [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.32, p.39].

### Missing data and intercurrent events

- No imputation planned: "we will summarize how much data are missing, but do not expect to need to impute any data" [[prot_sap_ocr.txt](https://cdn.clinicaltrials.gov/large-docs/72/NCT02740972/Prot_SAP_000.pdf), protocol p.85 §10.9].
- Missing replicate gels: average the available replicates [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.27].
- Amount missing: none at patient level (n=8 in every cell; no discontinuations) [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) p.15].

### Multiplicity

- None planned. FDA: four primary analyses (2 normalizations x 2 doses); results "remain nominally statistically significant for any reasonable adjustment for multiplicity control" [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) p.15].

### Sample size assumptions

- "a sample size of 8 in one cohort is large enough to detect an increase from no detectable dystrophin to 5% of normal with 80% power, assuming that the SD of the difference from baseline in % normal dystrophin is 4% in boys with DMD, and controlling for a Type I error of 0.05" [[prot_sap_ocr.txt](https://cdn.clinicaltrials.gov/large-docs/72/NCT02740972/Prot_SAP_000.pdf), protocol p.79 §10.2]. With SD 6.5%, n=16 combined gives 80% power for a 5% improvement, two-sided alpha 0.05.

### Software and code

- Not stated. No code in any source.

### Results as presented

- FDA layout (Table 5 in the clinical review, Table 2 in the summary review): columns are normalization (myosin, alpha-actinin) x dose (40, 80) x Obs/CFB; rows are Baseline and Week 25 Mean (SD), Median, Min/Max, then 95% CI of change, paired t-test p-value, 95% CI of (80-40), two-sample test p-value. A second table (Table 7) gives baseline mean (SD), Week 25 mean (SD), change mean (SD), 95% CI, p-value.
- Label §14: mean baseline, mean Week 25, mean change (SD) and p-value for 80 mg/kg only (myosin normalization), plus an individual-patient table and spaghetti plot [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2020/212154s000lbl.pdf) §14].

| Normalization | Dose (n) | Baseline mean (SD) | Week 25 mean (SD) | Change mean (SD) | 95% CI | Paired t p | Median change | Min, max change |
|---|---|---|---|---|---|---|---|---|
| Myosin | 40 mg/kg (8) | 0.3 (0.1) | 5.7 (2.4) | 5.4 (2.4) | 3.4, 7.4 | 0.0004 | 4.6 | 2.8, 10.0 |
| Myosin | 80 mg/kg (8) | 0.6 (0.8) | 5.9 (4.5) | 5.3 (4.5) | 1.6, 9.0 | 0.0123 | 3.8 | 0.7, 13.9 |
| alpha-actinin | 40 mg/kg (8) | 0.2 (0.2) | 5.4 (2.8) | 5.2 (2.8) | 2.8, 7.6 | 0.0012 | 4.3 | 1.7, 10.2 |
| alpha-actinin | 80 mg/kg (8) | 0.4 (0.7) | 3.7 (2.4) | 3.3 (2.5) | 1.2, 5.3 | 0.0074 | 2.7 | 0.3, 8.0 |

Source: [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) p.16 Table 2; [medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.32 Table 5, p.39 Table 7]. Dose comparison (80-40): myosin 95% CI (-3.9, 3.7), p=0.94; alpha-actinin 95% CI (-4.8, 0.9), p=0.17.

- Figures: individual-patient baseline/Week 24 dot plot by dose (FDA Figure 6); histogram of % change categories (primary reviewer) [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.38-39].

### Sensitivity and supportive analyses

- FDA statistical reviewer sign test: nominal p=0.0078 for both doses, results not shown in a table [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.40]. The text layer on this page has stray spaces inside words (e.g. "sensitivit y analysis using a sign t est"), so this is paraphrased rather than quoted.
- Mass spectrometry dystrophin (secondary): paired t-test p=0.0061 (40) and 0.0300 (80), nominal [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) p.17 Table 3].

### FDA reviewer comments and reanalyses

- Table 5/Table 7 are "Statistics Reviewer Analysis", i.e. FDA re-ran the paired t-tests.
- The sign test is described as a nonparametric test with very few assumptions (paraphrase; garbled text layer) [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.40].
- OBP judged myosin normalization more reliable than alpha-actinin [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) p.32].

### Verbatim specification excerpts

> "Western blot within-patient change in percentage of normal dystrophin production was tested using a paired t-test within each dose level. A two-sample t-test was used to compare change across the two dose levels. The two doses were also combined and tested using a paired difference t-test. Normality of change in percentage of normal dystrophin at post-baseline was to be assessed and if needed, a nonparametric test or a transformation to achieve normality would be performed." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf), p.27]

> "Results will be summarized and normality assessed. If needed, a transformation to achieve normality will be performed. Within patient changes in %" — [[prot_sap_ocr.txt](https://cdn.clinicaltrials.gov/large-docs/72/NCT02740972/Prot_SAP_000.pdf), protocol p.81 (OCR page p-74)]

> "normal dystrophin production (possibly transformed) will be tested using a paired t-test within dose group and with both dose groups combined. Also, a two sample t-test to compare change across the two dose levels will be performed." — [[prot_sap_ocr.txt](https://cdn.clinicaltrials.gov/large-docs/72/NCT02740972/Prot_SAP_000.pdf), protocol p.82 (OCR page p-75)]

> "The results were also supported by a sensitivity analysis." — [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf), p.15]

> "For each visit where a biopsy was performed, up to 3 planned responses for each test were averaged to attain a single result for summarizing and analyzing." — [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf), p.16]

### Implementation notes (inference)

- The primary analysis is `t.test(week25, baseline, paired = TRUE)` per dose group, or equivalently a one-sample t-test on the change. The reported CIs match t-based intervals with 7 df (e.g. 5.4 ± 2.365 × 2.4/√8 ≈ 3.4 to 7.4).
- The sign-test p-value 0.0078 equals 2 × (1/2)^8 = 0.0078125, the exact two-sided binomial p-value when all 8 patients in a dose group increase. So the sign test was exact, per dose group, n=8, with 8/8 positive changes. This is the smallest attainable two-sided p-value with n=8; a Wilcoxon signed-rank test would give the same minimum p (0.0078) when all changes are positive.
- A programmer following the protocol must decide the normality check (test, alpha, pooled or per dose) and the transformation. The sources give no rule. Note that the percent-of-normal changes at 80 mg/kg are visibly skewed, yet the untransformed t-test was reported.
- This case is not a rank-test example; it is useful only as a negative control (stated fallback, no evidence of use).

### Sources consulted

- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000SumR.pdf) — fetched (sumr.txt)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000MedR.pdf) — fetched (medr.txt; combined clinical/statistical review; some pages have a degraded text layer)
- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/212154Orig1s000StatR.pdf) — failed (not a PDF; no separate statistical review exists)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2020/212154s000lbl.pdf) — fetched (label.txt)
- [Protocol and SAP (NCT02740972, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/72/NCT02740972/Prot_SAP_000.pdf) — fetched; image-only scan, OCR'd with tesseract (prot_sap_ocr.txt). prot_sap.txt is the empty pdftotext output.
- Europe PMC full text [PMC7251505](https://pmc.ncbi.nlm.nih.gov/articles/PMC7251505/) (Clemens et al., JAMA Neurol 2020) — fetched (pub.txt)
