# Garadacimab-gxii (Andembry) — BLA 761367

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2025/761367s000lbl.pdf) · [SAP (NCT04656418, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) · [Protocol (NCT04656418, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/Prot_000.pdf)

Census entry: [`README.md`](../../README.md) line 35813. Immunology/allergy (hereditary angioedema prophylaxis). CSL Behring LLC. Approval 2025.

**Summary:** VANGUARD compared garadacimab 200 mg monthly with placebo (3:2, N=64) on each subject's time-normalized number of HAE attacks per month over the 6-month treatment period using an unstratified two-sided Wilcoxon rank-sum test at alpha 5% (p<0.001). No rank-based effect estimate was specified; the sponsor summarized arms by median and mean with 95% CIs. The effect size shown in the FDA review and the label (89.2% reduction) comes from the sensitivity-analysis Poisson model with Pearson overdispersion scaling, while the p-value in the label is the Wilcoxon p-value.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census's "Primary result ... placebo 2.07 (95% CI 1.49-2.87)" matches the label. The FDA Integrated Review Table 11 gives the placebo LS mean as 2.01 (1.45, 2.79) and garadacimab 0.22 (0.1, 0.45); the label gives 0.22 (0.11, 0.47) and 2.07 (1.49, 2.87). The two documents differ slightly [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.30; [label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2025/761367s000lbl.pdf) §14].
- The census stratification "age (≤17 vs. >17) and baseline Run-in attack rate" omits that the attack-rate stratum applied to adults only [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.14 §4.4].
- The census says the estimand/test mismatch was "flagged"; accurate. It does not mention that FDA refused to report a p-value for the first key secondary endpoint (H02) because the applicant's program simply reused the primary Wilcoxon p-value [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.30].
- Otherwise none found.

## VANGUARD (CSL312_3001, NCT04656418)

### Design

- Garadacimab 200 mg SC monthly (after a 400 mg loading dose) n=39 vs placebo n=25; 3:2 block randomization via central IRT [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.14 §4.4; [intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.28 Table 9].
- Stratification: "age (< 17 years, > 17 years) and, for adults, the subject’s baseline attack rate (1 to < 3 attacks/month, and > 3 attacks/month)" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.14; the OCR drops the ≤/≥ signs; FDA writes "≤17 years; >17 years" and "1 to <3; ≥3", intr.txt p.19]. Not stratified by site [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.23 §7.2].
- Double-blind, placebo-controlled; run-in 1-2 months without prophylaxis (≥2 attacks required), then 6-month treatment period (Day 1 to Day 182) [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.19].
- Analysis population: ITT = all randomized subjects, analyzed as randomized; N=64. Evaluable for the primary endpoint: 39 and 24 (one placebo subject had <30 days of treatment) [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.22, p.29 Table 10].

### Endpoint

- Time-normalized number of investigator-confirmed HAE attacks per month during the treatment period, one value per subject [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.37 §10.1]:

$$
\text{attacks per month} = \frac{\text{number of HAE attacks}}{\text{length of subject treatment in days}} \times 30.4375
$$

- Length of treatment = date of Day 182 visit or End of Study date (whichever is first) minus date of Day 1 visit, plus 1 [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.37].
- If a subject stops treatment but stays in the study more than 30 days after the last dose: count attacks until last dose + 30 days; length = date of last dose minus Day 1 date + 31 [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.39].
- If a subject leaves the study early after at least 30 continuous days: count attacks to the Early Termination Visit; the endpoint is "considered measurable and not missing" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.38].
- Not calculated (missing) if the observation time in the treatment period is under 30 days [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.37].
- Attacks counted: start date/time after the first study drug administration through the Day 182 visit (inclusive) or End of Study visit [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.24].
- Variable type: non-negative rate with a large point mass at zero in the active arm (garadacimab median 0, range 0 to 3.83; placebo median 1.35, range 0.17 to 4.42) [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.29 Table 10]. Many ties at zero. The sources make no remark on ties.

### Hypothesis and contrast

- "H01: a1=0 versus H11: a1 ≠ 0", where "the term “a1” is the shift between the 2 distributions of monthly CSL312 and monthly placebo" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.39 §10.1.2; symbols partly garbled by OCR]. Two-sided, alpha 5%.
- Estimand [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.38 §10.1.1]: treatment = monthly garadacimab or placebo; population = ITT; variable = time-normalized attacks per month Day 1-182; intercurrent events (on-demand medication, prohibited medication, non-compliance, early discontinuation) all handled by treatment policy ("All observed values will be used"); population-level summary = "median time-normalized number of HAE attacks per month ... by treatment".

### Primary analysis method

- Test: "two-sided Wilcoxon Test" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.39]; "two-sided Wilcoxon rank sum test at alpha=5%" [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.24].
- What is ranked: the per-subject attack rate, both arms pooled. No stratification (despite stratified randomization), no covariates. SAP rationale: "Age and baseline attack rate are not regarded as confounder or effect modifier" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.37].
- Score type, tie handling, exact vs asymptotic p-value, continuity correction: Not stated.
- No parametric model in the primary analysis. The Poisson GLM is a sensitivity analysis (below).

### Effect estimate and interval

- Primary: none attached to the test. "The time-normalized number of HAE attacks per month and per year will be summarized descriptively ... by median and mean with corresponding 95% CIs" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.39]. No Hodges-Lehmann estimate is specified.
- Key secondary (H02): percentage reduction in means, 100 × (mean garadacimab − mean placebo) / mean placebo, and the same with medians; CIs via ratio-of-means/medians methods citing Beyene & Moineddin 2005 and Price & Bonett 2002 [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.46 §10.3.2].
- Reported effect size in FDA review and label: Poisson-model LS means, attack ratio, and percentage reduction = 100% × (attack ratio − 1) with CI from the transformed ratio limits [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.40; [intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.24].

### Missing data and intercurrent events

- Missing only when the subject discontinues within 30 days of first dose; no imputation in the primary analysis; such subjects are excluded [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.24, p.39].
- Planned missing-data sensitivity (tipping-point grid): for each arm, impute values from 0 to 6 attacks/month in steps of 0.1 ("subdivided into 9 increments between two consecutive integer values"), all combinations, re-run the Wilcoxon test, classify as negative/neutral/positive, and plot [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.41]. Results: Not stated in the FDA review.
- Amount missing: 1 placebo subject (4%) [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.29].
- Deaths: none mentioned.

### Multiplicity

- Fixed-sequence hierarchy H01 (primary) → H02 (percentage reduction in means) → H03 (attack-free in first 3 months, Fisher's exact) → H04 (SGART good/excellent, chi-squared), each two-sided 5% [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.22].

### Sample size assumptions

- 40 completers (24:16) give ~90% power for a two-sided Wilcoxon test at 5%, assuming monthly attack counts are Poisson with means 0.3125 (garadacimab) and 1.3 (placebo). Computed in "SAS 9.4 using proc power procedure with twosamplewilcoxon test=WMW", O'Brien-Castelloe approximation, "GROUPNS = (24 16)". 60 planned to be randomized [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.15 §4.5; [intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.222].

### Software and code

- SAS 9.4 (stated for the power calculation). No analysis code in the SAP. The only code-like text is the PROC POWER description above.

### Results as presented

- FDA Table 10 layout: columns garadacimab, placebo; rows: number of evaluable subjects n (%), number of HAE attacks during the treatment period, then for the time-normalized rate: mean (SD), 95% CI (of the mean), median (min, max), and a single p-value row footnoted "Obtained from a two-sided Wilcoxon rank sum test at alpha=5%" [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.29].
- FDA Table 11 (sensitivity): LS mean (SE), 95% CI, percentage reduction (95% CI), attack ratio (95% CI) from the Poisson model.
- Label Table 4: LS mean (95% CI) per arm and percent reduction (95% CI) from the Poisson model, plus "P-value" footnoted "Obtained from a two-sided Wilcoxon rank sum test at alpha = 5%". No medians in the label [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2025/761367s000lbl.pdf) §14].

| Statistic | Garadacimab (N=39) | Placebo (N=25) |
|---|---|---|
| Evaluable n | 39 | 24 |
| Total HAE attacks in treatment period | 63 | 264 |
| Attacks/month, mean (SD) | 0.27 (0.68) | 2.01 (1.34) |
| 95% CI of mean | 0.05, 0.49 | 1.44, 2.57 |
| Median (min, max) | 0 (0, 3.83) | 1.35 (0.17, 4.42) |
| Wilcoxon rank-sum p (two-sided) | <0.001 | |
| Poisson LS mean (95% CI), FDA review | 0.22 (0.1, 0.45) | 2.01 (1.45, 2.79) |
| Poisson LS mean (95% CI), label | 0.22 (0.11, 0.47) | 2.07 (1.49, 2.87) |
| Percent reduction (95% CI) | 89.2% (75.6%, 95.2%) | |
| Attack ratio (95% CI) | 0.11 (0.05, 0.24) | |

Sources: [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.29 Table 10, p.30 Table 11; [label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2025/761367s000lbl.pdf) §14 Table 4].

### Sensitivity and supportive analyses

- Poisson GLM, log link, Pearson chi-square scaling for overdispersion; terms: treatment (categorical, 2 levels), time-normalized baseline attack rate during run-in (continuous); offset log(length of treatment in days); ITT [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.40]. Results above.

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | garadacimab, placebo |
| Baseline attack rate (run-in) | continuous | | time-normalized attacks/month in run-in |
| log(length of treatment, days) | offset | | response is the attack count |

- Per-protocol repeat of the primary analysis (supplementary estimand) [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) p.41 §10.1.3]. Results: Not stated in the pages read.
- Key secondary H02 descriptive result: percentage reduction in means 86.5% (95% CI 57.8%, 95.7%) from the CSR [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.30].
- Other attack-rate endpoints (attacks needing on-demand therapy; moderate/severe attacks) used exploratory two-sided Wilcoxon tests; FDA added Poisson models of the same structure [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.26].

### FDA reviewer comments and reanalyses

- "The population-level summary specified in the Applicant’s primary estimand was the median, but the Wilcoxon rank sum test is not a median test." [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.24].
- FDA described the primary result in rank-sum terms: "there was a statistically significant difference (Wilcoxon p-value <0.001) in the rank sums ... (i.e., the rank sum in the garadacimab arm was significantly lower than the placebo arm, assuming that a higher rank indicates a worse outcome)" [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.29].
- On H02: the Wilcoxon test "is a nonparametric approach to test location shift between two distributions" and is not applicable to a hypothesis that a percentage reduction in means equals zero; the applicant's program reported the primary Wilcoxon p-value for H02, "which is not appropriate"; FDA reported no p-value [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.25, p.30].
- FDA speculated that H02 was added "for increased clinical interpretability (since the results of a Wilcoxon rank sum test are not as straightforward) and labeling purposes" [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) p.23].
- Results in Tables 10-11 are sourced "Statistical reviewer; Clinical Study Report" (reproduced by FDA).

### Verbatim specification excerpts

> "Following the estimand described in Section 10.1.1, the primary efficacy endpoint between CSL312 and placebo is tested for a difference by comparing the time-normalized number of HAE attacks in the 6 months of the Active Arm and in the 6-month Placebo Arm period by using a two-sided Wilcoxon Test (Hierarchical Testing H0O1)." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf), SAP p.39; OCR text, "H0O1" is the OCR rendering of H01]

> "[the number of HAE attacks / length of subject treatment in days] * 30.4375" — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf), SAP p.37]

> "The time-normalized number of HAE attacks will not be calculated if the subject’s observation time for the Treatment Period is less than 30 days, i.e. subject discontinued within 30 days after first study drug administration." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf), SAP p.37]

> "As a sensitivity analysis, the time-normalized number of HAE attacks will be compared for the 6 months of the Active Arm and the 6 months of the Placebo Arm using a generalized linear model (GLM) for count data assuming a Poisson distribution with the logarithm as link function and Pearson chi-square scaling of standard errors to account for potential over dispersion. The model includes treatment (categorical) and the time-normalized baseline attack rate during Run-in Period (continuous) as covariates." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf), SAP p.40]

> "The sample size calculation is performed with SAS 9.4 using proc power procedure with twosamplewilcoxon test=WMW which performs power analyses for the Wilcoxon-Test for two independent groups" — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf), SAP p.15]

> "The Wilcoxon Rank Sum test is testing from departure from the null hypothesis and is assessing if there is a location shift between the distributions of the HAE attack rates of the CSL312 and the Placebo treatment." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf), SAP p.15]

> "sided Wilcoxon rank sum test at alpha=5%. The population-level summary specified in the Applicant’s primary estimand was the median, but the Wilcoxon rank sum test is not a median test." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf), p.24; the sentence begins "The analysis method for evaluating the primary endpoint in the ITT Analysis Set was a two-" on the preceding line]

> "Note: LS means and attack ratio were obtained from a Poisson model accounting for overdispersion with an offset term for time on treatment and fixed effects for treatment arm and baseline HAE attack rate." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf), p.30]

### Implementation notes (inference)

- Primary test: `wilcox.test(rate ~ arm)` or SAS `PROC NPAR1WAY WILCOXON`. With 39 vs 24 subjects and more than half of the active arm tied at zero, the choice between the exact conditional test and the tie-corrected normal approximation (with or without continuity correction) matters in principle; here p<0.001 under any choice. The SAP does not say which. `wilcox.test` cannot compute an exact p-value with ties; `coin::wilcox_test(distribution = "exact")` can.
- A rank-consistent effect measure a programmer could add: the Hodges-Lehmann shift (which will be pulled toward the lattice of attack rates) or the Mann-Whitney probability/odds (the O'Brien-Castelloe power method cited is parameterized by the WMW odds). The sponsor specified neither; they specified medians (estimand) and percent reduction in means (H02), which FDA noted the Wilcoxon test does not test.
- Because follow-up is nearly equal across subjects (~182 days), ranking rates is almost equivalent to ranking counts; subjects with shorter follow-up get coarser, more variable rates, which the rank test does not weight.
- Poisson sensitivity model: SAS `PROC GENMOD; CLASS trt; MODEL n_attacks = trt base_rate / DIST=POISSON LINK=LOG OFFSET=log_days PSCALE; LSMEANS trt / DIFF EXP CL;`. LS means on the log scale are per day at the mean baseline rate; multiply exp(LS mean) by 30.4375 to get monthly rates ("transformed by the exponential function and scaled by time"). In R: `glm(n ~ trt + base_rate + offset(log(days)), family = quasipoisson)`.
- The label mixes two analyses in one table (model-based estimate, rank-based p-value). A reference implementation should keep that distinction explicit.
- Stratified randomization was ignored in the primary test; a van Elteren test stratified by baseline attack-rate stratum would be the natural stratified alternative, but the adolescent stratum (n=6) would be very small.

### Sources consulted

- [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2025/761367Orig1s000IntegratedR.pdf) — fetched (intr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2025/761367s000lbl.pdf) — fetched (label.txt)
- [SAP (NCT04656418, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/SAP_001.pdf) — fetched; the embedded text layer is letter-spaced and unusable, so the PDF was re-OCR'd with tesseract (sap.txt and sap_ocr.txt are identical OCR output; SAP v1.0, 21 Apr 2021). OCR drops some symbols (≤, ≥, subscripts).
- [Protocol (NCT04656418, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/18/NCT04656418/Prot_000.pdf) — fetched; same unusable text layer (prot_garbled_textlayer.txt); not re-OCR'd, not used
- Craig et al., Lancet 2023 (PMID 36868261) — not in Europe PMC open access; not fetched
