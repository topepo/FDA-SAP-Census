# Fremanezumab-vfrm (Ajovy) — BLA 761089

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: parametric primary with a rank-based fallback that was invoked.

**Source documents:** [SAP (NCT02629861, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) · [SAP (NCT02621931, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/31/NCT02621931/SAP_001.pdf) · [Protocol (NCT02629861, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/Prot_000.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/761089s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 24129. Neurology (migraine prevention). Teva. Approved 2018.

**Summary:** Two 12-week, three-arm, placebo-controlled trials (Study 30050 episodic migraine; Study 30049 chronic migraine). The SAP specified ANCOVA on change in monthly average migraine/headache days, with a pre-specified switch: if the Shapiro-Wilk test on the ANCOVA residuals had p ≤ 0.01, an unstratified, unadjusted two-sample Wilcoxon rank-sum test (SAS NPAR1WAY, normal-approximation p-value), run separately for each active arm vs placebo, became the primary analysis and ANCOVA became supportive. The switch fired in both trials; all Wilcoxon p-values were <0.0001. Because no rank-based effect estimate was specified, FDA and the label present ANCOVA LS means/differences alongside observed medians and the Wilcoxon p-value.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says no SAP/protocol posted on ClinicalTrials.gov. Both trials have a protocol and SAP posted (SAP with Amendment 02).
- The census says "no separate dedicated Statistical Review PDF exists" — correct (StatR URL returns a stub); the statistical review is inside the MedR PDF ("Statistical & Clinical Efficacy Review", Sharon Yan/Suhail Kasim).
- The census does not record the decision rule details (Shapiro-Wilk on ANCOVA residuals, threshold 0.01 raised from 0.001 at FDA request) or the ANCOVA terms; all are available in the SAP.
- The census "Missing data/bias" omits the MI sensitivity analysis (10 imputations, placebo-based for AE/lack-of-efficacy dropouts).

## Study TV48125-CNS-30050 (HALO EM, NCT02629861) and Study TV48125-CNS-30049 (HALO CM, NCT02621931)

Methods are identical except for the endpoint variable and the dose regimens; differences are flagged.

### Design

- Arms, 1:1:1 [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) p.17; [sap_049](https://cdn.clinicaltrials.gov/large-docs/31/NCT02621931/SAP_001.pdf) p.17-18]: placebo; fremanezumab 675 mg once then placebo ("quarterly"); fremanezumab monthly (050: 225/225/225 mg; 049: 675/225/225 mg). Planned N 768 (050) and 1020 (049). Randomized and dosed (ITT): 875 in 050, 1130 in 049 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.189, p.216]. Per-arm randomized N: Not stated in the pages consulted beyond "FMB 581 + PBO 294" (050) and "FMB 750 + PBO 371" (049) with at least 1 injection [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.186, p.214].
- Randomization stratification: sex (2 levels), country (050: 9 countries; pooled to 2 regions for analysis), baseline preventive migraine medication use (yes/no) [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) p.46; [sap_049](https://cdn.clinicaltrials.gov/large-docs/31/NCT02621931/SAP_001.pdf) p.26].
- Double-blind, placebo-controlled, 28-day run-in + 12-week treatment (3 monthly injections).
- Primary analysis population: Full Analysis Set = ITT patients who received at least 1 dose and have at least 10 days of post-baseline efficacy assessments on the primary endpoint [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §3.3 p.28]. FAS N: 050 = 290 / 288 / 287 (placebo / quarterly / monthly); 049 = 371 / 375 / 375 [[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) p.17, p.19].

### Endpoint

- 050: change from baseline in monthly average number of migraine days during the 12 weeks after first dose. 049: change from baseline in monthly average number of headache days of at least moderate severity during the 12 weeks after first dose [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §6.2.1 p.36; [sap_049](https://cdn.clinicaltrials.gov/large-docs/31/NCT02621931/SAP_001.pdf) §6.2.1 p.37].
- Derivation: from daily e-diary. Post-baseline value = (sum of event days over the 12-week period / number of days with diary assessments in the 12-week period) × 28; baseline = same ratio over the 28-day run-in × 28; change = post-baseline − baseline (formula symbols are lost in the text layer; the surrounding prose "normalized to 28 days equivalent" and "prorated to 28 days" gives the meaning) [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §6.1 p.35-36, §4.5 p.31]. Patients with <10 diary days post-dose are not in the FAS.
- Variable type: bounded quasi-continuous (0 to 28 days/month, change roughly −28 to +28). Sources say only "significant deviation from the normal distribution assumption" [[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) p.16]; no skewness statistics given.

### Hypothesis and contrast

- H0: equal mean change in active vs placebo; two-sided; alpha 0.05 [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §6.2.2 p.37, §4.4 p.30-31].
- Contrasts: each active regimen vs placebo, pairwise (two separate two-sample tests).
- Estimand language: Not stated (pre-ICH E9(R1)).

### Decision rule

- Trigger: Shapiro-Wilk normality test on the residuals from the primary ANCOVA model (one model with all three arms; residuals pooled) [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §6.2.2 p.37].
- Threshold: p ≤ 0.01 switches the primary analysis to Wilcoxon rank-sum; ANCOVA then becomes supportive. The threshold was 0.001 in Amendment 01 (27 March 2017) and changed to 0.01 in Amendment 02 (18 May 2017) after FDA said 0.001 "seems too small" [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) p.10; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.165].
- Outcome: fired in both trials. "Because of significant deviation from the normal distribution assumption, the non-parametric analysis of Wilcoxon rank-sum test was assumed to be the primary analysis based on the SAP" [[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) p.16, p.18]. The Shapiro-Wilk statistic/p-value itself: Not stated.
- Same rule applied to every continuous secondary endpoint ANCOVA [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §6.3.2 p.40].

### Primary analysis method

- Test name: "Wilcoxon rank-sum test ... using SAS procedure NPAR1WAY for each active treatment group and placebo group" [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) p.37].
- What is ranked: the response only (per-patient change from baseline). Ranking scope: the two groups in each pairwise comparison (each active arm vs placebo run separately). Score type: Wilcoxon scores; tie handling: Not stated (NPAR1WAY default is midranks).
- Stratification: none. Covariates: none (the randomization strata and baseline are not used in the rank test).
- Test statistic and reference distribution: "P value based on normal approximation from this procedure" [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) p.37]. Continuity correction: Not stated. Exact test: not used.
- Parametric model it replaced (reported as supportive), fitted with PROC MIXED on all three arms [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) p.37]:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment (TREAT) | categorical | 3 | placebo, quarterly, monthly |
| Sex (SEX) | categorical | 2 | stratification factor |
| Region (REGION) | categorical | 2 | United States vs Other (pooled countries) [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) Table 2 p.30] |
| Baseline preventive migraine medication use (BMU) | categorical | 2 | yes/no; stratification factor |
| Baseline value of the endpoint (BASE) | continuous | — | 050: baseline migraine days; 049: baseline headache days of at least moderate severity |
| Years since onset of migraine (YOD) | continuous | — | |

### Effect estimate and interval

- No rank-based estimator (no Hodges-Lehmann) was specified or reported. FDA: "The Wilcoxon rank-sum test does not provide estimates of the treatment difference; the relevant observed medians of the treatment groups are provided" [[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) p.16].
- Reported estimate: ANCOVA LS mean per arm (SE, 95% CI) and LS mean difference vs placebo (SE, 95% CI) [[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) Table 3 p.17, Table 4 p.19].

### Missing data and intercurrent events

- Primary: no imputation; 12-week average is prorated from available diary days (≥10 days required) [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §4.5 p.31].
- Sensitivity 1: MMRM on monthly values (months 1-3; month missing if <10 diary days); fixed effects baseline, treatment, sex, region, preventive medication use, years since onset, month, treatment×month; unstructured covariance [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §6.2.3.1 p.37-38].
- Sensitivity 2: multiple imputation, PROC MI, 10 datasets; active-arm patients who terminated early for adverse event or lack of efficacy are reassigned to placebo for imputation; each dataset analyzed by the ANCOVA; combined with PROC MIANALYZE [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §6.2.3.2 p.38]. No MI version of the rank test was specified.
- Amount missing: 90% (050) and 92% (049) completed double-blind treatment [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.189, p.216].

### Multiplicity

- Fixed-sequence testing at two-sided 0.05 over 12 (050) / 13 (049) ordered comparisons. 050 starts with monthly vs placebo on the primary, then the 50% responder rate for monthly, then quarterly vs placebo on the primary [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §4.4 p.30-31]. 049 starts with 675/225/225 vs placebo on the primary; quarterly vs placebo on the primary is 5th [[sap_049](https://cdn.clinicaltrials.gov/large-docs/31/NCT02621931/SAP_001.pdf) §4.4 p.30-31].

### Sample size assumptions

- 050: 225 completers/arm (768 randomized, 12% dropout) gives 90% power for a 1.6-day difference, SD 5.2, alpha 0.05 [[sap_050](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) §2.3 p.26].
- 049: 289 evaluable/arm (867 total) gives at least 90% power for a 1.7-day difference, SD 6.29, alpha 0.05 [[sap_049](https://cdn.clinicaltrials.gov/large-docs/31/NCT02621931/SAP_001.pdf) §2.3 p.26]. Calculations are for the parametric comparison; no adjustment for the rank test is stated.

### Software and code

SAS. Verbatim from the SAP [[sap_050.txt](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) p.37]:

```sas
ODS OUTPUT DIFFS=XXX LSMEANS=XXX TESTS3=XXX;
PROC MIXED DATA=XXX;
       CLASS TREAT SEX BMU REGION;
       MODEL CHG=BASE YOD BMU SEX TREAT REGION/S;
       LSMEANS TREAT/PDIFF CL ALPHA=0.05;
RUN;
```

MMRM sensitivity [[sap_050.txt](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) p.38]:

```sas
ODS OUTPUT DIFFS=XXX LSMEANS=XXX TESTS3=XXX;
PROC MIXED DATA=XXX METHOD=REML;
        CLASS USUBJID MONTH TREAT SEX BMU REGION;
        MODEL CHG=BASE YOD BMU SEX TREAT MONTH TREAT*MONTH/S;
        REPEATED MONTH/SUBJECT=USUBJID TYPE=UN R;
        LSMEANS TREAT TREAT*MONTH/PDIFF CL ALPHA=0.05;
RUN;
```

No NPAR1WAY code is given in the SAP.

### Results as presented

- FDA layout (same in statistical review Tables 15/28 and CDTL Tables 3/4): columns = placebo, quarterly, monthly with FAS N; row blocks = Baseline (mean (SD), median); "ANCOVA Analysis" (LS mean (SE), 95% CI, LS mean difference vs placebo (SE), 95% CI, p-value); "Observed median" (of change); "p-value from Wilcoxon rank-sum" (asterisk "p-value from the primary analysis" in the 050 table); "MMRM as sensitivity analysis" (LS mean (SE) at Month 3, difference, p-value).
- Label §14 (Tables 2 and 3): baseline mean, change from baseline (the ANCOVA LS mean), difference from placebo, p-value "<0.001"; no medians and no mention of the Wilcoxon test [[label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/761089s000lbl.pdf) p.8, p.11].

| Study | Statistic | Placebo | Quarterly | Monthly |
|---|---|---|---|---|
| 050 | N (FAS) | 290 | 288 | 287 |
| 050 | Baseline mean (SD) | 9.1 (2.7) | 9.2 (2.6) | 8.9 (2.6) |
| 050 | ANCOVA LS mean change (SE) | −2.2 (0.24) | −3.4 (0.25) | −3.7 (0.25) |
| 050 | LS mean diff vs placebo (95% CI) | | −1.3 (−1.79, −0.72) | −1.5 (−2.01, −0.93) |
| 050 | ANCOVA p | | <0.0001 | <0.0001 |
| 050 | Observed median change | −2.7 | −4.0 | −4.2 |
| 050 | Wilcoxon rank-sum p (primary) | | <0.0001 | <0.0001 |
| 049 | N (FAS) | 371 | 375 | 375 |
| 049 | Baseline mean (SD) | 13.3 (5.8) | 13.2 (5.5) | 12.8 (5.8) |
| 049 | ANCOVA LS mean change (SE) | −2.5 (0.31) | −4.3 (0.31) | −4.6 (0.30) |
| 049 | LS mean diff vs placebo (95% CI) | | −1.8 (−2.46, −1.15) | −2.1 (−2.76, −1.45) |
| 049 | ANCOVA p | | <0.0001 | <0.0001 |
| 049 | Observed median change | −2.5 | −4.2 | −4.5 |
| 049 | Wilcoxon rank-sum p (primary) | | <0.0001 | <0.0001 |

[[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) p.17, p.19; [medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.193, p.220]

- Figures: histogram of change from baseline in bins of 2 days (050) / 3 days (049) by arm, in the review and label [[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) p.17-19; [label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/761089s000lbl.pdf) p.9, p.12]; MMRM LS mean ± SE by month.

### Sensitivity and supportive analyses

- ANCOVA (supportive): see table; same conclusion.
- MMRM at Month 3: 050 differences −1.0 (p=0.0013) and −1.2 (p=0.0002); 049 −1.4 (p=0.0007) and −1.9 (p<0.0001) [[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) p.17, p.19].
- Excluding subjects whose second dose was <25 days after the first; per-protocol set: "similar" [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.194, p.221].
- MI sensitivity results: Not stated in the pages consulted.

### FDA reviewer comments and reanalyses

- FDA originally suggested the ANCOVA (one post-baseline value per patient) and negotiated the Shapiro-Wilk threshold up from 0.001 to 0.01 [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.165].
- Results tables are "Statistical Reviewer's Analysis" (reproduced by FDA) [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.193].
- Reviewer agreed that ANCOVA results be shown in the label although the Wilcoxon test was primary [[cdtl](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) p.16].
- Text of the statistical review gives −1.8 for the 050 monthly difference [[medr](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) p.193]; the table (−1.5) is the correct figure.

### Verbatim specification excerpts

> "An analysis of covariance (ANCOVA) method will be applied for the primary analysis. The model will include treatment, sex, region (Table 2) , and baseline preventive migraine medication use (yes/no) as fixed effects; the baseline number of migraine days and years since onset of migraine as covariates." — [[sap_050.txt](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf), p.37]

> "The normality of the residuals from the ANCOVA model will be checked using Shapiro Wilk’s normality test. In case that the Shapiro Wilk’s test has a p value ≤0.01, Wilcoxon rank-sum test will be conducted as the primary analysis using SAS procedure NPAR1WAY for each active treatment group and placebo group. P value based on normal approximation from this procedure will be selected for the treatment comparison. The ANCOVA analysis will be performed as a supportive analysis." — [[sap_050.txt](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf), p.37; identical in sap_049.txt, p.38]

> "The Division communicated that the significance level of 0.001 for testing normality based on the Shapiro Wilk’s test seems too small." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf), p.165]

> "Because of significant deviation from the normal distribution assumption, the non-parametric analysis of Wilcoxon rank-sum test was assumed to be the primary analysis based on the SAP." — [[cdtl.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf), p.16]

> "The Wilcoxon rank-sum test does not provide estimates of the treatment difference; the relevant observed medians of the treatment groups are provided in Table 3." — [[cdtl.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf), p.16]

> "For the patients in the active treatment group who are early terminated with reasons of adverse event or lack of efficacy, they will be assigned to placebo group so their missing values will be imputed using data from the placebo treated patients" — [[sap_050.txt](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf), p.38]

### Implementation notes (inference)

- Inference: the decision step is `PROC UNIVARIATE NORMAL` (or `shapiro.test()`) on the residuals output from the three-arm ANCOVA; a single pooled test, not per arm. With N around 865-1120 the test has high power, so a 0.01 threshold will nearly always fire for a bounded day-count endpoint; the practical effect is that the rank test is the de facto primary.
- Inference: the rank test is `PROC NPAR1WAY WILCOXON; CLASS TREAT; VAR CHG;` on a two-arm subset, reading the "Normal Approximation, Two-Sided Pr > |Z|" line. NPAR1WAY applies a continuity correction of 0.5 by default (`CORRECT=YES`); the SAP does not say whether it was kept. R equivalent: `wilcox.test(chg ~ treat, exact = FALSE, correct = TRUE)`.
- The rank test ignores the stratification factors and baseline; a programmer wanting to keep them would need van Elteren or rank ANCOVA, which this SAP did not use.
- No estimator was pre-specified to accompany the rank test. A similar SAP should specify one (e.g., Hodges-Lehmann shift with CI) to avoid reporting parametric LS means next to a nonparametric p-value.
- The fixed-sequence procedure uses whichever p-value is primary for each endpoint, so the test type can differ across steps of the hierarchy (ANCOVA for some endpoints, Wilcoxon for others).

### Sources consulted

- [SAP (NCT02629861, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/SAP_001.pdf) — fetched (sap_050.txt)
- [SAP (NCT02621931, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/31/NCT02621931/SAP_001.pdf) — fetched (sap_049.txt)
- [Protocol (NCT02629861, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/61/NCT02629861/Prot_000.pdf) and .../31/NCT02621931/Prot_000.pdf — fetched (prot_050.txt, prot_049.txt); not needed beyond the SAPs
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000SumR.pdf) — fetched (cdtl.txt)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000MedR.pdf) — fetched (medr.txt; contains the statistical review)
- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2018/761089Orig1s000StatR.pdf) — failed (no such document; stub page)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/761089s000lbl.pdf) — fetched (label.txt)
- JAMA / NEJM publications — not attempted (SAPs available)
