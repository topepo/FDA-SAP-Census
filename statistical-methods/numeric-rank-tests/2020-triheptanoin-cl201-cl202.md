# Triheptanoin (Dojolvi) — NDA 213687

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: rank test specified or run, but not the operative primary analysis.

**Source documents:** [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2020/213687s000lbl.pdf) · [SAP (NCT02214160, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) · [Protocol (NCT02214160, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/Prot_000.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC7891391/) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC6348052/)

Census entry: [`README.md`](../../README.md) line 29444. Inborn errors of metabolism (LC-FAOD). Ultragenyx. Approved 2020.

**Summary:** The rank test here is a within-patient Wilcoxon signed-rank test on annualized major-clinical-event (MCE) rates, pre- vs post-triheptanoin, specified in the UX007-CL202 SAP as the nonparametric alternative to a paired t-test "when the normality assumption is questionable". It was not the basis of approval and was not the primary analysis of the trial FDA relied on (Gillingham RCT, mixed model). In CL201 the applicant reported paired t-tests only (p=0.021). In CL202 the applicant reported a paired t-test for the CL201-rollover cohort (p=0.0319) and the signed-rank test for the triheptanoin-naive cohort (p=0.1072) and for all duration endpoints. FDA rejected the paired t-test for count data, treated negative binomial regression as primary for interpretation, and declined to present the CL202 comparisons.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census implies the "paired t-test (or Wilcoxon signed-rank test if normality was doubtful)" was the primary analysis for "CL201/CL202". For CL201, FDA and the publication describe only a paired t-test; the signed-rank alternative appears only in the CL202 SAP (v2.0, dated 21 Dec 2020, after approval) and CL202 publication. In the CL202 SAP the primary efficacy analysis of the annualized MCE rate is descriptive; the pre/post test is an additional cohort-specific comparison (§8.5.4, §8.5.5).
- The census says the 18-month paired comparison in the SAP is for the triheptanoin-naive cohort; correct. The SAP text for the CL201-rollover cohort (§8.5.5.1) describes summary statistics and box plots and does not name a test; the publication nonetheless reports a paired t-test for that cohort.
- No rank test was part of any FDA-accepted primary analysis; the FDA review's CL201 results pages are withheld in full ((b)(4)), so FDA-verified numbers for the paired analysis are not public.

## UX007-CL201 (NCT01886378) and UX007-CL202 (NCT02214160)

### Design

- CL201: open-label, single-arm; 29 enrolled; 4-week run-in on prior MCT, then triheptanoin for 78 weeks; comparator is each patient's own retrospective 78-week (18-month) pre-treatment period from chart review [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.34-36, p.122].
- CL202: open-label extension; 75 patients at NDA cutoff in 3 cohorts: CL201 rollover (n=24), IST/other prior triheptanoin (n=31), triheptanoin-naive (n=20) [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.50-51].
- No randomization, no blinding, no stratification.
- Analysis population: CL202 Full Analysis Set by cohort [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.34]. N used in each paired test: Not stated in the text consulted.

### Endpoint

- Annualized MCE rate (events/year): number of MCEs in the data-collection period divided by (days in the period / 365.25). MCE = rhabdomyolysis, hypoglycemia or cardiomyopathy event leading to hospitalization, ER/acute-care visit or emergency intervention [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.40; [vockley2019](https://pmc.ncbi.nlm.nih.gov/articles/PMC6348052/) line 72].
- Also annualized duration rate (days/year): total MCE days / (days in period / 365.25) [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.23].
- Periods (CL202 SAP): pre = Study Period 3, the 18 months (548 days) before first dose, or from birth if younger than 18 months; post (naive cohort) = first 18 months after initiation, or to termination if earlier [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.22, p.36-37].
- Variable type: a rate derived from small counts; many zeros (median hypoglycemia and cardiomyopathy rates were 0 in both periods); right-skewed with outliers (naive cohort post-period mean 7.72, SD 27.05 vs median 0.71) [[vockley2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC7891391/) lines 132-135]. FDA: "The paired t-test submitted by the Applicant assumes differences in annual event rates are normally distributed and this seems inappropriate" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.41].

### Hypothesis and contrast

- Within-patient pre vs post difference in annualized rate; two-sided, 0.05 [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.31]. CL201: "No formal hypothesis" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.122].
- Estimand: Not stated.

### Decision rule

- "The Wilcoxon signed rank test will be performed as a nonparametric alternative to the paired t-test when the normality assumption is questionable" [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.36].
- Trigger test, threshold, what it is applied to (the paired differences are the natural target), and who decides: Not stated. Publication: "When the normality assumption was questionable, median values were presented instead of means" [[vockley2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC7891391/) line 99].
- Outcome (CL202 publication): paired t-test for rollover-cohort event rates (MCE rate and hospitalization rate); signed-rank for naive-cohort event rates and for duration endpoints in both cohorts [[vockley2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC7891391/) lines 121-161].

### Primary analysis method

- Paired t-test on the per-patient difference (post − pre) in annualized rate; or
- Wilcoxon signed-rank test: ranks the absolute within-patient differences. Handling of zero differences and ties, exact vs asymptotic p-value, continuity correction: Not stated.
- No stratification, no covariates, no model.
- FDA-preferred model (negative binomial regression), added "Per the Agency's guidance" and not in the CL201 SAP [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.40-41]:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Period | categorical | 2 | pre-triheptanoin vs triheptanoin |
| Offset | log(time in period, years) | — | accounts for unequal follow-up |
| Within-patient correlation | REPEATED statement in PROC GENMOD (GEE) | — | "to account for the within patient comparison" [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.37] |

  Response: MCE count per patient-period. Tests: "Covariate effects were tested using the Wald and score statistics" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.41].

### Effect estimate and interval

- Paired t-test route: mean rates pre and post, percent reduction in means.
- Signed-rank route: medians pre and post, percent reduction in medians; no Hodges-Lehmann estimate or CI reported.
- NBR: rate ratio (post/pre) with two-sided 95% CI and p-value.

### Missing data and intercurrent events

- No imputation. Shorter observation is handled by annualization (and by the offset in NBR). Early terminators contribute rate up to termination [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.37].
- FDA: retrospective data quality poor (non-standard MCE definitions, missing pre-treatment diet data, concurrent diet optimization) [census entry; [intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.36-41].

### Multiplicity

- None. "statistical analyses are mostly descriptive analyses with statistical tests performed for select" [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.31].

### Sample size assumptions

- None; feasibility-based (CL201 target 30; CL202 by expected eligible patients) [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.37, p.40].

### Software and code

- "SAS software version 9.4 or higher" [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.30]; "SAS GENMOD procedure where the REPEATED statement is used" [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.37]. No code.

### Results as presented

- FDA review: CL201 efficacy result tables are redacted (4 pages withheld); CL202 comparative analyses "are not presented in this review" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.41]. Label: no MCE comparison.
- Applicant publications (not FDA-verified):

| Study / cohort | Endpoint | Pre | Post | Test | p |
|---|---|---|---|---|---|
| CL201 (78 wk) | Annualized MCE rate, mean | 1.69 | 0.88 | paired t-test | 0.021 |
| CL201 (78 wk) | Annualized MCE rate, median | 1.33 | 0.66 | — | — |
| CL201 (78 wk) | Annualized MCE duration, mean (days/yr) | 5.96 | 2.96 | paired t-test | 0.028 |
| CL202 rollover (n=24) | Annualized MCE rate, mean | 1.76 | 0.96 | paired t-test | 0.0319 |
| CL202 rollover | NBR rate ratio (95% CI) | | 0.54 (0.33, 0.90) | NBR | 0.0179 |
| CL202 rollover | Annualized MCE duration, median | 5.33 | 1.83 | signed-rank | 0.3002 |
| CL202 naive (n=20) | Annualized MCE rate, median | 2.33 | 0.71 | signed-rank | 0.1072 |
| CL202 naive | NBR rate ratio (95% CI) | | 0.66 (0.32, 1.37) | NBR | 0.2622 |
| CL202 naive | Annualized MCE duration, median | 10.0 | 2.0 | signed-rank | 0.1475 |

[[vockley2019](https://pmc.ncbi.nlm.nih.gov/articles/PMC6348052/) lines 86-88, 101; [vockley2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC7891391/) lines 119-152]

- Layout in the publications: bar charts of pre vs post mean or median rate with percent reduction and p-value; where the signed-rank test was used, medians replace means.

### Sensitivity and supportive analyses

- NBR (above). CL202 SAP also lists outlier removal and alternative MCE definitions (CK > 1000; glucose < 3.89 mmol) [[sap_cl202_decoded](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) p.37].
- FDA-requested Andersen-Gill model with percent change in daily caloric intake as time-varying covariate (CL201, 25 of 29 patients) [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.41].

### FDA reviewer comments and reanalyses

- NBR "is the more-appropriate approach to analyzing the primary outcome, which is a count ... the Agency views the results from this analysis as primary when interpreting results of this study. It should also be noted that while the choice of analysis did not impact statistical significance, the interpretation of the results is still a concern" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.41].
- CL202 rollover comparison is biased: 18-month pre period vs 36-month treatment period [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.41].
- CL202 naive comparison "is likely confounded by prior treatment" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) p.41].

### Verbatim specification excerpts

> "The 18 months pre-UX007 treatment period will be compared to the 18 months post-UX007 treatment period using the paired t-test. The Wilcoxon signed rank test will be performed as a nonparametric alternative to the paired t-test when the normality assumption is questionable." — [[sap_cl202_decoded.txt](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf), p.36; decoded from a font-shifted text layer]

> "The MCE annualized events rates (AER) and event durations (AED) from the retrospective (pre-triheptanoin period) and the triheptanoin period were compared by the Applicant using a paired t-test." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf), p.40]

> "(pre-triheptanoin versus triheptanoin) as a covariate and time in each period as an offset (log transformed time (years) on study). Covariate effects were tested using the Wald and score statistics." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf), p.41; the sentence begins "The NBR model includes period" at the foot of p.40]

> "The paired t-test submitted by the Applicant assumes differences in annual event rates are normally distributed and this seems inappropriate. As such, the Agency views the results from this analysis as primary when interpreting results of this study." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf), p.41]

> "When the normality assumption was questionable, median values were presented instead of means, and the Wilcoxon signed‐rank test (WSRT) was performed as a nonparametric alternative to the paired t ‐test." — [[vockley2021.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC7891391/), line 99]

> "The model can be performed using SAS GENMOD procedure where the REPEATED statement is used to account for the within patient comparison." — [[sap_cl202_decoded.txt](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf), p.37]

### Implementation notes (inference)

- Inference: the signed-rank test is `PROC UNIVARIATE` on the difference (post − pre annualized rate), reading "Signed Rank S"; SAS drops zero differences and uses an exact p-value for n ≤ 20 and a t approximation otherwise. R: `wilcox.test(post, pre, paired = TRUE)`. With many patients having zero events in both periods, the effective n shrinks; the zero-handling convention (Wilcoxon vs Pratt) matters and is not specified.
- The decision between t-test and signed-rank was made per endpoint and per cohort with no stated criterion, so the choice of test (and of mean vs median as the summary) was data-dependent. A similar plan should fix the test in advance; for rates from counts with unequal exposure, the FDA position here favors a count model with an offset over either paired test.
- Annualizing before testing discards exposure information: a patient with 3 months of follow-up gets the same weight as one with 18 months. The NBR/GEE offset approach keeps it.
- Inference (NBR): `PROC GENMOD; CLASS subj period; MODEL n_mce = period / DIST=NEGBIN LINK=LOG OFFSET=log_years; REPEATED SUBJECT=subj / TYPE=EXCH;` with two records per patient.
- The decoded SAP text loses parentheses and maps "ï" to "w" ("naïve" appears as "nawve"); quotes above were chosen from sentences without such characters.

### Sources consulted

- [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2020/213687Orig1s000IntegratedR.pdf) — fetched (intr.txt; CL201 results pages withheld as (b)(4))
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2020/213687s000lbl.pdf) — fetched (label.txt; no MCE analysis)
- [SAP (NCT02214160, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/SAP_001.pdf) — fetched (sap_cl202.txt raw; sap_cl202_decoded.txt after undoing a +29 code-point shift on affected pages)
- [Protocol (NCT02214160, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/60/NCT02214160/Prot_000.pdf) — fetched (prot_cl202.txt; not used)
- [NCT01886378](https://clinicaltrials.gov/study/NCT01886378) (CL201) — no documents posted; CL201 SAP not public
- Europe PMC [PMC7891391](https://pmc.ncbi.nlm.nih.gov/articles/PMC7891391/) (Vockley 2021, CL202) — fetched (vockley2021.xml / vockley2021.txt, one sentence per line)
- [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC6348052/) (Vockley 2019, CL201 78-week) — fetched (vockley2019.txt, text extracted from HTML, one sentence per line)
