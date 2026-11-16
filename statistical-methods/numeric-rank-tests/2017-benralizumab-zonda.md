# Benralizumab (Fasenra) — BLA 761070

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/761070s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 33415. Pulmonology (severe eosinophilic asthma). AstraZeneca. Approval 2017.

**Summary:** Only ZONDA (the oral-corticosteroid-sparing trial) used a rank method for its primary endpoint. Each benralizumab regimen (Q4W, Q8W) was compared with placebo on percent reduction from baseline in final OCS dose using an unstratified Wilcoxon rank-sum test, with a Hodges-Lehmann location shift and asymptotic (Moses) 95% CI, and a Hochberg adjustment over the two comparisons. Both regimens were significant (p<0.001; HL shift 33.3 and 37.5 percentage points). SIROCCO and CALIMA used negative binomial regression and are not covered here.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- None found on the method. The census omits that the CI for the HL estimate is labelled "Moses CI" and that the FDA review also reports a proportional odds sensitivity model and a per-protocol-style reanalysis.
- The census says ZONDA "N=220 ... stratified by eosinophil stratum and region"; consistent with FDA. Note the StatR executive summary says "full analysis set, N=187", which is the ≥300/µL subgroup count; the FAS is 220 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.7 vs p.48 Table 32].
- No protocol/SAP on ClinicalTrials.gov (confirmed via API); the NEJM protocol supplement returned HTTP 403.

## ZONDA (D3250C0020, NCT02075255)

### Design

- Three arms, 1:1:1: benralizumab 30 mg Q4W (n=72), benralizumab 30 mg Q4W for the first three doses then Q8W (n=73), placebo (n=75); 220 randomized, all dosed [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.48 Table 32].
- Randomization stratified "by blood eosinophil level and region" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.44-45]. Eosinophil strata: ≥150 to <300 cells/µL and ≥300 cells/µL [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.44]. Region levels: Not stated.
- Double-blind, placebo-controlled, 28-week treatment period after an 8-week run-in/OCS optimization: 4-week induction on the optimized dose, 20-week OCS reduction phase (reductions at 4-week intervals from Week 4), 4-week maintenance phase (Weeks 24-28) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.44-45].
- Analysis population: full analysis set (FAS) = "all patients who were randomized and received any IP, irrespective of their protocol adherence and whether or not they continued participation in the study"; analyzed as randomized; N=220 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47].

### Endpoint

- "percent reduction from baseline in the final OCS dose while maintaining asthma control (Week 24 – Week 28)" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.45]. Baseline = optimized OCS dose at randomization (Visit 6) [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000MedR.pdf) p.57].
- Formula: "{(Baseline dose – final dose) / baseline dose} * 100%" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.45]. Positive = reduction.
- Scoring of interruptions: for "early withdrawal, asthma exacerbation or deterioration during the OCS reduction period, or asthma deterioration during the maintenance period" the SAP (§3.1, not available) set rules; "In general, under the above interruptions, a patient’s final OCS dose was defined as 1 does level higher than the dose at which the interruption occurred" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.45; "does" is the source's typo for "dose"]. So dropouts and asthma-control failures receive a derived value (one titration step above the dose at the event), not a missing value or a worst rank.
- Variable type: bounded (≤100%), highly discrete because doses follow a titration schedule; a point mass at "no change or any increase" (46.7% of placebo, 20.5-23.6% of benralizumab) and at 90-100% reduction [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.54 Table 38]. Only patients with baseline dose ≤12.5 mg could reach 100% [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/761070s000lbl.pdf) §14]. Heavy ties are therefore expected; the sources do not discuss tie handling.

### Hypothesis and contrast

- Each benralizumab regimen vs placebo (two pairwise tests); two-sided; overall alpha 0.05 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.46].
- Estimand: FDA characterizes the FAS analysis as supporting "the de facto or ITT estimand" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47].

### Primary analysis method

- Test: "Wilcoxon rank-sum test" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47].
- What is ranked: per-patient percent reduction, pooled over the two arms being compared (pairwise comparison; whether ranks were computed within each pair or across all three arms is Not stated). No stratification by eosinophil stratum or region; no covariates.
- Tie handling, continuity correction, exact vs asymptotic p-value: Not stated. The estimator is described as "asymptotic Hodges-Lehmann estimation, together with associated 95% CI and p-value" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47].
- No parametric model accompanied the primary analysis. (The Medical Review says "The primary endpoint was evaluated an analysis of covariance (ANCOVA) model" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000MedR.pdf) p.58]; this conflicts with the Statistical Review and with the Medical Review's own results table, which reports the Wilcoxon test. Treat it as an error in the Medical Review.)

### Effect estimate and interval

- "the median difference in the OCS percent reduction between Benralizumab dose regimen and placebo was derived using asymptotic Hodges-Lehmann estimation" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47]. Tables label it as the Hodges-Lehmann estimate of location shift for benralizumab vs. placebo, with "95% CI (Moses CI)" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.52 Table 36].
- Per-arm median percent reduction with "95% CI (Distribution free)" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.52].

### Missing data and intercurrent events

- No imputation model. Early withdrawal, exacerbation and deterioration are handled inside the endpoint derivation (final dose = one dose level above the dose at the interruption) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.45].
- For the proportional odds sensitivity model, "missing data was assigned with to be under the no change or any increase category" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47].
- Amount: 13/220 (6%) discontinued treatment; 11/220 (5%) discontinued the study; 2 deaths (both Q8W) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.48-49 Table 33]. Number of patients with a truly missing percent reduction: Not stated.
- Protocol deviations affecting the endpoint: 54/220 (24.5%) had an important deviation; 22 (10%) had an exacerbation after Visit 6 and were not kept at the protocol-specified final dose [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.69 Table 52].

### Multiplicity

- "A Hochberg procedure was used to control the overall type I error rate at the 0.05 level for the tests related with the two Benralizumab dose regimens for the primary endpoint, percent OCS reduction. No adjustments were made to p-values for tests on secondary efficacy variables." [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.46].

### Sample size assumptions

- Planned ~210 patients (~150 with eosinophils ≥300, ~60 with 150 to <300) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.44]. Effect size, variability, and power: Not stated in the FDA documents.

### Software and code

- Not stated. No code in any source.

### Results as presented

- FDA Table 36 layout: columns Q4W, Q8W, placebo; rows "Descriptive Statistics": median percent reduction, 95% CI (distribution free); "Wilcoxon Rank Sum Test": HL estimate of location shift vs placebo, 95% CI (Moses CI), p value [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.52].
- Division Director review Table 6 adds baseline and final daily OCS dose mean (SD) and places the proportional-odds categories underneath [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000SumR.pdf) p.19].
- Label §14 (Q8W only): median percent reduction 75% (95% CI 60, 88) vs 25% (95% CI 0, 33); responder proportions; odds ratio for final dose ≤5 mg. No Wilcoxon p-value or HL estimate in the label text [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/761070s000lbl.pdf) §14].

| Statistic | Benra Q4W (N=72) | Benra Q8W (N=73) | Placebo (N=75) |
|---|---|---|---|
| Baseline daily OCS dose mg, mean (SD) | 15.78 (8.83) | 14.28 (7.76) | 14.15 (6.35) |
| Final daily OCS dose mg, mean (SD) | 8.25 (10.80) | 6.36 (6.88) | 11.25 (8.47) |
| Median % reduction (95% distribution-free CI) | 75.0 (50.0, 83.3) | 75.0 (60.0, 87.5) | 25.0 (0.0, 33.3) |
| HL location shift vs placebo (95% Moses CI) | 33.3 (16.7, 50.0) | 37.5 (20.8, 50.0) | |
| Wilcoxon p-value | <0.001 | <0.001 | |

Sources: [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.52 Table 36; [sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000SumR.pdf) p.19 Table 6].

- Figure: FDA panel plot (Figure 8) of the distribution of percent change by arm, primary derivation vs sensitivity derivation [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.53].

### Sensitivity and supportive analyses

- Sensitivity 1 (SAP amendment after blinded review): for patients with an exacerbation on or after Visit 6, final dose = "the OCS dose 1 step higher than the dose at which their first exacerbation started". Medians 70.9 / 75.0 / 25.0; HL 33.3 (17.0, 50.0) and 38.1 (16.7, 50.0); both p<0.001 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.46, p.53 Table 37].
- Sensitivity 2: proportional odds model on five ordered categories (90-100%, 75-<90%, 50-<75%, >0-<50%, no change or any increase), "with adjustment for covariates including region and baseline optimized OCS dose". OR 4.09 (2.22, 7.57) for Q4W and 4.12 (2.22, 7.63) for Q8W; both p<0.001 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47, p.54-55 Table 38].

| Category, n (%) | Q4W | Q8W | Placebo |
|---|---|---|---|
| 90-100% reduction | 24 (33.3) | 27 (37.0) | 9 (12.0) |
| 75-<90% | 14 (19.4) | 10 (13.7) | 6 (8.0) |
| 50-<75% | 10 (13.9) | 11 (15.1) | 13 (17.3) |
| >0-<50% | 7 (9.7) | 10 (13.7) | 12 (16.0) |
| No change or any increase | 17 (23.6) | 15 (20.5) | 35 (46.7) |

- Sensitivity 3 (FDA): excluding 10 patients whose optimized dose was not reached at least 2 weeks before randomization (N 71/72/67): HL 33.3 (16.7, 50.0) and 34.5 (17.0, 50.0); p<0.001 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.55 Table 39].
- Same Wilcoxon analysis in the ≥300/µL subgroup, without multiplicity control [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47].

### FDA reviewer comments and reanalyses

- Tables 36-39 are sourced "Reviewer" (FDA reproduced the analyses).
- On the proportional odds model: "the ordinal form allows easy handling of missing data ... the model based approach allows for adjustment of covariates. However, there is also concern with using proportional odds model without justifying the underlying proportional odds assumption." [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.47].
- On data quality: the derivation rules and sensitivity approach "could not recover the robustness in assessment of OCS sparing expected for supporting regulatory approval" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.46]; "I doubt the overall quality of data generated by this trial" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) p.69].

### Verbatim specification excerpts

> "The primary analysis for the OCS percent reduction endpoint used the Wilcoxon rank-sum test approach. The primary analyses were performed in the FAS population. For each of the two Benralizumab dose regimen groups, the median difference in the OCS percent reduction between Benralizumab dose regimen and placebo was derived using asymptotic Hodges-Lehmann estimation, together with associated 95% CI and p-value." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf), p.47]

> "The percent reduction from baseline was defined as: {(Baseline dose – final dose) / baseline dose} * 100%." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf), p.45]

> "In general, under the above interruptions, a patient’s final OCS dose was defined as 1 does level higher than the dose at which the interruption occurred." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf), p.45]

> "An ordinal form of data was first derived based on OCS percent reduction values using the following categories: 90 – 100% reduction, 75 – <90% reduction, 50 – <75% reduction, >0 – <50% reduction, and no change or any increase." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf), p.47]

> "For those patients who did record an exacerbation on or after Visit 6, the final OCS dose used in the percent reduction from baseline calculation was the OCS dose 1 step higher than the dose at which their first exacerbation started." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf), p.46]

> "A Hochberg procedure was used to control the overall type I error rate at the 0.05 level for the tests related with the two Benralizumab dose regimens for the primary endpoint, percent OCS reduction." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf), p.46]

### Implementation notes (inference)

- "Asymptotic Hodges-Lehmann estimation" with a "Moses CI" and distribution-free CIs for medians matches SAS `PROC NPAR1WAY ... WILCOXON HL` (asymptotic Moses limits) and `PROC UNIVARIATE CIQUANTDF`. The p-value is then presumably the normal-approximation Wilcoxon p-value with tie-corrected variance. The sources do not confirm the procedure.
- Run two separate two-group tests (Q4W vs placebo, Q8W vs placebo), each ranking only the two arms involved; that is the default if the data are subset per comparison. Hochberg with two tests: reject both if the larger p ≤ 0.05; otherwise reject the smaller if ≤ 0.025.
- The HL estimates (33.3, 37.5, 16.7, 50.0) are ratios of small integers, reflecting the discreteness of dose steps; the CI endpoints land on the same lattice. Expect many tied pairwise differences.
- The endpoint is a composite: asthma-control failure and withdrawal are converted to a dose "one level higher". A programmer needs the titration ladder to implement this; the ladder (protocol §4.2.2) is not in the FDA documents.
- The randomization strata (eosinophil level, region) were not used in the primary test; a van Elteren test would be the stratified alternative. The proportional odds model adjusted for region and baseline dose but apparently not eosinophil stratum (the source says "including", so the list may be incomplete).

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000StatR.pdf) — fetched (statr.txt)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000MedR.pdf) — fetched (medr.txt)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/761070Orig1s000SumR.pdf) — fetched (sumr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/761070s000lbl.pdf) — fetched (label.txt)
- [ClinicalTrials.gov record [NCT02075255](https://clinicaltrials.gov/study/NCT02075255)](https://clinicaltrials.gov/api/v2/studies/NCT02075255) — checked; no protocol/SAP documents posted
- <https://www.nejm.org/doi/suppl/10.1056/NEJMoa1703501/suppl_file/nejmoa1703501_protocol.pdf> — failed (HTTP 403)
- Nair et al., NEJM 2017 (PMID 28530840) — not in Europe PMC open access; not fetched
