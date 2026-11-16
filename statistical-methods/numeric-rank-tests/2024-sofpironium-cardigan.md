# Sofpironium (Sofdra) — NDA 217347

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: parametric primary with a rank-based fallback that was invoked.

**Source documents:** [FDA Multi-Discipline Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/217347s000lbl.pdf) · [SAP (NCT03836287, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) · [Protocol (NCT03836287, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/Prot_000.pdf) · [SAP (NCT03948646, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/46/NCT03948646/SAP_001.pdf) · [Protocol (NCT03948646, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/46/NCT03948646/Prot_000.pdf)

Census entry: [`README.md`](../../README.md) line 35509. Dermatology (primary axillary hyperhidrosis). Botanix SB Inc. (trials run by Brickell Biotech). Approval 2024.

**Summary:** In two identically designed vehicle-controlled trials (Cardigan I and II), the co-primary endpoint, change in gravimetric sweat production (GSP) from baseline to end of treatment, was planned as an ANCOVA, switching to a rank-transformed ANCOVA if a Shapiro-Wilk test rejected normality in either arm. Normality was rejected (p<0.0001 in each arm of each trial), so the primary analysis was an ANCOVA on the within-subject "difference of ranks" (EOT rank minus baseline rank, each a median of three visit-wise ranks) with treatment, baseline rank, and analysis center, fitted to 20 multiply imputed datasets. Both trials were significant (p=0.0019 and p=0.0296). FDA added an analysis of the "ranks of the differences" (rank the raw change scores), also significant (p=0.0281 and p=0.0069).

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census places the Shapiro-Wilk test "on residuals" only. The SAP is internally inconsistent: §8.2.1.2 applies it to "the GSP change from baseline to EOT data" per arm, §8.3.2 to "the model residuals separately" per arm [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.26, p.30]. FDA describes residuals.
- The census reports "GSP rank-based difference p=0.0019 / p=0.0296" without the effect sizes; the review gives LS mean rank differences -29.7 and -21.8 with CIs [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102].
- The census says the untransformed analysis is not mentioned; the review reports it as a sensitivity analysis and it was not significant in Study 301 (p=0.5324) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102-103].
- The census calls the 3-SD rule "outlier trimming before imputation"; the outliers are removed only from the imputation donor pool, not from the analysis [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.26].

## Cardigan I (BBI-4000-CL-301, NCT03836287) and Cardigan II (BBI-4000-CL-302, NCT03948646) — identical methods

### Design

- Sofpironium bromide gel 15% vs vehicle, 1:1, once daily at bedtime to both axillae for 42 days. ITT: Study 301 n=173 vs 177; Study 302 n=180 vs 171 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102 Table 28].
- Randomization "stratified by study site" (each site a block) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.85; [prot301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/Prot_000.pdf): "The randomization for this study will be stratified by investigator site."]. All US sites (35 and 33 sites).
- Double-blind, vehicle-controlled; GSP visits at Screening (Visit 1), Visits 2 and 3 (within 14 days before baseline), Day 1 (Visit 4), Days 8, 15, 22, 29, 36, 41, 42, 43 (Visits 5-12), Day 57 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.87].
- Analysis population: ITT = all randomized subjects, including duplicate enrollments (4 people randomized 10 times across the two trials). Supportive mITT excludes them (301: 169 vs 173; 302: 180 vs 169) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.86, p.103].

### Endpoint

- GSP: weight of sweat collected over 5 minutes at room temperature, mg; at each timepoint "GSP will be defined as the sum of both axillae measurements. If one axilla value is missing at a timepoint, then the non-missing observed value will be multiplied by 2"; "Negative GSP values will be treated as missing" [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.22 §8.1.1 Definitions, "GSP (both axillae combined total)"].
- Baseline = median of the GSP values at Visits 2, 3, 4. EOT = median of the GSP values at Visits 10, 11, 12 (Days 41, 42, 43). Baseline/EOT is non-missing if at least one of the three visits has a value [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.22 §8.1.1; flow chart Appendix 18.3, SAP p.72 (image, viewed in the PDF)]. If all of Visits 2-4 are missing, Screening GSP is used [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.30].
- Continuous-scale outcome: EOT minus baseline.
- Distributional remarks: "The distribution of the GSP values are highly skewed with a number of very large GSP values. The distribution of the change from baseline values also skewed, with many outliers, particularly highly negative values." [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.104].

### Hypothesis and contrast

- H0: mean change (or rank-based change) equal in the two arms; two-sided alpha 0.05; both co-primary endpoints must be significant [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.31].
- Estimand (SAP): "the mean treatment difference, sofpironium bromide gel, 15%, versus vehicle, in change from baseline (or rank-based change from baseline) to EOT for GSP among all ITT subjects, regardless of treatment adherence" [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.31].

### Decision rule (only if the method was contingent)

- Trigger: Shapiro-Wilk test, applied "prior to performing multiple imputations for missing data", "separately for sofpironium bromide gel, 15% arm, and vehicle arm" [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.30]. Applied to model residuals per §8.3.2, or to the change data per §8.2.1.2.
- Threshold: Not stated in the SAP pages read (no alpha given for "violated").
- Rule: rank analysis if normality is "violated for either treatment arm"; continuous ANCOVA only if not violated in both arms. The analysis not chosen as primary is run as supportive [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.30, p.32 §8.3.4].
- Outcome: "p<0.0001 for each treatment arm in each study" → rank analysis primary in both trials [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102].

### Primary analysis method

"Difference of the ranks" (protocol-specified primary):

1. At each of the six visits used (2, 3, 4, 10, 11, 12), rank the continuous GSP values of all subjects, both arms pooled: "continuous data for all subjects will be ranked together without regard to treatment assignment, from smallest to highest value. The smallest observation will be assigned the rank of 1 ... Average ranks will be used for tied observations." [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.30].
2. Baseline rank = median of the subject's three ranks at Visits 2, 3, 4. EOT rank = median of the three ranks at Visits 10, 11, 12.
3. Outcome = EOT rank minus baseline rank.
4. ANCOVA on that outcome.

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | sofpironium bromide gel 15%, vehicle |
| Baseline GSP | ranked (continuous covariate) | | the median-of-ranks baseline value; raw baseline GSP in the non-ranked model |
| Analysis center | categorical (fixed) | Not stated | sites pooled so each analysis center has ≥10 subjects: lowest-enrolling site combined with largest, second lowest with second largest, and so on [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.26 §8.2.2] |

- Test: LS-mean contrast (treatment difference) from the ANCOVA, t/F reference distribution; per-imputation results combined by Rubin's rules [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.25, p.31]. FDA table footnote: "ANOVA on ranks adjusted for baseline rank and analysis center (multiple imputation)" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.103].
- The ANCOVA model "will be the same, regardless of whether continuous or rank-based GSP data is used" [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.31].
- Parametric model it replaced: ANCOVA on raw change with treatment, raw baseline GSP (continuous), analysis center.

"Ranks of the differences" (FDA reviewer's alternative): compute the change from baseline on the original scale (EOT median minus baseline median), rank those changes across all subjects, and fit "the same model" (terms for baseline rank and analysis center) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102]. Whether the baseline covariate in this version is the median-of-ranks baseline or a rank of the baseline median: Not stated.

Why they differ, per FDA: for means, difference of means equals mean of differences, but "this equivalence does not hold for the ‘difference of the ranks’ versus the ‘ranks of the differences,’ due to the non-linearity of the ranking function". With baseline rank as a covariate, the difference-of-ranks analysis "is equivalent to an analysis of the ranks of the EOT values, as long as the model is adjusted for the baseline ranks"; the ranks-of-differences approach targets the change scores themselves [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.87, p.136].

### Effect estimate and interval

- LS means of the rank outcome per arm (SE), treatment difference in LS mean ranks with 95% CI, p-value. FDA judged these "not clinically meaningful" and presented medians and quartiles of raw change alongside [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.17].
- No Hodges-Lehmann estimate.

### Missing data and intercurrent events

- EOT GSP is imputed only if both axillae are missing at all three of Visits 10-12 [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.25].
- Multiple imputation of the continuous EOT value, 20 datasets. Vehicle arm: MAR. Sofpironium arm: control-based imputation (MNAR), i.e. after dropout the subject behaves "like a subject on vehicle" with similar characteristics and history [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.25 §8.2.1.1].
- Outlier screen for the imputation donor data: pool both arms, compute mean and SD of non-missing change scores, flag values more than 3 SD from the mean, set aside, recompute, repeat until none are flagged; flagged values are removed from "the imputation sampling database, i.e. the non-missing vehicle data" but kept in the analysis [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.26 §8.2.1.2].
- Sequence stated by SAP: normality check → impute continuous data → rank → ANCOVA per imputed dataset → Rubin's rules. Imputation model covariates and procedure: Not stated in the pages read.
- Amount missing (EOT GSP): 301: 9.2% vs 6.2%; 302: 10.0% vs 7.0% (sofpironium vs vehicle) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.106 Table 30].
- Intercurrent events: "regardless of treatment adherence" (treatment policy) [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.31].

### Multiplicity

- Two co-primary endpoints, both required at two-sided 0.05; then three secondary endpoints tested sequentially [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.88].

### Sample size assumptions

- For GSP on the rank scale: "a difference of 16.6 in mean ranks between vehicle and sofpironium bromide gel, 15% arms, with a pooled standard deviation of approximately 39.5"; normal approximation, two-sample t-test; 148 per arm for 0.95 power; 350 randomized for ~300 completers [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.12 §2.6]. Alternative on raw scale: difference 73 mg, SD ~170.

### Software and code

- SAS version 9.4 or later [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf), general considerations section]. No code in the SAP.

### Results as presented

- FDA Table 28 layout (per study, columns sofpironium / vehicle): three stacked blocks, "ITT – Difference in Ranks" (protocol-specified), "ITT – Ranks of Difference", "ITT – Values"; each with LS means (SE), treatment difference (95% CI), p-value; the Values block adds median and 25th/75th percentiles "averaged over the 20 multiply imputed datasets" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102-103].
- Executive-summary Table 1 and label Table 5: for GSP, the label shows only baseline median and median change with 25th/75th percentiles; no rank statistics, no p-value, no treatment difference [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/217347s000lbl.pdf) §14; [mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.17].

| GSP analysis (ITT, MI) | 301 SB gel (N=173) | 301 Vehicle (N=177) | 302 SB gel (N=180) | 302 Vehicle (N=171) |
|---|---|---|---|---|
| Difference in ranks, LS mean (SE) | -14.9 (6.8) | 14.8 (6.7) | -9.9 (7.1) | 11.8 (7.5) |
| Treatment difference (95% CI); p | -29.7 (-48.4, -11.0); 0.0019 | | -21.8 (-41.4, -2.2); 0.0296 | |
| Ranks of difference, LS mean (SE) | 165.8 (6.1) | 184.8 (6.0) | 165.1 (5.4) | 185.8 (5.7) |
| Treatment difference (95% CI); p | -19.02 (-36.0, -2.1); 0.0281 | | -20.7 (-35.7, -5.7); 0.0069 | |
| Raw values, LS mean (SE), mg | -151.4 (13.3) | -139.8 (13.3) | -206.5 (9.8) | -173.6 (10.0) |
| Treatment difference (95% CI); p | -11.6 (-48.0, 24.8); 0.5324 | | -32.8 (-58.8, -6.8); 0.0136 | |
| Median change, mg | -127.8 | -100.3 | -142.6 | -134.2 |
| 25th, 75th percentile | -200.5, -52.4 | -227.5, -28.5 | -260.1, -75.0 | -230.0, -59.5 |

Source: [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102-103 Table 28].

- Figures: FDA box/distribution plots of GSP at baseline, EOT, and change (observed cases), per study; median change and median GSP by visit [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.104-106].

### Sensitivity and supportive analyses

- mITT: difference in ranks -29.2 (-48.2, -10.3), p=0.0025 (301); -22.2 (-41.9, -2.6), p=0.0266 (302). Ranks of difference p=0.0156 and 0.0072. Raw values p=0.4853 and 0.0120 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.103 Table 29].
- Tipping point on the rank analysis: after MI, add delta to imputed sofpironium values and subtract from vehicle, delta 0 to 90 in steps of 5 GSP units; tips at 90 (301) and 15 (302) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.105-106 Table 30]. (SAP planned delta increments of 5 mg applied to the sofpironium arm.)
- SAP also planned: ranked and non-ranked analyses on observed cases; with outliers removed from the analysis set; MMRM on ranked and non-ranked data over Days 8-EOT; center-by-treatment interaction test (average F across imputations, p<0.10 threshold) [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) p.31-35]. Results not in the FDA review.

### FDA reviewer comments and reanalyses

- FDA reproduced the applicant's rank analysis and ran the ranks-of-differences and raw-value analyses itself [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102-103].
- "estimates based on the difference in ranks are not clinically meaningful" → medians and quartiles presented for labeling [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.17, p.136].
- "Because the analysis for change in GSP is mediated through the use of ranks, it is difficult to interpret the impact of the tipping point" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.105].
- Raw-scale analysis not significant in Study 301; FDA: "because of the skewness of the distribution, the results of the analysis of the untransformed data are not expected to be consistent with the ranked analysis that mitigates the impact of outliers" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) p.102].

### Verbatim specification excerpts

> "Should the assumption of Normality be violated for either treatment arm, the GSP change from baseline to EOT values will be rank-transformed for both arms." — [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf), SAP p.30]

> "For determination of baseline value for a subject, the continuous GSP data will be ranked separately at each of Visits 2, 3, and 4; the median of the three ranks will be used as baseline value of the subject." — [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf), SAP p.30]

> "For each subject, the difference between the rank-transformed baseline and EOT GSP values (EOT – baseline) will serve as the outcome value for the rank-based GSP ANCOVA analysis." — [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf), SAP p.30]

> "The Shapiro-Wilk test will be applied to assess Normality of the model residuals separately for sofpironium bromide gel, 15% arm, and vehicle arm." — [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf), SAP p.30]

> "Data values more than 3 standard deviations away from the mean will be regarded as outliers." — [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf), SAP p.26]

> "Twenty imputed datasets will be generated for each of the co-primary efficacy endpoints. The same co-primary analysis models (Section 8.3) will be applied to the multiple imputed datasets and the results combined via Rubin’s rules (Rubin, 1976)." — [[sap301.txt](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf), SAP p.25]

> "Based on the results of the Shapiro-Wilk’s test (p<0.0001 for each treatment arm in each study), the protocol specified that the primary analysis for GSP change from baseline would be based on the ranks." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf), p.102]

> "Rather than ranking the baseline and EOT values and calculating the difference in ranks, this reviewer also conducted a ranked analysis using the same model in which the change from baseline values were calculated on the original scale, and then the differences ranked (‘Ranks of Differences’), rather than analyzing the difference in ranks." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf), p.102]

> "For an analysis with a covariate for the ranked baseline value in the model, the analysis for the ‘difference of the ranks’ is equivalent to an analysis of the ranks of the EOT values, as long as the model is adjusted for the baseline ranks." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf), p.87]

### Implementation notes (inference)

- Per imputed dataset m: (a) for each of Visits 2, 3, 4, 10, 11, 12 compute `rank(gsp, ties = "average")` over all subjects with a value at that visit, arms pooled; (b) per subject take the median of available baseline-visit ranks and of available EOT-visit ranks; (c) y = EOT rank - baseline rank; (d) `lm(y ~ trt + base_rank + center)`; then pool the treatment coefficient with Rubin's rules. SAS: PROC RANK by visit, PROC MIXED/GLM by imputation, PROC MIANALYZE.
- Because ranking is done per visit before taking the median, a subject with fewer than three visits has a median over fewer ranks, and visit-level sample sizes differ, so ranks are not on exactly the same scale across visits. Whether ranks were computed on the imputed EOT summary or on visit-level imputed values is not specified; the SAP says the continuous EOT data "for each of Days 41, 42, and 43 will be imputed", implying visit-level imputation followed by visit-level ranking.
- The equivalence FDA notes: with y = R_EOT - R_base and R_base as a covariate, the treatment estimate and test are identical to regressing R_EOT on treatment + R_base + center (the baseline coefficient shifts by 1). So the "difference of ranks" analysis is effectively a rank ANCOVA of EOT rank adjusted for baseline rank. The LS means differ in level (hence -14.9/14.8 centered near 0) but the treatment difference is the same.
- Ranks of differences: `rank(eot - base)` over all subjects, then the same linear model. LS means near the mid-rank (~175 for N≈350) confirm the outcome is a raw rank.
- The rank difference on its scale: N≈350, so a difference of -29.7 mean ranks is about 8.5% of the rank range. No back-transformation to mg is offered; FDA used medians/quartiles for presentation.
- The Shapiro-Wilk step leaves decisions open: alpha (0.05 presumably), residuals vs raw changes, and that it is run on observed cases before imputation.
- Control-based imputation with a 3-SD donor trimming is asymmetric by arm; with PROC MI this is typically done with a MONOTONE REG model fitted to vehicle data only (MNAR statement, MODELOBS). The SAP pages read do not name the procedure.
- Residual df / combining rule for the pooled test with 20 imputations is standard Rubin (Barnard-Rubin df if using MIANALYZE with EDF); not stated.

### Sources consulted

- [FDA Multi-Discipline Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217347Orig1s000MultidisciplineR.pdf) — fetched (mdr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/217347s000lbl.pdf) — fetched (label.txt)
- [SAP (NCT03836287, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/SAP_001.pdf) — fetched (sap301.txt; SAP v2.0, 30 July 2021)
- [Protocol (NCT03836287, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/87/NCT03836287/Prot_000.pdf) — fetched (prot301.txt)
- [SAP (NCT03948646, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/46/NCT03948646/SAP_001.pdf) — fetched (sap302.txt; same GSP methods and same sample-size text as 301)
- [Protocol (NCT03948646, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/46/NCT03948646/Prot_000.pdf) — fetched (prot302.txt)
- Pariser et al., J Am Acad Dermatol 2025 (PMID 40054501) — not in Europe PMC open access; not fetched
