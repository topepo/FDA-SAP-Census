# Tofersen (Qalsody) — NDA 215887

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [SAP (NCT02623699, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) · [Protocol (NCT02623699, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/Prot_000.pdf) · [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2023/215887Orig1s000Correctedlbl.pdf)

Census entry: [`README.md`](../../README.md) line 26603. Neurology (SOD1-ALS). Biogen. Accelerated approval 2023.

**Summary:** VALOR (Study 233AS101 Part C) compared tofersen 100 mg with placebo (2:1) on change from baseline to Week 28 in ALSFRS-R total score in the faster-progressing "mITT" subgroup (n=60). The primary test was a joint rank test (Berry 2013): deaths ranked worst by time of death, all others ranked by Day-197 change (MI-imputed where missing); the ranks were analyzed by ANCOVA in each of 100 imputed datasets and the treatment estimates combined with Rubin's rules (PROC MIANALYZE). The effect estimate came from a separate ANCOVA+MI on the raw change. Result: difference 1.2 points (95% CI −3.2, 5.5), joint-rank p = 0.9689; the trial failed its primary endpoint.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says no protocol/SAP posted on ClinicalTrials.gov. Both are posted; the SAP PDF contains the Parts A/B SAP followed by the Part C (VALOR) SAP, Final V2.0.
- The census says randomization was stratified by "fast-progressor status, edaravone use, and riluzole use": correct, but the analysis covariate is a single 3-level riluzole/edaravone factor (collapsible to 2 levels), and time since symptom onset is added as a covariate.
- The census labels ANCOVA on MI data a "sensitivity/nominal analysis". More exactly, it has two roles: it is the source of the reported effect estimate and CI for the primary estimand, and its p-value is a sensitivity analysis.
- The census does not mention that the primary population (mITT) is the enriched fast-progressor subset (39 tofersen, 21 placebo), not all 108 randomized.

## VALOR — Study 233AS101 Part C (NCT02623699)

### Design

- Tofersen 100 mg intrathecal vs placebo, 2:1; 108 randomized and dosed (72 / 36) [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.43].
- Randomization stratified by 3 factors: meets prognostic enrichment criteria for rapid progression (yes/no); edaravone use at baseline (yes/no); riluzole (without edaravone) use at baseline (yes/no). Use of both drugs is classified as edaravone use [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.90].
- Double-blind, placebo (sham procedure) controlled, 28 weeks (Day 197).
- Primary population mITT: randomized, at least 1 dose, and meeting the enrichment criteria: (a) one of 9 listed SOD1 mutations and pre-randomization ALSFRS-R slope ≥ 0.2/month, or (b) other SOD1 mutation with slope ≥ 0.9/month; slope = (48 − baseline score)/months since symptom onset [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.90, p.103]. N = 39 tofersen, 21 placebo [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.43]. Mis-stratified subjects are analyzed in the correct population [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.105].

### Endpoint

- Change from baseline to Week 28 (Day 197) in ALSFRS-R total score (0-48; higher is better; change = post − baseline, baseline = last non-missing value before first dose) [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.103, p.139].
- Total score is the sum of 4 domain scores (bulbar, respiratory, fine motor, gross motor); each domain is imputed separately and then summed [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.135 Table 9, p.141].
- Distributional remarks: FDA notes the MI assumes multivariate normality and "The Applicant did not check the normality assumption" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.250].

### Hypothesis and contrast

- Two-sided, 5% level; tofersen vs placebo [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.103].
- Estimand (composite strategy) [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.139-140]: population mITT; variable change to Day 197; intercurrent events death and withdrawal handled "using a composite strategy in which subjects who have these intercurrent events are ranked against each other and against subjects without any intercurrent event using the joint rank methodology based on MI imputed datasets"; summary measure = difference in LS means of Day-197 change from the ANCOVA+MI.
- Treatment discontinuation without study withdrawal: observed post-discontinuation data are used (treatment-policy in effect) [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.134-135, p.137].

### Primary analysis method

- Test name: joint rank methodology using multiple imputation, with the ranked scores analyzed by analysis of covariance (summary table, sap p.120; "joint rank test (JRT) methodology" in sap p.139).
- Scoring algorithm, performed within each of the 100 imputed datasets, over all mITT subjects (both arms pooled) [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.137-138]:
  1. Classify each subject: Group 1 = completers with Day 197 data and subjects who withdrew for reasons other than death (their Day 197 value is the MI-imputed value); Group 2 = subjects who died.
  2. Compare every subject with every other subject; the subject gets +1 if their outcome is better, −1 if worse, 0 if the same.
     - Group 1 vs Group 2: the Group 1 subject is better.
     - Both in Group 1: compare Day 197 change from baseline in ALSFRS-R; higher (smaller decline) is better; equal change = tie (0).
     - Both in Group 2: the one who died later (days from first dose) is better; same day = tie (0).
  3. Subject score = sum of the comparison scores over all other subjects.
  4. Rank subjects on the summed scores; ties get the mean of the corresponding ranks.
  - Values imputed after death are not used for the rank score. Imputed values are not rounded [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.136 (OCR), p.137].
- Stratification: none in the ranking; adjustment is by covariates in the model on the ranks.
- Model fitted to the ranks in each imputed dataset (ANCOVA) [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.130, p.138, p.140]:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical (fixed effect) | 2 | tofersen 100 mg, placebo |
| Baseline ALSFRS-R total score | continuous | — | raw, not ranked |
| Baseline disease duration since symptom onset (months) | continuous | — | raw, not ranked |
| Riluzole or edaravone use | categorical | 3 (Edaravone use; Riluzole only; Neither) | collapsed to 2 (either vs neither) if edaravone use is <5 subjects in the population |

- Response: joint rank. Statistic: treatment difference in adjusted mean rank from each of 100 fits, combined by PROC MIANALYZE (Rubin's rules); p-value from the combined estimate (t reference distribution per MIANALYZE). "The p-value for the joint rank test will be based on combining the estimates for the treatment differences using PROC MIANALYZE" [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.140].
- Accompanying parametric model (source of the estimate; its p-value is sensitivity): ANCOVA on Day-197 change from baseline in ALSFRS-R total score, same terms as the table above, on each MI dataset, combined by PROC MIANALYZE. In this model the values imputed after death are used for subjects who died [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.136 (OCR), p.141].

### Effect estimate and interval

- Primary reported estimate: LS mean change per arm and LS mean difference with SE and 95% CI from ANCOVA+MI [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.140].
- Also specified: median change per arm with 95% CI per imputed dataset "by treating death as worse than the median (i.e. assign a low value)"; SE back-calculated from the CI and combined in PROC MIANALYZE; and the Hodges-Lehmann estimate of the median treatment difference per imputed dataset, combined by PROC MIANALYZE [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.140].
- Supportive: LS means of the rank scores with SE, difference and 95% CI [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.140].

### Missing data and intercurrent events

- MI model [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.134-135]: MCMC under multivariate normality, run by treatment group; "the MI model will be run iteratively so that data will be imputed up to and including the first intermittent missing record"; variables = treatment group, riluzole/edaravone use, baseline value of the endpoint, all available post-baseline values (Day 15 to Day 197 visits); run separately for mITT and non-mITT; 100 imputed datasets; relative efficiency expected about 98% or higher; data sorted by USUBJID first; seed for ALSFRS-R 5846892. A separate model per ALSFRS-R domain; out-of-range imputed domain values are reset to the scale limits (e.g., bulbar 0 to 12) [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.136 (OCR)].
- Deaths: included in the MI model, but ranked by time of death in the joint rank; in the ANCOVA+MI their imputed values are used.
- Amount missing: study discontinuation 8/72 tofersen, 3/36 placebo (ITT). mITT survival 59/60 (one death, tofersen arm) [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.43, p.250]. mITT-specific withdrawal counts: Not stated in text (Table 8 and related tables are images).

### Multiplicity

- Primary tested at two-sided 0.05; secondary endpoints tested sequentially only if the primary is significant: CSF SOD1, plasma NfL, SVC, HHD megascore, time to death or permanent ventilation, time to death [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.138-139; [intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.48]. Primary failed, so all later p-values are nominal.

### Sample size assumptions

- N = 60 in mITT gives 84% power for the joint rank test at two-sided 0.05, assuming ALSFRS-R slope −3.83 (placebo) vs −0.74 (tofersen) per month, pooled SD 3.166, and Week-28 survival 82% vs 90% [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.102]. Observed: about 8.1 vs 7.0 points decline over 28 weeks; survival 59/60 [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.249-250].

### Software and code

- "SAS®(Version 9.4)" [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.103]; PROC MIANALYZE named. No code in the SAP. FDA tables note "software: R" for descriptive tables.

### Results as presented

- FDA Integrated Review Table 8 is an image (sponsor CSR table; not extractable). Text: "−7.0-point decline in the tofersen group and −8.1-point decline in the placebo group; joint rank test plus multiple imputation p=0.9689" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.43].
- Label §14: "QALSODY-placebo adjusted mean difference [95% CI]: 1.2 [-3.2, 5.5]" with the joint rank test described in words; no p-value for ALSFRS-R [[label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2023/215887Orig1s000Correctedlbl.pdf) p.11].

| mITT | Tofersen (n=39) | Placebo (n=21) |
|---|---|---|
| Adjusted mean change in ALSFRS-R at Week 28 (ANCOVA+MI) | −7.0 | −8.1 |
| Difference (95% CI) | 1.2 (−3.2, 5.5) | |
| Joint rank + MI p-value | 0.9689 | |

- Planned displays: frequency of subjects in Groups 1 and 2; waterfall plot of Day-197 change (deaths/withdrawals shown at last observed value); line plots of LS means over time [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.140-141].

### Sensitivity and supportive analyses

- Generalized Gehan-Wilcoxon (Finkelstein-Schoenfeld) test on the joint ranked scores: "The T-statistic will first be calculated for the ranked scores obtained from the 100 MI complete datasets and the corresponding p-value will be obtained from PROC MIANALYZE" [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.140]. Summary table also lists "Joint Rank methodology; Wilcoxon test" [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.120].
- ANCOVA+MI p-value (nominal).
- MI model excluding subjects who died, then joint rank with deaths ranked lowest by time of death [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.141].
- Trimmed mean (Permutt and Li 2015): death/withdrawal assigned −999; trim to the top p fraction per arm, p = the smaller completion proportion; p-value by re-randomization, 10,000 draws, 2:1, two-sided as proportion of |T| exceeding |T0| [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.142-143].
- Tipping point: add shifts δc, δt to imputed Day-197 values, redo joint rank ANCOVA and raw ANCOVA across the 100 datasets [[sap](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) p.143].
- Results of these: Not stated in the FDA text consulted.
- OLE Week 52 (exploratory): ANCOVA+MI difference 2.5 (−3.2, 8.3), p=0.39 (mITT); ANCOVA of joint ranks p=0.83 (mITT), p=0.48 (ITT) [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.50-51].

### FDA reviewer comments and reanalyses

- FDA describes the primary analysis as an ANCOVA of joint ranked scores "in the mITT population, adjusting for baseline ALSFRS-R, edaravone or riluzole use, and time since symptom onset. Multiple imputation (MI) was used for missing data in survivors" [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.48].
- Sample-size assumptions were far off (assumed difference about 20 points, observed about 1) [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.249-250].
- MI normality assumption was not checked and no alternative was pre-specified [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.250].
- Post hoc sponsor analyses (ITT, baseline NfL as covariate) were finalized in SAP V3 after unblinding and are exploratory [[intr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) p.49].

### Verbatim specification excerpts

> "In this analysis, a subject’s joint rank score will be calculated by comparing each subject to every other subject in the study, resulting in a score of +1 if the outcome was better than the subject being compared, -1 if worse, and 0 if the same. The subject’s score will then be calculated by summing their comparison to all the other subjects in the study." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf), p.137]

> "Subjects in Group 2 will be given lower ranks than subjects in Group 1, with the lowest ranks being given to the subjects who die in the shortest time after first dose." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf), p.137]

> "Subjects who died will be included in the MI model but any values imputed after death will not be used for determining the rank score. Therefore, all subjects except withdrawals due to death will have a value at Day 197 (either observed or imputed)." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf), p.137]

> "The subjects will be ranked according to their subject rank scores in each of the 100 MI datasets. In the instance of ties, the mean of the corresponding ranks will be assigned." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf), p.138]

> "The ranked scores will be analyzed for each of the 100 MI complete datasets using an analysis of covariance model with treatment included as a fixed effect and adjusted for the following covariates: baseline disease duration since symptom onset , baseline ALSFRS-R total score, and use of riluzole or edaravone (as specified in Section 6.1 under Covariates). The p-value for the joint rank test will be based on combining the estimates for the treatment differences using PROC MIANALYZE." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf), p.140]

> "The Markov Chain Monte Carlo (MCMC) will be used under the multivariate normality assumption to impute the missing postbaseline scores in the endpoint by treatment group." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf), p.135]

> "The variable list in the model for imputations will include treatment group, riluzole/edaravone use, the corresponding baseline value for the endpoint, and all available postbaseline values. The MI model will be performed by population (mITT and non mITT). A set of 100 complete imputed datasets will be generated." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf), p.135]

> "The treatment difference for the median change from baseline will be obtained by determining the Hodges-Lehmann estimate for each of the 100 imputed datasets and using PROC MIANALYZE to obtain a single estimate of the median treatment difference and corresponding 95% confidence intervals." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf), p.140]

> "For subjects who died, the imputed values after death will be used in the ANCOVA analysis for change from baseline endpoints (e.g., change from baseline in ALSFRS-R total score)." — [[sap_p136_ocr.txt](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf); [SAP](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf#page=136) PDF p.136 has no text layer, text obtained by OCR]

### Implementation notes (inference)

- Inference: the summed pairwise score is a monotone function of the midrank of a single composite ordering (deaths ordered by survival time below all survivors, survivors ordered by change), so steps 2-4 equal `rank()` with average ties on a composite key. A programmer can build the key directly (e.g., for deaths: −1000 + days to death; for others: change) and call `PROC RANK TIES=MEAN` / `rank(ties.method = "average")` per imputation.
- Inference: the per-imputation model is `PROC MIXED/GLM; CLASS trt rilu_edar; MODEL jrank = trt base_alsfrs dur_onset rilu_edar;` with the `trt` difference and its SE passed to `PROC MIANALYZE`. Covariates enter unranked. R: `lm()` per imputation, pooled with `mice::pool` or Rubin's rules by hand.
- Combining rank analyses across imputations: ranks are recomputed within each imputed dataset, so the estimand (mean rank difference) is on a comparable scale (same n) across imputations. Rubin's rules on the rank-scale treatment coefficient is what the SAP specifies; the SAP does not discuss small-sample degrees of freedom (MIANALYZE default vs `EDF=`).
- Open choice: PROC MI MCMC "by treatment group" with treatment also listed in the variable list is redundant; in practice `BY trt` with `MCMC IMPUTE=MONOTONE` for intermittent gaps followed by a monotone step is a common reading of "run iteratively", but the SAP does not give the code.
- The reported effect size (LS mean difference on raw change, with imputed post-death values) and the p-value (joint rank, deaths worst) come from different models that treat death differently. The ANCOVA+MI p-value is not given in the FDA text consulted, so the two cannot be compared here; a similar plan should state which model supplies the estimate, the CI and the p-value.
- Withdrawals are not penalized: they sit in Group 1 with an MAR-imputed value. Only death is ranked worst. Permanent ventilation is not part of the ranking.

### Sources consulted

- [SAP (NCT02623699, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/SAP_001.pdf) — fetched (sap.txt; Part C SAP V2.0 begins about PDF p.80; PDF p.136 is image-only, OCR saved as sap_p136_ocr.txt)
- [Protocol (NCT02623699, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/99/NCT02623699/Prot_000.pdf) — fetched (prot.txt; not needed beyond the SAP)
- [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2023/215887Orig1s000IntegratedR.pdf) — fetched (intr.txt; primary results Table 8 is an image)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2023/215887Orig1s000Correctedlbl.pdf) — fetched (label.txt)
- NEJM 2022 publication and supplement — not attempted (NEJM blocks automated access; SAP available)
