# Mipomersen sodium (Kynamro) — NDA 203568

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: parametric primary with a rank-based fallback that was invoked.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2013/203568s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 13893. Lipidology (homozygous familial hypercholesterolemia). Genzyme / Isis. Approved 2013.

**Summary:** Mipomersen vs placebo (2:1) on percent change in LDL-C from baseline to the primary efficacy time point (PET). The core SAP computed both an unadjusted two-sample t-test and a Wilcoxon rank-sum test and selected between them with a Kolmogorov-Smirnov normality test (rank-sum if significant). In the pivotal HoFH trial (CS5) the K-S p-value was 0.120, so the **t-test was operative**; the rank-sum test was not the primary inferential result there. Of the four Phase 3 trials, only CS12 had a significant K-S result (<0.010) for LDL-C.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census's "Primary analysis" keyword is accurate as a rule, but does not say which branch fired. In CS5 it was the t-test (K-S p=0.120) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=70) PDF p.70 Table 11; [StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=92) PDF p.92].
- The census threshold "p<0.05" is the SAP wording [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=92) PDF p.92]; the clinical review and table footnotes say "p≤0.05" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=50) PDF p.50, p.70].
- The census says "LOCF was used for the primary comparison". The SAP replaced the protocol's LOCF with the PET definition (visit closest to 14 days after last dose) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=94) PDF p.94]. PET behaves like a restricted LOCF but is not the protocol LOCF.
- The census says "stratified by body weight": weight determined the dose (200 vs 160 mg), and the text says "Patients were stratified by weight" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=82) PDF p.82]; weight did not enter the analysis.
- The census covers only CS5; the same rule was applied to three supportive Phase 3 trials (MIPO3500108, CS7, CS12).

Page tags are PDF pages (form-feed count) of `statr.txt` / `medr.txt`. The clinical statistical review starts at StatR PDF p.72 (earlier pages are the carcinogenicity review); its printed page number = PDF page - 71.

## ISIS 301012-CS5 (pivotal, HoFH) and MIPO3500108, ISIS 301012-CS7, ISIS 301012-CS12 (supportive)

One core SAP ("Mipomersen Core Statistical Analysis Plan", MCSAP) governed all four.

### Design

- Two arms, 2:1 mipomersen:placebo. Full Analysis Set N (placebo/mipomersen): CS5 17/34; MIPO3500108 18/39; CS7 41/83; CS12 52/105 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=70) PDF p.70 Table 11]. CS5: 51 randomized, 34 vs 17 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=84) PDF p.84].
- Randomization stratification (CS5): by weight (≥50 kg: 200 mg; <50 kg: 160 mg) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=82) PDF p.82]. Other trials: Not stated in the pages consulted.
- Double-blind, placebo-controlled; 26 weeks of weekly SC dosing, 24-week follow-up [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=82) PDF p.82].
- Primary population: Full Analysis Set = "subset of the Safety Set with a valid baseline and at least one post-baseline LDL-C measure" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=90) PDF p.90]. In CS5 FAS = all 51 randomized [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=96) PDF p.96].

### Endpoint

- Percent change in LDL-C from baseline to PET [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=92) PDF p.92].
- PET: "the post-baseline visit closest to 14 days after the last dose of study treatment for which LDL-C is assessed"; ties go to the later visit [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=90) PDF p.90]. For completers this is Week 28.
- Baseline: average of screening and Study Day 1 pre-treatment values; an assessment is excluded if non-fasting or drawn more than four weeks before Day 1; if Day 1 and screening LDL-C differ by more than 12% (relative to the maximum), only Day 1 is used [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=89) PDF p.89].
- Multiple values in one visit window are averaged (per-visit analyses) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=93) PDF p.93].
- LDL-C by Friedewald if TG <400 mg/dL, otherwise ultracentrifugation [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=70) PDF p.70].
- Only central-lab, valid (fasting, non-hemolyzed) samples used [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=91) PDF p.91].
- Distributional remarks: none beyond the K-S results.

### Hypothesis and contrast

- Mipomersen vs placebo difference in percent change; two-sided; alpha: Not stated explicitly in the excerpt (K-S threshold 0.05).
- Within-arm change from baseline: Wilcoxon signed-rank test in each arm [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=92) PDF p.92].
- Estimand: Not stated.

### Decision rule

- Trigger: "Kolmogorov-Smirnov test of normality". Threshold: significant at p<0.05 [SAP text, StatR PDF p.92] / p≤0.05 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=50) PDF p.50] gives rank-sum; otherwise t-test.
- What it was applied to: Not stated. The sponsor reported **one** K-S p-value per trial and endpoint, not one per arm.
- Outcomes for LDL-C [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=70) PDF p.70 Table 11]:

| Trial | K-S p-value | Operative between-group test by the rule |
|---|---|---|
| ISIS 301012-CS5 | 0.120 | two-sample t-test |
| MIPO3500108 | 0.075 | two-sample t-test |
| ISIS 301012-CS7 | >0.150 | two-sample t-test |
| ISIS 301012-CS12 | <0.010 | Wilcoxon rank-sum |

- Source inconsistency for CS12: Table 11 labels the between-group row "t-test (p-value)" for all four trials (<0.001 each), and StatR PDF p.125 shows CS12 LDL-C as mean (SD), while the same table shows CS12 Apo B and non-HDL-C as median (Q1, Q3) under the footnote rule. Which p-value was printed for CS12 LDL-C is therefore not certain; both would be <0.001.
- The rule was applied per endpoint and per trial; e.g. CS12 Apo B and non-HDL-C were switched to median (Q1, Q3) with rank-sum p-values [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=79) PDF p.79 Table 14; [StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=122) PDF p.122, p.125].

### Primary analysis method

- Tests named: "two-sample t-test" and "Wilcoxon rank sum test", both always computed [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=92) PDF p.92].
- Ranked quantity: percent change from baseline to PET (response only), both arms pooled (two-sample rank-sum). No strata. Tie handling, exact vs asymptotic, continuity correction: Not stated.
- t-test variance assumption (pooled vs Satterthwaite): Not stated.
- No covariates in the primary analysis. Linear regression with treatment, factor and treatment-by-factor terms was a sensitivity/subgroup analysis only (baseline LDL-C, age, sex, race) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=93) PDF p.93].

### Effect estimate and interval

- t-test branch: difference in mean percent change with 95% CI; CS5: -21.4 (95% CI -32.9 to -9.8) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=70) PDF p.70].
- Rank-sum branch: presentation switches to median and interquartile range per arm; no Hodges-Lehmann estimate or rank-based CI is described [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=79) PDF p.79, p.84 footnotes].
- Label reports both "mean and median treatment difference from placebo" (-21% and -19%) [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2013/203568s000lbl.pdf) §14]; how the median treatment difference was computed: Not stated.

### Missing data and intercurrent events

- No explicit imputation. PET uses the visit closest to 14 days after last dose, so early discontinuers contribute their near-last on-treatment value; later post-treatment values are excluded [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=90) PDF p.90].
- The protocol had specified LOCF (last observation after baseline at or before Week 28); the SAP replaced it with PET [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=94) PDF p.94].
- CS5: 6/34 (17.6%) mipomersen and 0/17 placebo discontinued treatment [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=85) PDF p.85].

### Multiplicity

- Sequential: LDL-C, then Apo B, total cholesterol, non-HDL-C; tertiary unadjusted [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=91) PDF p.91-93].

### Sample size assumptions

- CS5: SD of percent change about 22%; 15 control and 30 mipomersen give at least 80% power for a 20% difference [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=89) PDF p.89].

### Software and code

- Sponsor software: Not stated. Reviewer mentions "SAS Generalized Linear Model program" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=75) PDF p.75]. No code.

### Results as presented

MedR Table 11 layout: one column pair (placebo, mipomersen) per trial; rows: Baseline mean (SD) and min/max; PET mean (SD) and min/max; percent change mean (SD), min/max, 95% CI; treatment difference from placebo; "Wilcoxon signed rank test (p-value)" per arm; "t-test (p-value)"; "Kolmogorov-Smirnov (p-value)". The StatR versions of the CS5 results tables are images (no text layer).

| LDL-C % change, FAS [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=70) PDF p.70] | CS5 | MIPO3500108 | CS7 | CS12 |
|---|---|---|---|---|
| Placebo mean (SD) | -3.3 (17.1) | 12.5 (46.9) | 5.2 (18.0) | -4.5 (24.2) |
| Mipomersen mean (SD) | -24.7 (19.9) | -35.9 (24.7) | -28.0 (27.0) | -36.9 (26.9) |
| Placebo 95% CI | (-12.1, 5.5) | (-10.8, 35.9) | (-0.52, 10.9) | (-11.4, 2.4) |
| Mipomersen 95% CI | (-31.6, -17.7) | (-43.9, -27.9) | (-34.0, -22.1) | (-42.2, -31.6) |
| Difference from placebo | -21.4 | -48.4 | -33.2 | -32.4 |
| Signed-rank p, placebo | 0.323 | 0.417 | 0.063 | 0.300 |
| Signed-rank p, mipomersen | <0.001 | <0.001 | <0.001 | <0.001 |
| Between-group p ("t-test") | <0.001 | <0.001 | <0.001 | <0.001 |
| K-S p | 0.120 | 0.075 | >0.150 | <0.010 |

Figures: mean percent change over time (OC and LOCF lines with 95% CI) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=104) PDF p.104]; categories of percent change tabulated.

### Sensitivity and supportive analyses

- Percent change at the assessment closest to 14 days after the last *protocol-prescribed* dosing day (Week 28) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=93) PDF p.93].
- Linear regression / subgroup models (above).
- Baseline using Day 1 only [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=93) PDF p.93].
- Per-protocol set (e.g. CS12: -43.3% vs -6.9%, p<0.001) [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=69) PDF p.69].
- MMRM for CS5 and OC vs LOCF plots [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=104) PDF p.104].
- Baseline lipids compared between arms by Wilcoxon rank-sum [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=93) PDF p.93].

### FDA reviewer comments and reanalyses

- Reviewer expected two normality p-values (one per arm); since only one was given (0.120) he read it as a two-sample K-S test of equality of distributions, and noted that this is not a protocol-specified test of means or medians [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=92) PDF p.92].
- Reviewer ran his own parametric ("SAS Generalized Linear Model program") and nonparametric ("Wilcoxon's two-sample test") analyses; both highly significant (p<.001) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=75) PDF p.75, p.129].

### Verbatim specification excerpts

> "Both the two- sample t-test and the Wilcoxon rank sum test will be assessed for the comparison between treatment groups. If the Kolmogorov-Smirnov test of normality is statistically significant (p<0.05) then the Wilcoxon rank sum test results will be utilized. Otherwise, the two-sample t-test will be used. Changes within treatment groups will be assessed using the Wilcoxon signed rank test." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=92), PDF p.92]

> "By this reviewer’s understanding, for test of normality, there should be two p- values – one for placebo responses and another for mipomersen responses. From the only one p- value (0.120), provided by the sponsor for the Kolmogorov-Smirnov test in the efficacy results Table, it appears that this p-value is for the test of equality of the two distributions (one for placebo responses and another for mipomersen responses)" — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=92), PDF p.92]

> "For efficacy parameters, the primary efficacy timepoint (PET) is the post-baseline visit closest to 14 days after the last dose of study treatment for which LDL-C is assessed. If two visits are equidistant to 14 days after the last dose of study treatment, the later will be designated the PET" — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=90), PDF p.90]

> "Data presented as mean and SD, with p-values calculated using the 2 sample t-test, unless the result of the Kolmogorov Smirnov test was ≤0.05 (indicating non-normal distribution, in which case data are presented as median and interquartile range, with p-values calculated using the Wilcoxon rank sum test." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf#page=84), PDF p.84]

> "Based on this reviewer’s own parametric (including SAS Generalized Linear Model program) and nonparametric (Wilcoxon’s two-sample test) analyses and the sponsor’s results, efficacy results are highly significant" — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf#page=75), PDF p.75]

### Implementation notes (inference)

- Inference on how the pre-test was run: the reported p-values ">0.150" and "<0.010" are the bounds SAS `PROC UNIVARIATE NORMAL` prints for its Kolmogorov-Smirnov (Lilliefors-type) D statistic (p-values are tabulated only between 0.01 and 0.15). A two-sample K-S test (`PROC NPAR1WAY EDF`) would print exact-looking p-values, not these bounds. So the single p-value is most likely a one-sample normality test from PROC UNIVARIATE, contrary to the FDA reviewer's reading. What it was run on (percent changes pooled over both arms, or residuals after removing arm means) cannot be determined; pooling raw values over arms would confound a treatment shift with non-normality.
- A programmer must decide: K-S on residuals from a treatment-only model (recommended) vs per arm (two p-values, need a combination rule) vs pooled raw data; the `<` vs `≤` threshold; t-test variance option; exact vs asymptotic rank-sum.
- SAS sketch (inference): `PROC TTEST; CLASS trt; VAR pchg;` and `PROC NPAR1WAY WILCOXON; CLASS trt; VAR pchg;`, `PROC UNIVARIATE NORMAL; BY trt; VAR pchg;` for signed-rank per arm.
- A data-dependent choice between t and rank-sum does not have a guaranteed type I error; this is a design caveat, not something the sources discuss.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000StatR.pdf) — fetched (`statr.txt`; CS5 primary results tables are images)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2013/203568Orig1s000MedR.pdf) — fetched (`medr.txt`)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2013/203568s000lbl.pdf) — fetched (`label.txt`)
- Lancet 2010 publication (doi 10.1016/S0140-6736(10)60284-X) — not open access; not fetched
- ClinicalTrials.gov API [NCT00607373](https://clinicaltrials.gov/study/NCT00607373) — no protocol/SAP posted
