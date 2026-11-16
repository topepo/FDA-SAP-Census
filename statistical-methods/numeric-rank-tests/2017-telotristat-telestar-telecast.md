# Telotristat ethyl (Xermelo) — NDA 208794

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/208794s000lbl.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC5811631/)

Census entry: [`README.md`](../../README.md) line 4147. Gastroenterology / oncology supportive care (carcinoid syndrome diarrhea). Lexicon Pharmaceuticals. Approved 2017.

**Summary:** Two 12-week, three-arm, placebo-controlled trials. Each telotristat dose (250 mg, 500 mg tid) was compared with placebo by a "blocked 2-sample Wilcoxon rank sum" test stratified by the randomization stratum (baseline u5-HIAA ≤ULN / >ULN / unknown); the label calls this a van Elteren test. Effect size was the Hodges-Lehmann shift with 97.5% (TELESTAR) or 95% (TELECAST) confidence limits. All primary comparisons had p<0.001.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says TELESTAR's u5-HIAA secondary endpoint is "percent change"; the multiplicity-controlled TELESTAR secondary was *absolute* change (mg/24 h) at Week 12. Percent change was primary in TELECAST and exploratory in TELESTAR [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.9, p.17-18].
- The census "imputed as zero ... if the patient had ≥6 weeks of missing diary data": source says "more than 6 weeks" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.9, p.10].
- The census says imputation is "for a diary-week"; the source imputes the patient's whole 12-week change as zero [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.10].
- No numeric results in census; they are below.

Page tags: `StatR p.N` is the printed page number; the PDF page (form-feed count in `statr.txt`) is N+1.

## TELESTAR (LX1606.1-301-CS, LX301) and TELECAST (LX1606.1-303-CS, LX303)

Same method in both; the primary endpoint differs.

### Design

- Three arms, 1:1:1: placebo, telotristat 250 mg tid, 500 mg tid (500 mg arm had a blinded 7-day titration) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.7]. LX301 randomized 45/45/46 (ITT 45/45/45; one randomized-not-dosed patient was excluded and later re-randomized under a new ID); LX303 randomized 26/25/25 (ITT same) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.11 Table 1].
- Randomization stratification: baseline u5-HIAA, 3 levels: ≤ULN, >ULN, unknown ("missing at the time of randomization or uninterpretable") [[telecast_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5811631/) Methods; [StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.10; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/208794s000lbl.pdf) §14 Table 2 footnote b].
- Double-blind, placebo-controlled (add-on to SSA in LX301), 12-week double-blind treatment (DBT) period, then open-label extension [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.7-8].
- Analysis population: ITT, "all randomized patients" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.10]. Sizes: LX301 BM endpoint N=45/45/45. u5-HIAA analyses used only patients with a Week 12 value: LX303 percent change N=22/17/19 (placebo/250/500); LX301 absolute change N=29/32/31 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.17-18].

### Endpoint

- LX301 primary: change from baseline in number of daily bowel movements (counts/day) averaged over the 12-week DBT period, from a daily diary. Baseline assessed over the 3-4 week screening/run-in [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.9; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/208794s000lbl.pdf) §14].
- LX303 primary: percent change from baseline in 24-hour u5-HIAA (mg/24 h) at Week 12; u5-HIAA assessed at Screening/Baseline, Week 6, Week 12 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.9].
- Derivation (LX301): mean over days with valid non-missing diary data in the DBT period minus baseline mean [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.9-10]. Exact formula for percent change: Not stated.
- Distribution: u5-HIAA "skewed to the right", "substantial disparity between distribution means and medians", range 0 to 786 at baseline [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.12]; one LX303 placebo patient had a +1864.5% change [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.18 Table 8; [telecast_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5811631/) Fig. 2 legend]. Reviewer: change and percent change "severely skewed" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.18].

### Hypothesis and contrast

- Each dose vs placebo, pairwise two-sample tests (not a 3-group test). Two-sided.
- LX301: each of the two comparisons at 0.025; fixed-sequence over primary then secondaries within each dose contrast [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.10].
- LX303: 500 mg vs placebo at 0.05 first, then 250 mg vs placebo [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.10].
- Estimand language: Not stated.

### Primary analysis method

- Name: "blocked 2-sample Wilcoxon rank sum statistic stratified by the baseline urinary 5-HIAA levels (≤ upper limit of normal reference range [ULN], >ULN, and Unknown)" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.10]; "blocked 2-sample Wilcoxon Rank Sum statistic (van Elteren test) stratified by the u5-HIAA stratification at randomization" [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/208794s000lbl.pdf) §14].
- What is ranked: the response (change, or percent change). Ranking scope, score type, stratum weights, tie handling: Not stated beyond the "van Elteren" label.
- Strata: 3 (≤ULN, >ULN, unknown).
- No model is fitted.
- Test statistic / reference distribution (asymptotic vs exact), continuity correction: Not stated.
- A 3-arm "overall" stratified Wilcoxon p-value was also produced by the sponsor for baseline comparisons (overall p=0.04 for baseline u5-HIAA; overall p=0.09 for baseline BM) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.15, p.19]; how the 3-group version was computed: Not stated.

### Effect estimate and interval

- "Hodges-Lehmann estimator of location shift with its respective CLs" per pairwise comparison [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.10]; described as "Hodges-Lehmann estimator of the median paired difference" [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/208794s000lbl.pdf) §14] / "median paired treatment difference" [[telecast_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5811631/)].
- CL level: 97.5% for LX301 multiplicity-controlled endpoints, 95% elsewhere [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) Tables 3, 7, 8].
- Whether the HL estimate is stratified or pooled over strata: Not stated.

### Missing data and intercurrent events

- LX301 BM endpoint: observed diary days averaged; whole-period change set to 0 if >6 weeks missing (a missing week = ≥4 missing diary days) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.9-10]. Number of patients so imputed: Not stated.
- u5-HIAA: no imputation; analysis "only based on the set of patients who had Week 12 assessment" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.17]. In LX303, 10 DBT completers were excluded for sample collection/analysis deviations [[telecast_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5811631/) Results].
- DBT completion: LX301 38/41/38 of 45/45/46; LX303 24/22/22 of 26/25/25 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.11].

### Multiplicity

- LX301: Bonferroni split (0.025 per dose), then fixed sequence within dose: BM frequency, u5-HIAA change, flushing, abdominal pain [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.9-10].
- LX303: fixed sequence 500 mg then 250 mg on the primary; secondaries unadjusted [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.10].

### Sample size assumptions

- LX303: 16 per arm, 80% power, difference 40%, common SD 35% (effect size 1.143) [[telecast_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5811631/) Methods].
- LX301: Not stated in sources consulted (JCO paper not retrievable).

### Software and code

- SAS 9.3 or higher (LX303) [[telecast_pub.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5811631/)]. No code in any source.

### Results as presented

Layout (FDA StatR and label): columns = arms; rows = N, Mean (SD), Median (Min, Max) of change, "Hodges-Lehmann est. of treatment difference", CL, p-value. Label Table 2 shows only 250 mg vs placebo, with baseline mean (SD) and median (min, max) added.

| Trial / endpoint | Statistic | Placebo | 250 mg | 500 mg |
|---|---|---|---|---|
| LX301 BM change (primary) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) Table 3] | N | 45 | 45 | 45 |
| | Mean (SD) | -0.62 (0.83) | -1.43 (1.36) | -1.46 (1.31) |
| | Median (min, max) | -0.61 (-2.7, 0.8) | -1.34 (-6.1, 1.6) | -1.21 (-6.7, 0.6) |
| | HL vs placebo | | -0.813 | -0.689 |
| | 97.5% CL | | -1.26, -0.29 | -1.17, -0.22 |
| | p | | <0.001 | <0.001 |
| LX303 u5-HIAA % change (primary) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) Table 8] | N | 22 | 17 | 19 |
| | Mean (SD) | 97.7 (397.0) | -33.2 (58.5) | -76.5 (17.4) |
| | Median (min, max) | 8.0 (-43.6, 1864.5) | -39.9 (-94.7, 162.8) | -76.1 (-98.0, -28.6) |
| | HL vs placebo | | -54.0 | -89.7 |
| | 95% CL | | -85.0, -25.2 | -113.1, -63.9 |
| | p | | <0.001 | <0.001 |
| LX301 u5-HIAA abs. change, mg/24 h (secondary) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) Table 7] | N | 29 | 32 | 31 |
| | Mean (SD) | 11.5 (35.6) | -40.1 (84.8) | -57.7 (82.2) |
| | HL; 97.5% CL; p | | -30.1; -56.0, -8.1; <0.001 | -33.8; -66.2, -14.6; <0.001 |
| LX303 BM change (secondary) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) Table 3] | N | 26 | 25 | 25 |
| | Mean (SD) | 0.05 (0.33) | -0.45 (0.69) | -0.60 (0.72) |
| | HL; 95% CL; p | | -0.45; -0.72, -0.17; 0.004 | -0.54; -0.79, -0.25; <0.001 |

Note the HL CL for LX303 500 mg extends below -100% (-113.1), which is possible only because HL uses pairwise differences of percent changes.

Figures: StatR used EPDF/ECDF plots of change in BM frequency by anchor category and by treatment for the meaningful-change analysis [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) Figures 6-24]; telecast_pub Fig. 2 shows HL estimates and per-patient distributions.

### Sensitivity and supportive analyses

- LX301 BM: baseline mean assigned to each missing post-baseline *daily* value: HL -0.834 (97.5% CL -1.28, -0.29) and -0.707 (-1.18, -0.25), both p<0.001 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) Table 4]. Also per-protocol and as-treated repeats (results not shown) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.14].
- u5-HIAA: pre-specified MMRM (treatment, u5-HIAA randomization stratum, time (Week 6, 12), treatment-by-time; patient random; unstructured covariance) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.18]. Reviewer cautioned it "may produce biased estimates" under skewness.

### FDA reviewer comments and reanalyses

- Reviewer replicated the primary results [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.7].
- Applied the same stratified test to *baseline* values and to *on-treatment levels* (not change): baseline BM 250 mg vs placebo p=0.043; baseline u5-HIAA 250 mg vs placebo p=0.017; on-treatment average BM differences p=0.8 and 0.22 in LX301 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) Tables 5, 6, 9, 10]. Concern raised about baseline imbalance "and potential problem with randomization" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) p.19].

### Verbatim specification excerpts

> "The primary efficacy endpoints in studies LX301 and LX303 were analyzed by the blocked 2- sample Wilcoxon rank sum statistic stratified by the baseline urinary 5-HIAA levels (≤ upper limit of normal reference range [ULN], >ULN, and Unknown). Descriptive statistics of the primary endpoints and the Hodges-Lehmann estimator of location shift with its respective CLs were reported for each comparison." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf), p.10]

> "The change from Baseline was to be imputed as zero when a patient had more than 6 weeks of missing data (a week of missing data is defined as a patient missing more than or equal to 4 days of diary in that week)." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf), p.9]

> "Analyses of absolute change from baseline and percent change from baseline in u5-HIAA levels (mg/24 hours) at Week 12 were only based on the set of patients who had Week 12 assessment" — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf), p.17]

> "Statistical tests used a blocked 2-sample Wilcoxon Rank Sum statistic (van Elteren test) stratified by the u5-HIAA stratification at randomization. CLs were based on the Hodges- Lehmann estimator of the median paired difference." — [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/208794s000lbl.pdf), §14 Table 2 footnote b]

> "The empirical distributions of change and percent change in u5-HIAA levels are severely skewed and appear to be different for the three treatment arms. In such cases, likelihood based methods (such as MMRM) may produce biased estimates." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf), p.18]

### Implementation notes (inference)

- Inference: this is the van Elteren test, e.g. SAS `PROC FREQ; TABLES stratum*trt*y / CMH2 SCORES=MODRIDIT;` (row mean scores p-value) on a two-arm subset, or `PROC NPAR1WAY WILCOXON; STRATA stratum;` in newer SAS; in R `coin::wilcox_test(y ~ trt | stratum)` (which uses different stratum weights unless modified ridit/standardized ranks are used) or `sanon`. p-values such as 0.004 with n=25/26 are consistent with an asymptotic test, but this is not stated.
- Inference: HL estimates carry 3 decimals and look like the unstratified two-sample HL (median of all pairwise differences, `PROC NPAR1WAY HL`), with Moses distribution-free CLs; the sources do not say whether stratification entered the HL estimate. A programmer must decide: pooled HL vs stratified HL (median of within-stratum pairwise differences, or weighted combination).
- The "unknown" stratum may be very small; behaviour with a stratum lacking one arm is undefined in the sources.
- The 3-arm "overall" p-value is presumably the CMH row-mean-scores test with 2 df (inference).
- Each pairwise test uses only the two arms concerned, so ranks are recomputed per comparison.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000StatR.pdf) — fetched (`statr.txt`)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208794Orig1s000MedR.pdf) — fetched (`medr.txt`)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/208794s000lbl.pdf) — fetched (`label.txt`)
- TELECAST publication, Europe PMC full text [PMC5811631](https://pmc.ncbi.nlm.nih.gov/articles/PMC5811631/) — fetched (`telecast_pub.txt`; supplementary methods not fetched)
- TELESTAR publication (JCO, doi 10.1200/JCO.2016.69.2780) — failed (403; no PMC copy found)
- ClinicalTrials.gov API [NCT01677910](https://clinicaltrials.gov/study/NCT01677910), [NCT02063659](https://clinicaltrials.gov/study/NCT02063659) — no protocol/SAP posted
