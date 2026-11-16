# Cenobamate (Xcopri) — NDA 212839

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/212839s000lbl.pdf) · [Protocol (NCT01866111, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) · [SAP (NCT01866111, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/SAP_001.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC7357293/)

Census entry: [`README.md`](../../README.md) line 24902. Neurology (partial-onset seizures). SK Life Science. Approved 2019.

**Summary:** Two placebo-controlled adjunctive trials with primary endpoint percent change from baseline in 28-day seizure frequency. Study C013 (200 mg vs placebo): the reported primary p-value is from an unadjusted two-sample Wilcoxon rank-sum test; the SAP listed a sequence of four candidate models (ANCOVA, log ANCOVA, rank ANCOVA, rank ANCOVA on log data) chosen by diagnostics, and FDA's statistician called the primary analysis "ambiguous". Study C017 (100/200/400 mg vs placebo): rank ANCOVA, i.e., a linear model on the ranked percent change with ranked baseline seizure rate and treatment group as the only terms, with a fixed-sequence test of 200, then 400, then 100 mg vs placebo. Both trials were positive; results are shown as observed medians with the rank-test p-value and no effect estimate or CI.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says the "StatR" file is a nonclinical carcinogenicity review only. Wrong: the same PDF (94 pages) also contains the clinical efficacy statistical review by Min Zhang (PDF pp.32-50), which explains the C013 model-selection history.
- The census inconsistency resolved: for C013 the "rank ANCOVA with treatment, study region ... as factors" text is the protocol-level description quoted in the clinical review; the SAP (Amendment 3) had a model-selection cascade, and the analysis actually reported as primary was the Wilcoxon rank-sum test. For C017 rank ANCOVA is correct.
- The census says "ITT ... using LOCF" for both trials. LOCF is stated only for C013 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.44]. C017 used the mITT population and its final protocol states "Data will be used as collected"; LOCF appears only in superseded protocol text [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.18, p.127].
- The census says neither trial has protocol/SAP posted. C017 has a protocol (with amendment history) and an SAP posted, but the posted SAP is for the open-label extension only and does not cover the double-blind primary analysis.
- C013 N: 222 randomized (113/109); ITT 113/108 (the census's "~113/108" is right).

## Study YKP3089C013 (NCT01397968)

### Design

- Cenobamate target 200 mg/day vs placebo, 1:1; 222 randomized (113 / 109) [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.36, p.39].
- Randomization stratified by country (4: India, Korea, Poland, United States) [[chung2020](https://pmc.ncbi.nlm.nih.gov/articles/PMC7357293/) line 81-82; [statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.39].
- Double-blind; 8-week baseline, 12-week treatment (6-week titration + 6-week maintenance).
- Primary population "ITT": randomized, took at least one dose, at least one efficacy evaluation; N = 113 / 108 [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.37; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.47, p.49].

### Endpoint

- Percent change (reported as percent reduction) in seizure frequency per 28 days, treatment period vs baseline. Seizure types counted: simple partial with motor component, complex partial, secondarily generalized tonic-clonic [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.45].
- Frequency per period = (number of seizures / number of days in the period excluding days with "no data available") × 28. Baseline = 56 days before randomization. Treatment = Day 1 through last double-blind day excluding taper days. Uncountable seizure cluster = 1 seizure. Percent reduction = (baseline − double-blind) / baseline × 100 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.45].
- Distribution: publication says "Because of the nonparametric nature of the data" [[chung2020](https://pmc.ncbi.nlm.nih.gov/articles/PMC7357293/) line 108]. No further description.

### Hypothesis and contrast

- Two-sided, alpha 0.05; cenobamate vs placebo. Wilcoxon test footnote: "assessing if the median percent change ins seizure frequency for the treatment group is significantly different from the median percent change in seizure frequency for the placebo subjects" [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.49].
- Estimand: Not stated.

### Decision rule

- SAP (Amendment 3, 26 July 2013; not public; summarized by FDA) listed four models examined "sequentially: if a model can pass the diagnostics, it is considered the primary analysis, otherwise the next model in the sequence is examined" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.38]:
  1. ANCOVA on percent change with baseline 28-day seizure frequency, treatment, country, treatment-by-country.
  2. ANCOVA on change from baseline in log(28-day seizure frequency + 1/3).
  3. "a rank ANCOVA model fit to the observed data".
  4. "a rank ANCOVA model fit to the logarithmic transformed seizure rate (frequency) data".
- Further rule: "When the two rank models do not exhibit statistical significance on the baseline coefficient, a Wilcoxon rank-sum test was planned" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.38].
- Diagnostics criteria: not pre-specified ("Neither the diagnositics criteria of the analysis models nor the model details of the rank models were clearly pre-specified in the SAP") [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.38].
- Outcome: sponsor selected the Wilcoxon rank-sum test "based on the diagnostics of Model 1 and Model 2" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.38]. Who decided/when relative to unblinding: Not stated. The SAP was not reviewed by FDA before the NDA.

### Primary analysis method

- Test as reported: Wilcoxon rank-sum test on percent change in 28-day seizure frequency, two groups [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.49; [statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.41].
- Ranked: response only, across both arms. No stratification by country, no baseline covariate. Score type, ties, exact vs asymptotic, continuity correction: Not stated.
- Parametric/alternative models it displaced (Model 1 terms as given by FDA):

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | |
| Country | categorical | 4 | stratification factor |
| Treatment × country | categorical | 8 cells | "not to be interpreted statistically but to serve as a term for fitting the statistical model" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.38] |
| Baseline 28-day seizure frequency | continuous | — | |

- Model details of the rank ANCOVAs (Models 3-4): Not stated ("not clearly pre-specified").

### Effect estimate and interval

- None. Observed medians per arm only; no Hodges-Lehmann estimate or CI in the FDA documents or label.

### Missing data and intercurrent events

- "Last-observation-carried-forward (LOCF) method will be used to impute for missing data for subjects who withdraw from the study early" [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.44]. In practice the rate is computed over observed diary days, so early withdrawals contribute their observed-period rate.
- 90.3% / 90.8% completed double-blind [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.47].

### Multiplicity

- Single primary comparison. An unblinded interim look (first 88 randomized) was done for planning C017, with no alpha adjustment and no pre-specified firewall [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.38, p.40].

### Sample size assumptions

- 100 per group; detect a 16-point difference in median percent reduction, SD 40%, two-sided 0.05, 80% power "with a two-sample Wilcoxon rank sum test used and assumed as the primary analysis" [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.45].

### Software and code

- Not stated for C013. No code in sources.

### Results as presented

- FDA Table 5 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.49]: columns cenobamate (n=113), placebo (n=108); rows baseline median, endpoint median, percent change from baseline (median), p-value; footnote naming the Wilcoxon rank-sum test.
- Label Table 6: N, median percent change from baseline, p-value [[label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/212839s000lbl.pdf) p.20].

| | Cenobamate 200 mg (n=113) | Placebo (n=108) |
|---|---|---|
| Baseline median (seizures/28 d) | 7.5 | 5.5 |
| Endpoint median | 3.8 | 5.0 |
| Median percent reduction | 55.6 | 21.5 |
| p (Wilcoxon rank-sum) | <0.0001 | |

- Figure in label: bar chart of proportion of patients by category of percent reduction [[label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/212839s000lbl.pdf) p.20].

### Sensitivity and supportive analyses

- Models 1-4 were reported to FDA in a 27 March 2019 information-request response; all p-values were nominally below 0.05 [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.41].

### FDA reviewer comments and reanalyses

- Reviewer confirmed the applicant's results from the datasets [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.36].
- "the ambiguity in the primary analysis adds complexity to the evaluation of the efficacy evidence in Study 13" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.49]. FDA describes the C013 p-value as "nominally smaller than 0.05".

## Study YKP3089C017 (NCT01866111)

### Design

- Placebo, cenobamate 100, 200, 400 mg/day; 1:1:1:1; 437 randomized: 108 / 108 / 110 / 111 per the statistical review [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.36, p.43] (the clinical review disposition table shows 106 / 108 / 110 / 112 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.55]).
- Randomization stratification factors: Not stated in the documents consulted.
- Double-blind; 8-week baseline, 18-week treatment (6-week titration + 12-week maintenance).
- Primary population mITT: randomized, at least 1 dose, any post-baseline seizure data; N = 106 / 108 / 109 / 111 [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.128; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.58].

### Endpoint

- Percent change from baseline in 28-day seizure frequency over the whole double-blind treatment period (US/rest-of-world primary; the EU-region primary was the 50% responder rate in the maintenance phase) [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.83].
- B = (seizures in baseline / days with non-missing seizure data) × 28; D likewise for the double-blind period; percent change = 100 × (D − B)/B. Simple partial seizures without motor/visual component not counted [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.83]. B cannot be 0 for the primary analysis because of inclusion criteria [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.53].
- Distribution: heavily right-skewed; e.g., placebo baseline mean 25.8 (SD 76.81), median 8.4, max 759; percent change range −100 to about +200 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.58]. Dataset values were rounded to integer percent (creating extra ties), which FDA corrected [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.37].

### Hypothesis and contrast

- Each dose vs placebo, two-sided 0.05 [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.128-129].
- "effect sizes are not estimated and tested directly, since testing is made on the rank of the primary efficacy value" [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.129].

### Decision rule

- None in the final protocol. The original protocol had one: fit the rank ANCOVA; if the ranked-baseline coefficient is significant, the rank ANCOVA is primary, otherwise the Wilcoxon rank-sum test is primary. This was removed by amendment [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.20-21].

### Primary analysis method

- "An analysis of covariance (ANCOVA) model will be fit to the ranked values of the primary efficacy endpoint" [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.129].
- Ranked: both the response (percent change) and the covariate (baseline seizure rate). Ranking scope (all four arms pooled vs each pairwise subset): Not stated. Ties: "handled using the default option in SAS". Standardization of ranks: Not stated.
- Stratification: none.
- Model terms:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Randomized treatment group | categorical | 4 (or 2 if fitted pairwise; Not stated) | |
| Ranked baseline seizure rate | ranked (entered as continuous) | — | rank of B |

- Response: rank of percent change. Test statistic: the ANCOVA test of treatment (F/t on ranks); reference distribution Not stated.
- No parametric companion model in the final protocol.

### Effect estimate and interval

- None. Summary tables of the actual (unranked) endpoint: n, mean (SD), median, min/max.

### Missing data and intercurrent events

- No imputation: rates use days with non-missing diary data, which "is identical to a definition in which days with missing data are assumed to have the same seizure rate as days with non-missing data" [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.127]. Dropouts contribute their observed double-blind rate.
- Completed: 93 / 95 / 90 / 82 of 106 / 108 / 110 / 112 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.55].

### Multiplicity

- Fixed-sequence step-down: 200 mg vs placebo, then 400 mg, then 100 mg, each at two-sided 0.05; stop at first non-significant [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.128-129]. Original protocol order was 400, 200, 100 [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.21].

### Sample size assumptions

- 100 per group; 80% power for a 16-point difference in median percent reduction, SD 40%, two-sided 0.05 [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.126].

### Software and code

- "SAS® version 9.2 or later" [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.126]. No code.

### Results as presented

- FDA Table 11 / statistical review Table 8 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) p.58; [statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.45]: per arm, "Actual" and "% Change From Baseline" columns; rows Baseline (n, mean (SD), median, min/max), Endpoint (same), P value; footnote "p value is based on an analysis of covariance model with terms for ranked baseline seizure rate and randomized treatment group".

| | Placebo | 100 mg | 200 mg | 400 mg |
|---|---|---|---|---|
| n (mITT) | 106 | 108 | 109 | 111 |
| Baseline median (seizures/28 d) | 8.4 | 9.5 | 11.0 | 9.0 |
| Endpoint median | 6.8 | 5.8 | 5.8 | 3.8 |
| Mean % change (SD) | −17 (50.26) | −33.6 (45.68) | −41.7 (50.59) | −48.3 (46.65) |
| Median % change | −24.3 | −36.3 | −55.2 | −55.3 |
| p vs placebo (rank ANCOVA) | | 0.006 | <0.001 | <0.001 |

- Label Table 6: N, median percent change, p-value, "Statistically significant compared to placebo" [[label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/212839s000lbl.pdf) p.20]. Figure: proportion of patients by percent-reduction category during maintenance.

### Sensitivity and supportive analyses

- Not stated in the FDA reviews. The original protocol planned cumulative distribution functions by dose as a descriptive summary [[prot_c017](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) p.20].

### FDA reviewer comments and reanalyses

- eCRF could not store daily counts >99 (three diary records corrected), and the primary endpoint was rounded to integers in the dataset; FDA's tables use corrected values [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) p.36-37].

### Verbatim specification excerpts

> "An analysis of covariance (ANCOVA) model will be fit to the ranked values of the primary efficacy endpoint. The ANCOVA will have terms for ranked baseline seizure rate and randomized treatment group. Ties will be handled using the default option in SAS" — [[prot_c017.txt](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf), p.129]

> "It should be noted that the primary efficacy analysis uses a non-parametric approach. Because of this, effect sizes are not estimated and tested directly, since testing is made on the rank of the primary efficacy value. However, summary tables for the actual (not the ranked) primary efficacy endpoint will be presented." — [[prot_c017.txt](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf), p.129]

> "the final ranked analysis will be considered the primary analysis." — [prot_c017.txt, p.20, superseded "Old Text" column of the amendment table; the condition, on the preceding lines of the same column, is that the coefficient on the ranked baseline variable is statistically significant]

> "Wilcoxon rank-sum test will serve as the primary analysis." — [prot_c017.txt, p.20, same column; applies if the baseline coefficient is not statistically significant. The two-column layout interleaves old and amended text, so only single-line fragments can be quoted exactly]

> "The SAP planned to examine the robustness of the model relative to influential data points and normality assumption of Models 1, 2, 3, and 4 sequentially: if a model can pass the diagnostics, it is considered the primary analysis, otherwise the next model in the sequence is examined." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf), p.38]

> "The Applicant states that the Wilcoxon rank-sum test was selected based on the diagnostics of Model 1 and Model 2 and that it is the most appropriate method for the primary analysis." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf), p.38]

> "Analysis will be conducted using rank ANCOVA with treatment, study region (such as site or country) as factors, and the baseline seizure frequency as a covariate." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf), p.44, C013 protocol-level description]

> "Because of the nonparametric nature of the data, the percent change in seizure frequency from baseline was analyzed with a Wilcoxon rank-sum test." — [[chung2020.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC7357293/), line 108]

### Implementation notes (inference)

- Inference (C017): this is the Conover-Iman rank-transform ANCOVA, not the Quade/Koch residual-based rank ANCOVA. In SAS: `PROC RANK` (default `TIES=MEAN`, i.e., midranks) on percent change and on baseline, then `PROC GLM; CLASS trt; MODEL r_pchg = r_base trt;` with `LSMEANS trt / PDIFF` or contrasts for each dose vs placebo. R: `lm(rank(pchg) ~ rank(base) + trt)`.
- Open choice 1: rank over all four arms and fit one model (pooled error, 3 contrasts) or rank and fit separately for each active-vs-placebo pair. The table footnote ("randomized treatment group") and the single "model" wording suggest one four-arm model, but this is not stated.
- Open choice 2: the F-test on ranks is only approximately valid; no permutation reference was specified.
- For C013, the reported analysis is `PROC NPAR1WAY WILCOXON` / `wilcox.test`; exact vs normal approximation is not stated. It ignores country although randomization was stratified by country; a van Elteren test would have respected the design.
- Neither trial specified an estimator. A similar analysis today would add a Hodges-Lehmann shift (percentage points) with CI.
- Percent change is bounded below at −100 and unbounded above; ranks avoid the influence of the upper tail. Sign convention differs between the trials (C013 reports reduction as positive; C017 reports change as negative).

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000StatR.pdf) — fetched (statr.txt; clinical statistical review at PDF pp.32-50)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000MedR.pdf) — fetched (medr.txt)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/212839Orig1s000SumR.pdf) — fetched (sumr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/212839s000lbl.pdf) — fetched (label.txt)
- [Protocol (NCT01866111, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/Prot_000.pdf) — fetched (prot_c017.txt; protocol through Amendment 3)
- [SAP (NCT01866111, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/11/NCT01866111/SAP_001.pdf) — fetched (sap_c017.txt; open-label-extension SAP only, scanned/OCR; not relevant to the primary analysis)
- [NCT01397968](https://clinicaltrials.gov/study/NCT01397968) (C013) — no documents posted; C013 SAP not public
- Europe PMC [PMC7357293](https://pmc.ncbi.nlm.nih.gov/articles/PMC7357293/) (Chung 2020, Neurology) — fetched (chung2020.xml / chung2020.txt, one sentence per line)
- Krauss 2020 Lancet Neurol — not open access; not fetched
