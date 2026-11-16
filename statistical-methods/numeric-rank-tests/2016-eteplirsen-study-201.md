# Eteplirsen (Exondys 51) — NDA 206488

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2016/206488lbl.pdf)

Census entry: [`README.md`](../../README.md) line 28344. Neurology (Duchenne muscular dystrophy). Sarepta. Accelerated approval 2016.

**Summary:** Study 201 (N=12; 4 per arm) compared eteplirsen 50 mg/kg (Week 12 biopsy) and 30 mg/kg (Week 24 biopsy) with a combined placebo group on change from baseline in percent dystrophin-positive fibers (IHC). The SAP-specified primary analysis was "ANCOVA for ranked data" with treatment (3 levels) as a fixed effect and baseline value and time since DMD diagnosis as covariates. Nominal p-values: 0.002 (30 mg/kg) and 0.958 (50 mg/kg); FDA treated all as exploratory. The SAP is not public, so the ranking details are not documented.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- None on the method: "ANCOVA on ranked data ... with baseline value and time since DMD diagnosis as covariates" is confirmed [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.9, p.11].
- The census does not note that the rank ANCOVA was the pre-specified primary method for the biomarker endpoint (not a fallback), while for the clinical endpoints (6MWT etc.) it was a fallback to the MMRM "If there was strong evidence suggesting that data for any endpoint deviated from normal distribution" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.9].
- The census does not note the analysis-method history: Protocol Amendment 6 (4 Nov 2011) "Modified statistical method to Wilcoxon rank-sum test"; the SAP of 20 Feb 2012 then specified ANCOVA for ranked data [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.227; [statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.6, p.9].

## Study 4658-US-201 (NCT01396239)

### Design

- 12 boys randomized: eteplirsen 50 mg/kg (Group 1, n=4), 30 mg/kg (Group 2, n=4), placebo then 50 mg/kg (Group 3a, n=2), placebo then 30 mg/kg (Group 3b, n=2). Placebo groups 3a and 3b are combined (n=4) for all testing [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.6-8].
- Randomization stratification: Not stated.
- Single-center, double-blind, placebo-controlled for 24 weeks; study completed in 7 months; SAP dated 20 February 2012, nine days before study completion (29 February 2012) [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.6].
- Analysis population: Full Analysis Set, all randomized who received any study drug; N = 4 / 4 / 4 [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.8].

### Endpoint

- Change from baseline in percent of dystrophin-positive fibers in biceps muscle biopsy by IHC (MANDYS106 antibody), expressed as a percentage of total fibers counted [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.8; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.234].
- Timepoint differs by arm: on-treatment biopsy at Week 12 for the 50 mg/kg group and 2 placebo patients (3a); at Week 24 for the 30 mg/kg group and 2 placebo patients (3b). The combined placebo group therefore mixes Week 12 and Week 24 biopsies [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.7-8; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.234].
- Variable type: bounded percentage (0-100); n=4 per group. No distributional remarks for this endpoint. For 6MWT the sponsor said "the assumptions of normality were violated" [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.257].

### Hypothesis and contrast

- Two-sided alpha 0.05, each dose vs combined placebo: 50 mg/kg (Week 12) vs placebo; 30 mg/kg (Week 24) vs placebo. A combined-eteplirsen vs placebo comparison was also reported [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.9; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.233].
- Estimand: Not stated.

### Primary analysis method

- Test name: "ANCOVA for ranked data with Baseline values and duration of DMD as covariates" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.9]; table footnote: "Based on ANCOVA model for ranked data with treatment (placebo, 30 mg/kg, 50 mg/kg) as a fixed effect and baseline value and time since DMD diagnosis as covariates" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.11].
- What is ranked: Not stated beyond "ranked data" (whether only the change from baseline is ranked or also the covariates; whether ranks are over all 12 patients). Tie handling: Not stated. Score type: Not stated.
- Stratification: none.
- Model terms:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical (fixed) | 3 | placebo (3a+3b combined), 30 mg/kg, 50 mg/kg |
| Baseline percent dystrophin-positive fibers | continuous (ranked or raw: Not stated) | — | |
| Time since DMD diagnosis (months) | continuous (ranked or raw: Not stated) | — | range 18-112 months |

- With N=12 the model has 7 residual degrees of freedom. Test statistic/reference distribution: Not stated (model-based p-value).
- Parametric companion for this endpoint: none stated. For clinical endpoints the primary was an MMRM (treatment, time, treatment-by-time fixed; subject nested within treatment random; baseline value and time since DMD diagnosis covariates; AR(1)) with rank ANCOVA as the non-normality fallback [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.9].

### Effect estimate and interval

- The clinical review quotes "treatment effect" estimates with 95% CI from the sponsor's rank ANCOVA output: 50 mg/kg vs placebo "treatment effect = -0.1%, (P = 0.958; 95%CI -3.6, 3.5)"; combined eteplirsen vs placebo "treatment effect = 3.6%, (P = 0.143; 95%CI -1.5, 8.8)" [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.233]. The scale of these estimates (ranks vs percent) is not stated; see implementation notes.
- FDA's table gives only descriptive statistics and the p-value [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.11].

### Missing data and intercurrent events

- "No imputation of values for missing data was performed" [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.224]. All 12 patients completed; no missing primary data [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.9].

### Multiplicity

- None. "No multiplicity adjustment was specified for testing multiple doses and/or multiple endpoints, so all p-values are exploratory only" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.9].

### Sample size assumptions

- None. "Study 201 was not designed as a clinical efficacy study and not powered for efficacy analysis" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.6].

### Software and code

- SAS (the submission included "SAS codes used to generate the derived datasets and tables") [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.6]. No code reproduced in the reviews.

### Results as presented

- FDA statistical review Table 3 [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.11]: columns placebo, 30 mg/kg, 50 mg/kg; row blocks Baseline, On-Treatment, Change from Baseline, each with mean, median, SD (SE), min/max; final row p-value with the model footnote. The label does not present these Study 201 IHC results.

| | Placebo (n=4) | 30 mg/kg (n=4) | 50 mg/kg (n=4) |
|---|---|---|---|
| Baseline mean (median) | 15.64 (15.58) | 18.19 (17.80) | 11.00 (11.51) |
| On-treatment mean (median) | 11.59 (9.44) | 41.14 (38.77) | 11.79 (11.81) |
| Change mean (median) | −4.05 (−6.13) | 22.95 (23.46) | 0.79 (2.52) |
| Change SD (SE) | 5.834 (2.917) | 5.792 (2.896) | 7.099 (3.549) |
| Change min, max | −8.5, 4.5 | 15.9, 29.0 | −9.3, 7.4 |
| p vs placebo (rank ANCOVA) | | 0.002 | 0.958 |

### Sensitivity and supportive analyses

- None for the primary endpoint in the reviews.
- 6MWT (key clinical secondary), same rank ANCOVA [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.257, sponsor Table 14]: model-adjusted change (on ranks) placebo 6.4, 30 mg 4.3, 50 mg 8.8; treatment effect 30 mg −2.2 (95% CI −8.2, 3.9), p=0.425; 50 mg 2.3 (−3.5, 8.2), p=0.378. MMRM on raw 6MWT: 30 mg −102.4 m (−192.2, −12.5), p=0.026 favoring placebo; 50 mg 25.6 m, p=0.563 [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.12].

### FDA reviewer comments and reanalyses

- Statistical reviewer reproduced the results ("confirmed by FDA reviewer") [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.11].
- "The nominal p value (0.002) for the comparison between eteplirsen 30 mg/kg group and the placebo group can only be considered exploratory, as there was no plan to control the type 1 error due to multiple comparisons, and the other comparison between 50mg/kg and placebo in Study 201 was negative" [[statr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) p.10].
- The clinical reviewer considered the IHC data "largely uninterpretable because of bias" and found baseline values that differed from the sponsor's [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) p.233-234].

### Verbatim specification excerpts

> "The primary efficacy endpoint, the change from baseline in percent of dystrophin positive fibers, was analyzed by comparing the 50 mg/kg eteplirsen treatment group at Week 12 to the combined placebo treatment group, and the 30 mg/kg eteplirsen treatment group at Week 24 to the combined placebo treatment group, using the ANCOVA for ranked data with Baseline values and duration of DMD as covariates." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf), p.9]

> "If there was strong evidence suggesting that data for any endpoint deviated from normal distribution, then ANCOVA for ranked data was to be utilized." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf), p.9]

> "Based on ANCOVA model for ranked data with treatment (placebo, 30 mg/kg, 50 mg/kg) as a fixed effect and baseline value and time since DMD diagnosis as covariates." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf), p.11]

> "Modified statistical method to Wilcoxon rank-sum test, because it was more appropriate for the sample size of this study." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf), p.227, protocol amendment of 04 Nov 2011]

> "The Applicant performed an ANCOVA of ranked data to compare the 2 eteplirsen treatment groups to placebo because the assumptions of normality were violated." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf), p.257, 6MWT]

### Implementation notes (inference)

- Inference: the 6MWT rank-ANCOVA output in the clinical review (adjusted means 6.4, 4.3, 8.8 for three groups of 4; these average 6.5, the mean rank of 1..12) shows that the response was ranked over all 12 patients and one three-arm model was fitted, with "treatment effect" and CI reported on the rank scale. The same structure very likely applies to the primary endpoint; the "treatment effect = -0.1%" quoted for dystrophin would then be a difference in adjusted mean ranks, not percentage points (the "%" sign is the clinical reviewer's).
- Inference: SAS form would be `PROC RANK` on the change, then `PROC GLM/MIXED; CLASS trt; MODEL r_chg = trt base dxtime; LSMEANS trt / PDIFF CL;`. Whether the two covariates were also ranked cannot be determined from the public documents.
- With n=4 per group, an F/t reference distribution on ranks is a rough approximation; an exact permutation test would be the defensible choice. A two-sided exact Wilcoxon test of 4 vs 4 cannot give p below 0.029, so p=0.002 is attainable only through the model-based (pooled 3-arm, covariate-adjusted) test.
- The placebo comparator pools Week 12 and Week 24 biopsies; a programmer replicating the design must decide whether to compare each dose only with its time-matched placebo pair (n=2), which the SAP did not do.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000StatR.pdf) — fetched (statr.txt)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000MedR.pdf) — fetched (medr.txt)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000SumR.pdf) — fetched (sumr.txt; no additional method detail)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2016/206488lbl.pdf) — fetched (label.txt; Study 201 IHC p-values not in label)
- ClinicalTrials.gov [NCT01396239](https://clinicaltrials.gov/study/NCT01396239) — no protocol/SAP posted (API checked)
- Mendell 2013 Ann Neurol (PMID 23907995) — not open access in Europe PMC; not fetched
- Sponsor SAP (20 Feb 2012) — not public
