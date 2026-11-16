# Lomitapide (Juxtapid) — NDA 203858

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: rank test specified or run, but not the operative primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2012/203858s000lbl.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC4587657/)

Census entry: [`README.md`](../../README.md) line 13686. Lipidology (homozygous familial hypercholesterolemia). Aegerion Pharmaceuticals. Approved 2012.

**Summary:** Single-arm, open-label trial (N=29). The primary analysis was parametric: a one-sample (paired) t-test of mean percent change from baseline in LDL-C at Week 26 (LOCF) against zero. A rank test was **not** the operative primary analysis. The SAP named the Wilcoxon signed-rank test as a fallback "unless the data were not normally distributed"; the sponsor used the t-test, and the FDA statistical reviewer ran the signed-rank test alongside it as a robustness check (both p<0.0001).

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census presents the signed-rank test only as the FDA reviewer's own addition. The clinical review shows the sponsor's SAP itself pre-specified the Wilcoxon signed-rank test as a normality-contingent fallback [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=109) PDF p.109, medr.txt lines 5355-5357].
- The census says sample size "29 subjects enrolled ... to obtain at least 90% power" (this is the StatR wording). The SAP calculation gave 20 subjects needed, with up to 26 planned for safety [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=108) PDF p.108; [lancet_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC4587657/) Statistical analysis].
- The census lists doses "5, 10, 20, 40, and up to 80 mg/day"; StatR lists 5, 10, 20, 40, 60 mg/day with titration to 80 mg possible under strict criteria [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.6-7]. Minor.
- The census's "completer-only analysis (N=23 at Week 56)": 23 completed Week 26 and Week 56 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.8].

Page tags: `StatR p.N` is the printed "Page N of 18"; PDF page is N+1. MedR tags give the PDF page (form-feed count) and line numbers in `medr.txt`.

## Study UP1002/AEGR-733-005 (pivotal) and UP1001 (supportive, N=6)

### Design

- Single arm, no randomization, no control; N=29 enrolled and treated [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.8]. Supportive Phase 2 UP1001: single arm, N=6, 16 weeks, no formal SAP [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.8].
- Stratification: none.
- Open-label; individual dose escalation (5, 10, 20, 40, 60 mg/day); 6-week run-in; 26-week efficacy phase then 52-week safety phase [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.6-7].
- Primary population: ITT = received ≥1 dose and had a baseline and a post-baseline LDL-C value; N=29 (identical to the safety population) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.8; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=108) PDF p.108]. Also Week 26 completers (N=23), Week 56 completers, per-protocol [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=108) PDF p.108].

### Endpoint

- Percent change from baseline in directly measured LDL-C (mg/dL) at Week 26 at the individual maximum tolerated dose [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.7; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=108) PDF p.108].
- Baseline = average of Week -2 and Week 0 values [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.8].
- Formula for percent change: Not stated (conventional).
- Distribution: clinical reviewer checked a Q-Q plot of LDL-C percent change: "The normality assumption seems reasonable" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=135) PDF p.135, line 6603]. Triglycerides and Lp(a) are "skewed distributions" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=148) PDF p.148]; "The raw TRIG data in Study UP1002/AEGR-733-005 were not normally distributed" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.12 Table 4 note].

### Hypothesis and contrast

- H0: mean percent change from baseline in LDL-C at 26 weeks is 0; H1: not equal to 0 (two-sided) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=108) PDF p.108-109]. Alpha 0.05 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=108) PDF p.108].
- Within-patient (one-sample) contrast.
- Estimand: Not stated.

### Decision rule

- SAP: paired t-test "unless the data were not normally distributed, in which case the Wilcoxon Signed Rank test was to be used" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=109) PDF p.109].
- Trigger test, threshold, and who decides: Not stated.
- Outcome: the sponsor reported the paired t-test (CSR, label). The fallback was not invoked for LDL-C.

### Primary analysis method

- Sponsor: "paired t-test" on percent change (equivalently a one-sample t-test of the percent changes against 0) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.7; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2012/203858s000lbl.pdf) §14].
- FDA reviewer: "Wilcoxon signed-rank test" on the same percent-change values [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.7]. What is ranked: by definition the absolute values of the per-patient percent changes (inference; the review gives no detail). Exact vs asymptotic p-value, zero/tie handling: Not stated.
- No strata, no model.

### Effect estimate and interval

- Mean percent change with t-based 95% CI; median, min, max shown descriptively [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.10 Table 2]. No Hodges-Lehmann (pseudo-median) estimate or rank-based CI was reported.

### Missing data and intercurrent events

- LOCF for missing Week 26 values (pre-specified) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.8; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=109) PDF p.109]. 6 of 29 (21%) discontinued before Week 26 (3 withdrew consent, 2 adverse event, 1 non-compliance) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.8].
- Sensitivity: completers; an AUC approach was described in the SAP [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=109) PDF p.109]. The publication instead used a mixed linear model as its main analysis, with LOCF reported as "the statistical approach described in the original statistical analysis plan" [[lancet_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC4587657/)].

### Multiplicity

- Fixed sequence: LDL-C, then TC, Apo B, TRIG, each at 0.05 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.8; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=109) PDF p.109].

### Sample size assumptions

- Detect a 25% change, SD 30%, 15% dropout, 90% power, alpha 5%: 20 subjects needed [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=108) PDF p.108; [lancet_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC4587657/)].

### Software and code

- SAS 9.1 [[lancet_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC4587657/)]. No code.

### Results as presented

StatR Table 2 layout: one column per study; row blocks Baseline, Endpoint, % Change; within each: Mean ± SD (N), Median, Min/Max; for % Change also 95% CI, "Paired t-test p-value", "Signed-rank test p-value".

| LDL-C, ITT/LOCF [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.10 Table 2] | UP1002/AEGR-733-005 (Week 26) | UP1001 (Week 16) |
|---|---|---|
| Baseline mean ± SD (N) | 337.0 ± 113.8 (29) | 614.2 ± 105.8 (6) |
| Endpoint mean ± SD (N) | 191.3 ± 106.6 (29) | 303.0 ± 81.3 (6) |
| % change mean ± SD | -39.6 ± 32.0 | -50.9 ± 9.3 |
| 95% CI | (-51.8, -27.4) | (-60.7, -41.2) |
| Median | -49.6 | -52.3 |
| Min, max | -92.6, 20.5 | -62.4, -33.8 |
| Paired t-test p | < 0.0001 | < 0.0001 |
| Signed-rank test p | < 0.0001 | 0.0313 |

Key secondaries (pivotal, ITT/LOCF) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.12 Table 4]: TC mean -35.7 ± 29.4, median -40.0, t and signed-rank p < 0.0001; ApoB mean -39.3 ± 30.3, median -46.2, both p < 0.0001; TRIG median -44.5, paired t p = 0.0136, signed-rank p = 0.0023.

Label §14: "the mean and median percent changes in LDL-C from baseline were -40% (paired t- test p<0.001) and -50%, respectively".

Figures: mean percent change over time (StatR Figure 1); Q-Q plot (MedR Figure 27).

### Sensitivity and supportive analyses

- Completers (N=23): mean -50%, p<0.0001 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.10].
- Excluding two sites with unusually small SDs: -37% ± 34%, N=25, p<0.0001 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.10].
- Responders: >15% reduction 20/29, >25% 19/29, >50% 14/29 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) Table 3].
- Publication mixed model: -50% (95% CI -62, -39) [[lancet_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC4587657/)].

### FDA reviewer comments and reanalyses

- Statistical reviewer added the signed-rank test because it "can accommodate small sample sizes and non-normality" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.7]; results agreed with the t-test.
- For UP1001 (n=6, all six changes negative) the signed-rank p is 0.0313, the smallest attainable two-sided exact p for n=6 (1/32), whereas the t-test gives <0.0001. This shows the reviewer's signed-rank p-values are exact for small n.
- The reviewer could not use SDTM data (multiple measurements per visit window, no LOCF flag) and used the ISE ADaM dataset; small CSR/ISE discrepancies arose from the baseline date used for visit windows [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) p.6].

### Verbatim specification excerpts

> "A paired t-test was to be used to analyze change from baseline unless the data were not normally distributed, in which case the Wilcoxon Signed Rank test was to be used." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=109), PDF p.109]

> "For subjects with missing values at the efficacy endpoint, the LOCF method of imputation was pre-specified." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=109), PDF p.109]

> "For Study UP1002/AEGR-733-005, the primary efficacy endpoint was percent change from baseline in LDL-C at Week 26 and was analyzed using paired t-test by the sponsor. This reviewer also analyzed the data using Wilcoxon signed-rank test which can accommodate small sample sizes and non-normality." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf), p.7]

> "The baseline value was calculated as the average of Week -2 and Week 0 values." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf), p.8]

> "The normality assumption seems reasonable (Figure 27)." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf#page=135), PDF p.135]

### Implementation notes (inference)

- Inference: `PROC UNIVARIATE` on the percent-change variable gives both Student's t and the signed-rank statistic in one table ("Tests for Location"); SAS computes the signed-rank p exactly for n ≤ 20 and by a t approximation above that, which matches exact 0.0313 at n=6. In R: `t.test(pchg)` and `wilcox.test(pchg, exact = TRUE)` (exact only when there are no ties or zeros).
- "Paired t-test" on percent change is a one-sample test of the derived percent changes, not a paired test on raw baseline/endpoint values (those would test absolute change). The publication calls it a "one-sample t-test".
- The SAP's normality criterion is unspecified; a programmer must choose (Shapiro-Wilk on percent changes, Q-Q plot) and decide whether both tests are always reported.
- If a rank-based estimate were wanted, the natural companion is the Hodges-Lehmann pseudo-median (median of Walsh averages) with its distribution-free CI; not used here.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000StatR.pdf) — fetched (`statr.txt`; clinical statistical review is the first 18 pages, the rest is the carcinogenicity review)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203858Orig1s000MedR.pdf) — fetched (`medr.txt`)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2012/203858s000lbl.pdf) — fetched (`label.txt`)
- Lancet 2013 author manuscript, [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC4587657/) — fetched (`lancet_pub.txt`)
- ClinicalTrials.gov API [NCT00730236](https://clinicaltrials.gov/study/NCT00730236) — no protocol/SAP posted
