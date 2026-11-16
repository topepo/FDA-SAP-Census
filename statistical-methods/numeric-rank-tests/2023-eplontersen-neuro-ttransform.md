# Eplontersen (Wainua) — NDA 217388

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: parametric primary with a rank-based fallback that was invoked.

**Source documents:** [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) · [Protocol and SAP (NCT04136184, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2023/217388s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 31325. Neurology (polyneuropathy of hereditary transthyretin amyloidosis). Ionis Pharmaceuticals, Inc. (AstraZeneca partner). Approval 2023.

**Summary:** Eplontersen (single arm of an open-label trial) was compared with an external placebo arm on change from baseline to Week 35 in mNIS+7 by ANCOVA with a propensity-score adjustment and multiple imputation. The SAP made a stratified Wilcoxon rank-sum test the contingent analysis if a Shapiro-Wilk test of the ANCOVA residuals was significant at 0.01. For mNIS+7 the trigger fired (p<0.01, driven by one subject with a change of -80.6) and the applicant supplied the stratified Wilcoxon result ("rank diff = -9.48 with p<0.0001"). FDA nevertheless treated the ANCOVA (LSM difference -9.01, 95% CI -13.48 to -4.54) as the confirmed primary result, and the label reports only the ANCOVA.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census records the Shapiro-Wilk/stratified-Wilcoxon rule but not that the trigger actually fired for mNIS+7, nor that FDA set the rank result aside [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.44].
- The census describes "propensity-score weighting/covariate" interchangeably. The SAP example code weights the MMRM (ATT weights); for the Week 35 ANCOVA the SAP says "adjusted by propensity score" and FDA lists "propensity score" among the ANCOVA model terms for mNIS+7 and "propensity score weight" for Norfolk QOL-DN and TTR [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.47-49; [intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.43, p.45-46]. How the score enters the ANCOVA is therefore ambiguous in the sources.
- The census states the FAS as "all randomized/treated subjects with a baseline and ≥1 post-baseline mNIS+7 or Norfolk QOL-DN assessment"; correct per SAP §4.5.3, but FDA's SAP summary describes it as all randomized subjects who received at least one dose [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.39 vs p.41].
- The census quotes the TTR conversion formula from "SAP p.46 of 47"; in the converted text that sentence sits on the page whose footer reads "Page 47 of 48".

## NEURO-TTRansform (ION-682884-CS3, NCT04136184) vs external placebo from NEURO-TTR (ISIS-420915-CS2, NCT01737398)

### Design

- Open-label; 168 randomized 6:1 to eplontersen 45 mg SC every 4 weeks (n=144) or inotersen reference (n=24). Comparator for efficacy: placebo arm of NEURO-TTR (n=60 randomized) [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.41 Table 10]. Not a randomized comparison.
- Randomization stratification factors (within CS3): Not stated in the pages consulted. Not relevant to the external comparison.
- Analysis population: FAS = randomized, received at least 1 injection, with "a Baseline and at least 1 post-Baseline efficacy assessment for mNIS+7 score or Norfolk QOL-DN questionnaire total score"; same rule applied to NEURO-TTR [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP §4.5.3]. FAS N: eplontersen 140, external placebo 59 [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.41].

### Endpoint

- mNIS+7 composite score (higher = worse), change from baseline to Week 35. Baseline is the mean of two replicate assessments; Week 35 is a single assessment [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP §4.10.1.3].
- Only on-treatment data (within 52 days of last dose and inside the visit window) are used in the primary analysis [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.49, p.53].
- Observed distribution: eplontersen change mean -0.03 (SD 16.28), median 0.05, range -80.6 to 47.4; placebo mean 9.76 (SD 14.20), median 9.85, range -19.4 to 40.6 [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.43 Table 13]. One eplontersen subject with change -80.5591 caused the normality rejection [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.44].
- Same analysis for Norfolk QOL-DN total score at Week 35 (key secondary). Serum TTR percent change used an MMRM.

### Hypothesis and contrast

- Eplontersen vs external placebo, difference in mean change from baseline at Week 35; two-sided alpha 0.025 at the Week 35 interim [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.47 §4.10.2.1].
- Estimand: Not stated in estimand terms. The propensity weighting scheme is "ATT (average treatment effect for treated)" [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.47].

### Decision rule (only if the method was contingent)

- Trigger: Shapiro-Wilk test at the 0.01 level on the ANCOVA residuals (for TTR: on MMRM residuals, with histogram of marginal studentized residuals and normal probability plot) [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.48-49].
- Scope: residuals of the primary model, pooled over arms (per-arm testing is not mentioned). Which imputed dataset(s) the residuals come from: Not stated.
- Consequence: for TTR, the stratified Wilcoxon "will be considered as Primary Analysis"; for mNIS+7/Norfolk the SAP says only that it "will be provided" [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.49].
- Outcome for mNIS+7: "The Shapiro-Wilks test did produce a p <0.01, so the Applicant provided a stratified Wilcoxon rank sum test" [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.44]. Outcome for Norfolk QOL-DN and TTR: Not stated.
- Who decided: the applicant ran the rule; FDA decided to rely on the ANCOVA.

### Primary analysis method

Parametric model (primary as reported):

- ANCOVA on change from baseline at Week 35, fitted to each of 500 multiply imputed datasets, combined by Rubin's rules [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.43; [prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.52-53].

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | eplontersen, NEURO-TTR placebo |
| Disease stage | categorical | 2 | Stage 1, Stage 2 |
| V30M mutation | categorical | 2 | Yes, No |
| Previous treatment with tafamidis (Vyndaqel) or diflunisal | categorical | 2 | Yes, No |
| Baseline value of endpoint | continuous | | |
| Propensity score | weight or continuous covariate | | "adjusted by propensity score"; see discrepancy note |

- Propensity score: logistic regression of treatment (event = eplontersen) on disease stage, V30M, previous treatment (all categorical). Weights: 1 for eplontersen; pred/(1-pred) for external placebo [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.47].

Rank-based contingent analysis:

- Test name: "stratified Wilcoxon rank sum test" [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.49].
- Strata: specified under Sensitivity Analysis 1 as "4 quartiles levels of the propensity scores (<=Q1, >Q1 and <= Median, > Median and <=Q3, > Q3)", and described as "adjusted by stratified propensity score weights" [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.50].
- What is ranked, ranking scope, score type, stratum weights, tie handling: Not stated.
- Test statistic and reference distribution: Not stated.
- Whether the test was run on observed cases or on imputed data: Not stated.

### Effect estimate and interval

- Parametric: LS means per arm, difference in LS means with 95% CI.
- Rank-based: "Hodges-Lehmann estimates of the differences between ION-682884 group and NEURO-TTR placebo group based on the Wilcoxon Rank Sum Test will also be provided" [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.50]; for secondary endpoints, "distribution-free confidence intervals" [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.54]. The applicant's reported number is "rank diff = -9.48" [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.44]; the HL CI is not reported by FDA.

### Missing data and intercurrent events

- Missing Week 35 mNIS+7: multiple imputation under MAR, imputation model with disease stage, V30M, previous treatment, baseline value, "stratified by treatment group"; at least 500 imputed datasets; datasets with out-of-range imputed values are discarded and regenerated; seed 2855 [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.49, p.52-53].
- Missing: 3/140 (2.14%) eplontersen, 4/59 (6.78%) placebo [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.44 Table 14].
- Deaths: two eplontersen deaths. One (Day 100) had no Week 35 visit and was not in the FAS; the other (Day 282) had Week 35 data and was analyzed as observed [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.41, p.43]. No worst-rank rule.
- How MI and the Wilcoxon test were combined: Not stated.

### Multiplicity

- Fixed sequence at Week 35: serum TTR and mNIS+7 each at two-sided 0.025, then Norfolk QOL-DN at 0.025 if both significant [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.47, p.49; [intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.39]. All three significant, so Week 35 was final for them.

### Sample size assumptions

- 108 evaluable eplontersen vs 52 evaluable NEURO-TTR placebo; mNIS+7 difference 19.6 (placebo +23.8, eplontersen +4.2 at Week 66), SD 20, at least 90% power, two-sided alpha 0.025 [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP §4.13]. Based on a parametric comparison.

### Software and code

- SAS. Example code for the propensity model and the weighted MMRM [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.47], verbatim:

```sas
PROC LOGISTIC data=xxx;
CLASS trtp distac pretrtc v30ttrc ;
MODEL trtp (event="ION-682884")=distac pretrtc v30ttrc ;
OUTPUT out=Propensity_Scores pred=pred;
run;

PROC MIXED data=xxx;
CLASS trtp visit usubjid distac pretrtc v30ttrc;
MODEL endpoint=trtp distac pretrtc v30ttrc baseline visit visit*baseline visit*trtp /
DDFM=kr;
REPEATED visit / SUBJECT=usubjid TYPE=un;
LSMEANS visit*trtp / CL DIFF;
Weight wt;
RUN;
```

- No code is given for the ANCOVA or for the stratified Wilcoxon test.

### Results as presented

- FDA Table 13 layout: columns eplontersen, placebo; blocks Baseline (n, mean (SD), median, Q1/Q3, min/max), Change from baseline at Week 35 (same statistics, observed), Adjusted analysis (n, LSM, 95% CI of LSM, difference in LSM, 95% CI, p-value) [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.43].
- Label Table 2: baseline mean (SD), LS mean (SEM) change, LS mean difference (95% CI), p-value; footnote names the ANCOVA and multiple imputation. Label also shows a histogram of mNIS+7 change [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2023/217388s000lbl.pdf) §14]. No rank-based statistic in the label.

| mNIS+7 | Eplontersen (N=140) | External placebo (N=59) |
|---|---|---|
| Change at Week 35, observed n | 137 | 55 |
| Mean (SD) | -0.03 (16.281) | 9.76 (14.199) |
| Median (Q1, Q3) | 0.05 (-6.30, 7.65) | 9.85 (-2.07, 19.32) |
| LSM (95% CI), MI | 0.2150 (-3.4589, 3.8888) | 9.2247 (5.5380, 12.9115) |
| Difference in LSM (95% CI); p | -9.0097 (-13.4827, -4.5368); <0.0001 | |
| Stratified Wilcoxon (applicant) | "rank diff = -9.48 with p<0.0001" | |

Source: [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.43-44].

### Sensitivity and supportive analyses

- ANCOVA with the one outlying subject removed: difference -8.6522, p<0.0001; Shapiro-Wilk p=0.0457 [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.44].
- Observed data only: -9.07 (-13.45, -4.68), p<0.0001. Per protocol: -7.56 (-11.96, -3.17), p=0.0007. FDA worst case (+20 for missing drug, -20 for missing placebo): -6.51 (-11.07, -1.95), p=0.0053 [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.45 Table 15].
- Planned by SAP: Sensitivity Analysis 1 (non-parametric stratified Wilcoxon with HL), MI under MAR / copy increments from reference / jump to reference, per-protocol, responder curves, 6-covariate propensity model, observed-data ANCOVA [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) SAP p.50-51]. FDA reports only some of these.
- Norfolk QOL-DN (same ANCOVA): -11.7897 (-16.8171, -6.7625), p<0.0001 [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.46 Table 17].

### FDA reviewer comments and reanalyses

- FDA re-ran the MI ANCOVA and obtained -9.03 vs the applicant's -9.01, attributed to different random numbers across platforms [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.43].
- FDA on the rank fallback: normality "passed the check by removing just one subject"; and "well defined clinical endpoints are preferred to report effect size, instead of ranks in nonparametric methods such as the rank difference, which is difficult to interpret in clinical settings" [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) p.44].
- FDA noted the open-label external-control design is "potentially subject to bias" (census quote, intr.txt p.33).

### Verbatim specification excerpts

> "If the Shapiro-Wilks test assessing normality of the MMRM residuals is statistically significant at the 0.01 level, a stratified Wilcoxon rank sum test will be provided and the result will be considered as Primary Analysis for TTR." — [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf), SAP p.49]

> "Similarly to MMRM above, if the Shapiro-Wilks test assessing normality of the ANCOVA residuals is statistically significant at the 0.01 level, a stratified Wilcoxon rank sum test will be provided." — [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf), SAP p.49]

> "The non-parametric stratified Wilcoxon rank sum test will also be performed for the primary study endpoints adjusted by stratified propensity score weights as the sensitivity analysis. The stratum will consist of 4 quartiles levels of the propensity scores (<=Q1, >Q1 and <= Median, > Median and <=Q3, > Q3)." — [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf), SAP p.50]

> "The ATT (average treatment effect for treated) approach will be used with weight: =1 for subjects in the 682884-CS3 treated group; pred/(1-pred) for subjects in the NEURO-TTR placebo control group" — [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf), SAP p.47]

> "The Shapiro-Wilks test did produce a p <0.01, so the Applicant provided a stratified Wilcoxon rank sum test which showed a result of “rank diff = -9.48 with p<0.0001.”" — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf), p.44]

> "Removing this one subject from the analysis in the same ANCOVA model produced a result of “mNIS+7 score diff = -8.6522 with p<0.0001” and the Shapiro-Wilks test p-value 0.0457, higher than 0.01." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf), p.44]

> "In summary, the Agency considers the ANCOVA model result “mNIS+7 score diff = -9.0 with p<0.0001” from the Applicant confirmed." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf), p.44]

> "For each imputation method used, at least 500 imputed datasets will be generated." — [[prot_sap.txt](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf), SAP p.52]

### Implementation notes (inference)

- The propensity model has three binary covariates, so the fitted score takes at most 8 distinct values. "Quartiles of the propensity score" will therefore have heavy ties at the cut-points and the four strata may be unequal or even collapse; a programmer must decide how ties at Q1/median/Q3 are assigned and whether quartiles are computed over the pooled sample or one arm.
- "Stratified Wilcoxon rank sum test" with a Hodges-Lehmann estimate most plausibly means a van Elteren test (SAS `PROC NPAR1WAY` with a `STRATA` statement, or `PROC FREQ ... / CMH2 SCORES=MODRIDIT`) and a stratified HL estimate. The sources do not name the weighting. "Adjusted by stratified propensity score weights" suggests the propensity score enters only through the strata, not as observation weights.
- "rank diff = -9.48" is close in size to the ANCOVA difference on the score scale; it may be the stratified HL shift in mNIS+7 points rather than a difference in mean ranks. FDA calls it a "rank difference". This cannot be resolved from the documents.
- With 500 imputed datasets, a rank test has no standard Rubin's-rules combination; options a programmer would face are observed-case only, or combining a normalized statistic across imputations. The sources do not say what was done.
- Shapiro-Wilk on residuals from an MI ANCOVA requires choosing which residuals (observed-case fit, one imputation, or each imputation). Not stated.
- Lesson for a similar design: the trigger was highly sensitive to a single outlier (n=199, alpha 0.01), and the regulator overrode the prespecified switch in favor of an interpretable scale.

### Sources consulted

- [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/217388Orig1s000IntegratedR.pdf) — fetched (intr.txt)
- [Protocol and SAP (NCT04136184, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/84/NCT04136184/Prot_SAP_000.pdf) — fetched (prot_sap.txt; protocol Amendment 5 and SAP v2.1, 03 Jun 2022). SAP page citations use the first number of the footer "Page X of Y" that closes the page.
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2023/217388s000lbl.pdf) — fetched (label.txt)
- Europe PMC full text [PMC10540057](https://pmc.ncbi.nlm.nih.gov/articles/PMC10540057/) (Coelho et al., JAMA 2023) — failed (HTTP 500 from the full-text endpoint)
