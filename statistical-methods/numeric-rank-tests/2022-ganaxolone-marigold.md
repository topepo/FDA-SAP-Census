# Ganaxolone (Ztalmy) — NDA 215904

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2022/215904s000lbl.pdf) · [SAP (NCT03572933, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) · [Protocol (NCT03572933, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/Prot_002.pdf)

Census entry: [`README.md`](../../README.md) line 30322. Neurology (seizures in CDKL5 deficiency disorder). Marinus Pharmaceuticals, Inc. Approval 2022.

**Summary:** Ganaxolone vs placebo (1:1, N=101) was compared on each subject's percent change from baseline in 28-day major motor seizure frequency over the 17-week double-blind phase using an unstratified two-sample Wilcoxon rank-sum test (SAS PROC NPAR1WAY, `wilcoxon` option). The effect was reported as the Hodges-Lehmann location shift with an asymptotic 95% CI: -27.1% (-47.9, -9.5), p=0.0036. One O'Brien-Fleming interim analysis (52 subjects, p=0.003) did not cross the boundary.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says no protocol/SAP is posted on ClinicalTrials.gov. Both are posted: protocol Amendment 2.0 (26 May 2020) and SAP "Final" dated 22 August 2019. The posted SAP is the original version, not the 18 May 2021 final version FDA reviewed.
- The census lists "supportive ANCOVA on log-transformed seizure frequency" as part of the analysis. It was an FDA-reviewer sensitivity analysis, not a sponsor-planned analysis [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.11].
- The census gives two figures for the ANCOVA percent reduction ("35.2%-36.2%"). The StatR text says 35.2% and its Table 4 says 36.2%; the source is internally inconsistent [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.11].
- The census "fixed-sequence hierarchical testing" comes from FDA's description of the final SAP. The posted (2019) SAP says "formal hypothesis testing will not be performed for the other endpoints. Hence no protections for multiplicity are needed" [[sap_ocr_p30-35.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf), SAP p.35 §7.1.7].
- The design keyword "small single-arm or small randomized trial" is loose; the trial is a randomized, double-blind, placebo-controlled parallel-group trial.

## Study 1042-CDD-3001 (Marigold, NCT03572933)

### Design

- Ganaxolone (n=50) vs placebo (n=51), 1:1, adjunctive to existing anti-seizure medication [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.9 Table 1].
- Randomization stratification: "Subjects will be stratified into 2 groups based on baseline seizure frequency" [[prot.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/Prot_002.pdf) p.72 §6.2.2]. Cut-point/levels: Not stated. The stratification factor is not used in the primary test.
- Double-blind, placebo-controlled; 6-week prospective baseline, then 17-week double-blind phase (4 weeks titration + 13 weeks maintenance), then open-label extension [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.6].
- Analysis population: ITT = "all randomized subjects who received at least one dose of study drug" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.24 §2.2.1]. N=101; primary endpoint analyzed in 100 (51 placebo, 49 ganaxolone) because one ganaxolone subject had no baseline seizure data [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.10].

### Endpoint

- Percent change from baseline in 28-day frequency of primary ("major motor") seizures during the 17-week double-blind phase. Seizure types: bilateral tonic (sustained motor activity ≥ 3 seconds), generalized tonic-clonic, atonic/drop, bilateral clonic, focal to bilateral tonic-clonic [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.29 §7.1.2]. Source: daily caregiver electronic seizure diary.
- Derivation [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.29-30 §7.1.2; formula is an image on SAP p.30, transcribed in sap_ocr_p30-35.txt]:

$$
\text{28-day frequency}_{\text{phase}} = \frac{\text{total seizures in phase}}{\text{days with seizure data in phase}} \times 28
$$

$$
\text{percent change} = \frac{\text{post-baseline 28-day frequency} - \text{baseline 28-day frequency}}{\text{baseline 28-day frequency}} \times 100\%
$$

- Baseline phase = the 6 weeks before the first day of treatment. Double-blind phase starts the day after the first dose and runs to the final DB visit (or the day before first open-label dose). The first dosing day is in neither phase [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.28 §7.1].
- Denominator is days with diary data, so intermittent missing days are dropped (treated as missing completely at random) [[sap_ocr_p30-35.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf), SAP p.35 §7.1.8].
- Distributional remarks: "Since the percent differences are anticipated to display skewness and/or outliers, the tests will be performed using the Wilcoxon Rank-Sum statistic" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.30]. Observed: placebo mean 64.62 (SD 272.43), max 1796.9; ganaxolone mean -13.99 (SD 64.53); bounded below at -100 [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000MedR.pdf) p.49 Table 22].
- Zero baseline: for secondary endpoints, "If any endpoint value at baseline is zero, then any percentage changes from baseline for that endpoint will be missing" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.30 §7.1.3]. Not stated for the primary endpoint (inclusion criteria require baseline seizures).

### Hypothesis and contrast

- Ganaxolone vs placebo difference in percent change; "Tests of significance between the 2 treatment groups will be performed for the primary endpoint with a 2-sided significance level of 0.05" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.28]. With the group-sequential design, final two-sided alpha ≈ 0.048 [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.47 §10.2; [statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.8].
- Estimand (SAP wording): the outcome measure in all randomized subjects throughout the study period; "all available data will be used, even if they were collected after the subject stopped taking study medication, regardless of whether the subject took rescue medication" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.28 §7.1]. This is a treatment-policy handling of discontinuation and rescue use.

### Primary analysis method

- Test: "Wilcoxon Rank-Sum statistic" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.30], "Wilcoxon Rank-Sum test" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.7].
- What is ranked: each subject's percent change (one value per subject), pooled over both arms. No stratification, no covariates. Score type: Wilcoxon (SAS `wilcoxon` option) [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.49 §12.2]. Tie handling: Not stated.
- Reference distribution: Not stated explicitly. The SAP code has no EXACT statement [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.49].
- No parametric model accompanied it in the sponsor plan. Sample size was computed for an ANOVA, with the remark that the Wilcoxon "has approximately the same power" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.23].

### Effect estimate and interval

- Hodges-Lehmann estimate of location shift (ganaxolone relative to placebo) with "asymptotic 95% confidence limits" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.28 §7, p.49 §12.2].
- Per-arm medians with 95% distribution-free CIs (PROC UNIVARIATE `ciquandf`) [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.49 §12.2].

### Missing data and intercurrent events

- Primary analysis: all available diary data, no imputation; data after drug discontinuation and after rescue medication are included [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.28-29 §7.1, §7.1.1].
- Sensitivity 1 (placebo-quartile imputation for subjects who permanently stop recording) [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.36 §7.1.8]:
  - Rank placebo subjects on baseline 28-day frequency; quartile = Floor[Rank*4/(n+1)], ties get tied ranks.
  - Assign each subject needing imputation (either arm) to the placebo quartile covering their own baseline frequency (nearest quartile if between or outside bounds).
  - Within each quartile, X = median placebo 28-day frequency during the DB phase; A = X/28.
  - Impute A for every missing day after permanent stop, then recompute the endpoint.
- Sensitivity 2: same, without quartiles, using "the median of the 5 highest counts (equivalent to the 3rd highest count) among all the PBO subjects with data" [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.36].
- Sensitivity 3: subgroup with low baseline allopregnanolone-sulfate (≤ 2500 pg/mL) [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.36].
- Amount missing: 6 of 101 discontinued the study (2 ganaxolone, 4 placebo); "Only 1 subject in each group had post baseline seizure data less than 4 weeks (i.e., no seizure data during maintenance phase), and 2 in each group had less than 8 weeks" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.9, p.11].
- Deaths: none mentioned in the efficacy sections.

### Multiplicity

- Posted 2019 SAP: single primary endpoint, no formal testing of others [[sap_ocr_p30-35.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf), SAP p.35 §7.1.7].
- FDA description of final SAP: if primary rejected at its allocated alpha, test two key secondaries in order (≥50% responder rate by Fisher's exact; CGI-I by proportional-odds logistic regression). FDA noted the alpha level for secondaries was not specified [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.8].
- Interim analyses: up to two (50 and 75 subjects at ≥17 weeks), O'Brien-Fleming efficacy boundary protecting one-sided 0.005, Z = 3.73 (p 0.0001) and 3.03 (p 0.0012); a futility boundary also specified [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.45-47 §10]. Only the first was run (52 subjects, p=0.003, not crossed) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.8, p.11].

### Sample size assumptions

- SD of percent change 44.5 (from 7 CDKL5 patients in Study 1042-0900); true difference 30%; 100 subjects 1:1; 92% power "when using an ANOVA that preserves a (one-sided) 2.5% false positive error rate"; 97.5% power if difference is 35% [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.23 §1.3.2].

### Software and code

- SAS version 9.4 or later [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.25 §2.6]. Code from SAP §12.2 [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.49], verbatim (including the unbalanced parenthesis in the original):

```sas
proc univariate data=dataset(where=(specify analysis population,
 endpoint, study phase, and time point) ciquandf;
  class trtp; *trtp is the name of the randomized treatment
    variable;
  var pchg; *pchg is the name of the percent change variable;
run;
```

```sas
proc npar1way data=dataset (where=(specify analysis population,
 endpoint, study phase, and time point) wilcoxon
 HL(refclass=’formatted value of PBO group’);
  class trtp; *trtp is the name of the randomized treatment
    variable;
  var pchg; *pchg is the name of the percent change variable;
run;
```

### Results as presented

- FDA StatR Table 3 layout: columns Placebo, Ganaxolone; row blocks Baseline (n, median, Q1/Q3), Double-Blind Phase (n, median, Q1/Q3), Percent Change from Baseline (n, median, Q1/Q3), then "Hodges-Lehmann Estimate of Location Shift (95% CI)" and "Wilcoxon Test p-value" spanning both columns [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.10].
- Clinical review Table 22 adds mean (SD), "Median (95% Distribution-Free CI)", min/max [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000MedR.pdf) p.49].
- Label Table 5: baseline median frequency, median percent change, and p-value with footnote "Obtained from a Wilcoxon rank-sum test"; no HL estimate or CI in the label [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2022/215904s000lbl.pdf) §14].

| Statistic | Placebo (N=51) | Ganaxolone (N=50) |
|---|---|---|
| Baseline 28-day frequency: n; median (Q1, Q3) | 51; 49.2 (18.7, 120.0) | 49; 54.0 (31.3, 147.3) |
| DB phase 28-day frequency: n; median (Q1, Q3) | 51; 55.5 (21.6, 124.7) | 50; 45.0 (23.5, 106.3) |
| Percent change: n | 51 | 49 |
| Percent change: mean (SD) | 64.62 (272.43) | -13.99 (64.53) |
| Percent change: median (95% distribution-free CI) | -6.90 (-16.47, 15.34) | -30.66 (-35.94, -11.98) |
| Percent change: Q1, Q3 | -24.1, 39.7 | -49.5, -1.9 |
| Percent change: min, max | -89.7, 1796.9 | -96.2, 215.4 |
| Hodges-Lehmann location shift (95% CI) | | -27.1 (-47.9, -9.5) |
| Wilcoxon p-value | | 0.0036 |

Sources: [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.10 Table 3; [medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000MedR.pdf) p.49 Table 22].

- Figures: bar chart of proportion of patients by category of percent reduction (CSR Figure 14.2.4; label Figure 1) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.14]. The SAP plans a cumulative responder curve in 5% increments [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) p.30 §7.1.3.2].

### Sensitivity and supportive analyses

- Planned sensitivity analyses 1 and 2: "similar to the results of the primary analysis (results not shown in table)" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.11].
- FDA ANCOVA on log 28-day DB frequency with log baseline frequency and treatment: LS mean difference -0.45 (95% CI -0.79, -0.12), p=0.0084; N 51 vs 49 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.11 Table 4].
- FDA worst-case: ganaxolone dropouts assigned the worst observed percent change; median -28.1 vs -6.9; HL -22.6 (-43.8, -5.6); Wilcoxon p=0.0158 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.11-12 Table 5].
- Proxy diary entries removed: n 49 vs 48; HL -28.6 (-47.5, -9.9); p=0.0034 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.12 Table 6].
- Original data snapshot (with duplicate diary entries): reductions 32.2% vs 4.0%, p=0.002 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.11].
- Subgroups (age, sex, region): median percent change per arm, "Treatment difference" and 95% CI per subgroup; method for the difference not labelled [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.15 Table 8].
- Key secondaries were not rank tests (Fisher's exact p=0.0643; proportional odds p=0.0971 and 0.3518) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.13].

### FDA reviewer comments and reanalyses

- Primary result "confirmed by FDA reviewer" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.10].
- The text calls the HL estimate a "difference of -27.1% in the median percent change", although the difference of the two medians is -23.8 (-30.7 minus -6.9); the HL shift and the difference in medians are different quantities [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.10].
- Alpha for key secondaries under the group-sequential design was unspecified [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) p.8].

### Verbatim specification excerpts

> "The difference between the treatment groups in the percent changes from baseline will be tested for statistical significance. Since the percent differences are anticipated to display skewness and/or outliers, the tests will be performed using the Wilcoxon Rank-Sum statistic." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf), SAP p.30]

> "Post-baseline 28-day seizure frequency will be calculated as the total number of seizures in the 17-week DB treatment phase divided by the number of days with seizure data in the phase, multiplied by 28." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf), SAP p.29]

> "the baseline, post-baseline, and relevant changes from baseline for the seizure endpoints will also be summarized with 95% distribution-free confidence intervals for the median and Hodges-Lehmann point estimates and asymptotic 95% confidence limits for the location shifts." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf), SAP p.28]

> "Hence, all available data will be used, even if they were collected after the subject stopped taking study medication, regardless of whether the subject took rescue medication." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf), SAP p.28]

> "The (one-sided) nominal p-value corresponding to the Z-value of 3.73 is 0.0001; and corresponding to the Z-value of 3.03 is 0.0012." — [[sap.txt](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf), SAP p.46]

> "The primary efficacy endpoint of percent change from baseline in 28-day seizure frequency was analyzed using the Wilcoxon Rank-Sum test." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf), p.7]

> "An IA was performed for 52 subjects who completed the 17-week double-blind phase." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf), p.11]

> "value for the primary endpoint was 0.003, which didn’t cross the O’Brien-Fleming boundary." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf), p.11; the sentence begins "The p-" on the preceding line]

> "The reviewer conducted a worst-case type of analysis in which the worst observed data (largest percent change from baseline) was used for subjects in ganaxolone group who dropped out during the treatment phase." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf), p.11]

### Implementation notes (inference)

- PROC NPAR1WAY with `wilcoxon` and no EXACT statement reports the normal-approximation (Z) two-sided p-value with a 0.5 continuity correction by default, plus a t approximation; with n=51 and 49 the reported p=0.0036 is almost certainly the asymptotic normal p-value. The sources do not say which line of the output was used.
- `HL(refclass=...)` gives the Hodges-Lehmann shift (median of all pairwise ganaxolone minus placebo differences) with an asymptotic (Moses) CI; exact HL limits would require `exact hl;`, which is absent. R equivalent: `wilcox.test(pchg ~ trt, conf.int = TRUE, exact = FALSE, correct = TRUE)`; check the sign convention against the reference group.
- Ties: SAS uses midranks and a tie-corrected variance by default. Percent changes derived from counts over ~119 days rarely tie, so this is immaterial here.
- The interim boundary was applied to the one-sided nominal p-value from the same Wilcoxon test (boundary 0.0001); the interim p=0.003 was presumably two-sided, and either way did not cross.
- A programmer must decide: how to treat a zero baseline frequency (percent change undefined), the minimum number of diary days required, and whether the randomization stratum should enter (the sponsor did not use it; a van Elteren test would be the stratified analogue).
- The quartile-based imputation operates at the daily-count level and feeds back into the same endpoint formula and the same Wilcoxon test; it is single imputation.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000StatR.pdf) — fetched (statr.txt)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000MedR.pdf) — fetched (medr.txt)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2022/215904Orig1s000SumR.pdf) — fetched (sumr.txt; not needed)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2022/215904s000lbl.pdf) — fetched (label.txt)
- [SAP (NCT03572933, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/SAP_003.pdf) — fetched (sap.txt). SAP pages 31-35 are page images with partly blacked-out content; OCR of pages 30-35 is in sap_ocr_p30-35.txt. Sections 7.1.3.5 to 7.1.4 (SAP p.31-34) are redacted.
- [Protocol (NCT03572933, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/33/NCT03572933/Prot_002.pdf) — fetched (prot.txt)
- Lancet Neurol 2022 publication (PMID 35429480) — not in Europe PMC open access; not fetched
