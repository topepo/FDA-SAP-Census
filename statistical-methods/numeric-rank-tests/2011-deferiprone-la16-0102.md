# Deferiprone (Ferriprox) — NDA 21825

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: parametric primary with a rank-based fallback that was invoked.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2011/021825lbl.pdf)

Census entry: [`README.md`](../../README.md) line 39775. Hematology (transfusional iron overload, thalassemia). ApoPharma. Approved 2011 (accelerated).

**Summary:** In the supportive randomized trial LA16-0102 (deferiprone vs deferoxamine, open label), the protocol-defined primary analysis of 12-month change in cardiac MRI T2* was a two-sample t-test (unequal variance), which was not significant (p=0.0993). The sponsor then reported a post hoc t-test on log-transformed T2* (p=0.0228). The FDA statistical reviewer rejected both on normality grounds (Shapiro-Wilk p<0.001) and ran three unstratified two-sample non-parametric tests on the raw change scores: median test (p=0.0048), Wilcoxon rank-sum (p=0.0124) and Kolmogorov-Smirnov (asymptotic p=0.0168). No shift estimate or confidence interval accompanied the rank tests.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says the three tests (Wilcoxon rank-sum, median test, Kolmogorov-Smirnov) were "prospectively planned as a fallback". The sources say only that unspecified "nonparametric tests" were planned; the Division Director review states "the specific statistical tests were not identified" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf#page=139) PDF p.139]. The three tests were the FDA reviewer's choice.
- The FDA documents contradict each other on whether there was a pre-specified fallback at all. The primary statistical review says both that alternative methods "were not clearly outlined in the prospective statistical analysis plan" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=64) PDF p.64, p.72] and (next page) that non-parametric methods "were prospectively planned" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=65) PDF p.65]; its own section heading calls the non-parametric analysis "Post-hoc" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=76) PDF p.76]. The secondary statistical review says they were "prospectively planned" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=54) PDF p.54]. The clinical reviewer says "The SAP appears to post-date the completion of the trial" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf#page=180) PDF p.180].
- The census gives the t-test p-value as 0.093; the results tables give 0.0993 (unequal variance) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=62) PDF p.62, p.73]; 0.093 appears only in running text [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=54) PDF p.54, p.64].
- No formal decision rule (trigger test and threshold) is documented. The Shapiro-Wilk test was FDA's, not a stated SAP trigger.

Page tags are PDF page indices of the downloaded file (the StatR PDF bundles several reviews, each with its own internal numbering).

## LA16-0102

### Design

- Two arms, 1:1, deferiprone vs deferoxamine (active control); 61 randomized and dosed: 29 deferiprone, 32 deferoxamine [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=82) PDF p.82-83].
- Randomization stratified by baseline MRI T2* (2 levels: 8 to 14 ms, 14 to 20 ms). Lower stratum 16 per arm; upper stratum 13 deferiprone, 16 deferoxamine [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=69) PDF p.69].
- Open label, multicenter (4 sites), 12 months [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=54) PDF p.54, p.69].
- Primary analysis population: ITT, defined as subjects with at least one dose and "at least two measurements of which one measurement was made after baseline"; n=29 deferiprone, n=31 deferoxamine (one deferoxamine subject had baseline only) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=72) PDF p.72, p.62]. PP = completers, 27 and 29 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=83) PDF p.83].

### Endpoint

- Change in cardiac MRI T2* (milliseconds) from baseline to Month 12 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=72) PDF p.72-73]. Measured at baseline, 6 and 12 months.
- Derivation: Month 12 minus baseline; LOCF for a missing visit in the ITT set [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=72) PDF p.72].
- Variable type: continuous. FDA: "These data are highly skewed and not normally distributed" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=73) PDF p.73]. Histograms of baseline, Month 12 and change by arm were shown [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=74) PDF p.74].

### Hypothesis and contrast

- Superiority of deferiprone over deferoxamine in mean change in T2* at Month 12 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=54) PDF p.54].
- Alpha: "5% level of significance" (statistical review) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=72) PDF p.72]; the clinical review states alpha "=0.025 (1-sided)" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf#page=179) PDF p.179-180].
- Estimand / intercurrent events: Not stated.

### Decision rule (only if the method was contingent)

- SAP rule as reported by FDA: t-test "if the data were normally distributed", otherwise "nonparametric tests", with no specific tests named [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf#page=139) PDF p.139]. Trigger test and threshold: Not stated.
- What FDA did: Shapiro-Wilk on the change scores (also on baseline and Month 12 values, and on the log-scale change), p<0.001 each [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=73) PDF p.73-75]. Whether the test was run per arm or on pooled data, or on residuals: Not stated (each figure shows two per-arm histograms with one p-value line).
- Outcome: normality rejected. The sponsor did not use the non-parametric fallback; it used a post hoc log transform. The FDA reviewer invoked the non-parametric route [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=54) PDF p.54-55].

### Primary analysis method

- Protocol-defined: "analysis of variance (t-test)"; run as a two-sample t-test assuming unequal variances on the raw change scores [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=73) PDF p.73, p.62]. No covariates; the randomization stratum (baseline T2*) was not in the model.

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | only term; unequal-variance t-test |

- Sponsor post hoc: two-sample t-test on change in Log(MRI T2*) (log Month 12 minus log baseline) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=75) PDF p.75]. Log base: Not stated.
- FDA non-parametric tests on raw change scores, two groups, unstratified, named in the source as "Wilcoxon/Kruskal-Wallis Rank Sum tests", "Median Test (Number of Points Above Median)" and "Kolmogorov-Smirnov test" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=62) PDF p.62].
- What is ranked: the change from baseline at 12 months, pooled over both arms. Score type and tie handling: Not stated. Stratification: none.
- Reference distribution: Kolmogorov-Smirnov p-value is stated to be asymptotic [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=62) PDF p.62]. For Wilcoxon and the median test (exact vs normal/chi-square approximation, continuity correction): Not stated.

### Effect estimate and interval

- Parametric: arm means with SD and per-arm 95% CI; difference in means 1.6 ms [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=73) PDF p.73]. CI for the difference: Not stated.
- Non-parametric: per-arm median, 10th/90th percentiles and range only. Hodges-Lehmann estimate or CI: Not stated (none given).

### Missing data and intercurrent events

- LOCF within the ITT set [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=72) PDF p.72]. 5 of 61 discontinued (2 deferiprone, 3 deferoxamine) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=69) PDF p.69]; one deferoxamine subject with baseline only was excluded from ITT [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=62) PDF p.62].
- Deaths: Not stated for the efficacy analysis.

### Multiplicity

- Single primary endpoint. Secondary endpoints: "no protocol specified α-allocation" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=77) PDF p.77]. No adjustment across the three FDA non-parametric tests.

### Sample size assumptions

- 60 subjects (30 per arm), two-sample t-test, 5% significance, 80% power, true mean difference 2.3 ms, SD 2.5 ms, up to 20% dropout [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=72) PDF p.72].

### Software and code

- Not stated. No code in the sources.

### Results as presented

- FDA summary table (Table 1 / Table 24) has three blocks in one table: "Analysis - Protocol & SAP identified" (mean ± SD, per-arm 95% CI, t-test p-value), "Sponsor's post-hoc analysis-based on log transformation" (mean log difference per arm, nominal p), and "Analysis– Non-parametric tests" (median, 10th/90th percentile, range, then one p-value row per test) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=62) PDF p.62].

| Statistic (change in T2*, ms, Month 12) | Deferiprone (n=29) | Deferoxamine (n=31) | p-value |
|---|---|---|---|
| Mean ± SD | 3.9 ± 3.6 | 2.3 ± 4.1 | 0.0993 (t-test, unequal variance) |
| 95% CI of mean | (2.6, 5.3) | (0.8, 3.9) | |
| Mean change in log T2* | 0.237 | 0.123 | 0.0228 (t-test, post hoc) |
| Median | 3.7 | 1.0 | |
| 10th, 90th percentile | (-0.1, 8.7) | (-1.2, 6.8) | |
| Min, max (as printed) | (-2.0, 12.7) | (-0.1, 8.7) | |
| Median test | | | 0.0048 |
| Wilcoxon rank-sum | | | 0.0124 |
| Kolmogorov-Smirnov (asymptotic) | | | 0.0168 |

Source: [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=62) PDF p.62, p.73, p.75, p.76]. The deferoxamine min/max as printed duplicates the deferiprone percentiles and conflicts with subgroup tables showing a deferoxamine maximum of 17.6 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=90) PDF p.90]; it looks like a table error in the review.

- Figures: per-arm histograms of baseline, Month 12, change, and log change; empirical cumulative distribution functions of the change by arm (Figure 5) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=74) PDF p.74-76].
- Label: no between-arm test from LA16-0102; only a within-group description of T2* change [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2011/021825lbl.pdf) line 425].

### Sensitivity and supportive analyses

- Per-protocol (27 vs 29): "Applicable Nonparametric analyses show difference in terms of MRI T2* for the PP"; numbers not given [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=83) PDF p.83].
- Month 6 change (secondary): t-test p=0.1261; log t-test p=0.0404; median test 0.0729; Wilcoxon 0.0482; KS 0.0866 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=78) PDF p.78].
- Subgroups (same three tests, nominal): by sex, splenectomy, hepatitis C, baseline ferritin [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=90) PDF p.90-91].

### FDA reviewer comments and reanalyses

- The t-test "lacked power" under skewness; the log-scale data were also non-normal (Shapiro-Wilk p<0.001), so the log analysis has "the same limitations" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=54) PDF p.54-55].
- Clinical reviewer: the SAP appears to post-date trial completion [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf#page=180) PDF p.180].
- FDA did not accept T2* as an established surrogate; the trial was treated as supportive only [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=65) PDF p.65].

### Verbatim specification excerpts

> "Non-parametric methods (that do not assume normality) were prospectively planned as alternative analysis methods in the case of violation of normality assumption by the company in their statistical analysis plan (SAP)." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=54), PDF p.54]

> "Also, in case of assumption violation, alternative analysis methods were not clearly outlined in the prospective statistical analysis plan." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=64), PDF p.64]

> "This was to be analyzed by the analysis of variance (t-test) to determine the statistical significance of the difference between the two treatments." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=73), PDF p.73]

> "Since the data are non-normal, non-parametric statistics (Wilcoxon/Kruskal-Wallis Rank Sum tests and the Median Test (Number of Points Above Median), Kolmogorov-Smirnov test) provide valid analyses. The asymptotic p-value for the Kolmogorov-Smirnov test is 0.0168 (12 months)." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=62), PDF p.62]

> "The primary reviewer at the FDA followed the company’s SAP and used non-parametric methods to evaluate these data which were prospectively planned in the case of violation of normality." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf#page=55), PDF p.55]

> "The analytical plan has stated that "nonparametric tests" were to be performed in this situation, although the specific statistical tests were not identified." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf#page=139), PDF p.139]

> "The SAP appears to post-date the completion of the trial rather than having been pre-specified in the protocol" — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf#page=180), PDF p.180]

### Implementation notes (inference)

- Inference: the test labels "Wilcoxon/Kruskal-Wallis Rank Sum tests" and "Median Test (Number of Points Above Median)" match the JMP "Fit Y by X" non-parametric report headings, which suggests the reviewer used JMP; in that platform the two-group Wilcoxon p-value is a normal approximation (with continuity correction) and the median test is a normal-approximation test on the count above the pooled median. SAS equivalent: `PROC NPAR1WAY WILCOXON MEDIAN EDF` with `CLASS treatment; VAR change;`. R: `wilcox.test()`, a median (Brown-Mood) test via a 2x2 table or `coin::median_test()`, and `ks.test()`.
- A programmer must decide: exact vs asymptotic p-values (n=29/31, ties likely with one-decimal data); how to handle ties in KS; whether to stratify by the randomization stratum (the source did not); whether to add a Hodges-Lehmann estimate (the source did not).
- If writing a contingent rule, the source gives no usable template: specify the normality test, what it is applied to (e.g. residuals), the threshold, and the single fallback test in advance.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000StatR.pdf) — fetched (statr.txt)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/021825Orig1s000MedR.pdf) — fetched (medr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2011/021825lbl.pdf) — fetched (label.txt)
- Pennell et al., Blood 2006 (PMID 16352815) — failed (not in Europe PMC full text; publisher page blocked)
- Sponsor protocol / SAP — not public; no ClinicalTrials.gov record
