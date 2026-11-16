# Afamelanotide (Scenesse) — NDA 210797

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Multi-Discipline Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210797s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 40581. Dermatology / rare disease (erythropoietic protoporphyria). Clinuvel. Approved 2019.

**Summary:** Two vehicle-controlled trials (CUV039 pivotal, CUV029 supportive) compared afamelanotide implants with vehicle on each subject's total diary-recorded hours of pain-free direct sun exposure over the study. Both used an unstratified Kruskal-Wallis test on the per-subject totals (two arms, so equivalent to an asymptotic Wilcoxon rank-sum test without continuity correction), two-sided 0.05, observed cases only. A Hodges-Lehmann shift estimate with 95% CI was added outside the SAP (by the Applicant for CUV039, by the FDA reviewer for CUV029). CUV039: HL 24.0 h (0.3, 50.3), p=0.044; FDA's two whole-diary imputations gave p=0.055 and p=0.091. CUV029: HL 2.75 h (0.75, 6.5), p=0.005.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- None material on the method. Additions: CUV029 used the same Kruskal-Wallis analysis (census does not say so explicitly), and its HL estimate was computed by the FDA reviewer, not the Applicant [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=99) PDF p.99].
- The label medians for CUV039 (64.1 vs 40.5 h) are from FDA's all-randomized "as reported" sensitivity analysis (N=48/45), not the Applicant's ITT-Diary Card analysis (69.4 vs 40.8) [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210797s000lbl.pdf) §14; [mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=69) PDF p.69, p.73].

Page tags are PDF page indices of the downloaded review (the printed page number is 16 less).

## CUV039 (pivotal)

### Design

- Afamelanotide 16 mg implant vs vehicle ("placebo"), 1:1; 94 randomized (48 vs 46); 93 treated (48 vs 45) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=66) PDF p.66].
- Randomization: "1:1 within-center using blocks of size 4" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=63) PDF p.63]. No other stratification factor stated. Number of centers: Not stated.
- Double-blind; implants on Days 0, 60, 120; follow-up 180 days [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=63) PDF p.63].
- Primary analysis population: "ITT-Diary Card", all treated subjects with at least one post-dose efficacy assessment; N=46 vs 43 (4 subjects, 2 per arm, returned no diaries) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=65) PDF p.65, p.69].

### Endpoint

- "total number of hours spent in direct sunlight between 10:00 and 18:00 hours on days when no pain was experienced (Likert score of 0)" over 180 days [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=64) PDF p.64, p.69]. Unit: hours per subject.
- Derivation: daily diary; pain on a 0-10 Likert scale; time in direct sun and in shade recorded separately, 10:00-18:00, "in 15-minute increments" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=69) PDF p.69]. The endpoint is the sum, over all diary days with pain score 0, of the direct-sun time. No normalization for the number of diary days returned (the FDA "internally consistent" imputation scales totals by 1.5 or 3 for that reason) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=72) PDF p.72].
- Diary alignment rules: if "no reaction to light" was marked without a pain score, pain imputed as 0; shaded time boxes are used even if the "spent time outdoors" box was not ticked [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=65) PDF p.65].
- Distribution: "the distributions for the two treatment groups are right skewed with the afamelanotide group having a longer right tail and larger standard deviation" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=70) PDF p.70].

### Hypothesis and contrast

- Afamelanotide vs vehicle; all tests "at the 0.05 significance level" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=64) PDF p.64]. Sidedness: Not stated explicitly (Kruskal-Wallis is inherently two-sided).
- Null/alternative wording: Not stated. FDA interpretation: tests whether the distributions differ; a difference-in-medians reading requires same-shape distributions [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=70) PDF p.70].
- Estimand / intercurrent events: Not stated.

### Primary analysis method

- "Kruskal-Wallis non-parametric test" for all primary and secondary endpoints [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=64) PDF p.64].
- Ranked: per-subject total hours, pooled across both arms. Unstratified (center not used). Score type: Wilcoxon ranks (implied by test name); tie handling: Not stated.
- Reference distribution: asymptotic (chi-square, 1 df), no continuity correction; FDA notes this is "equivalent to the Wilcoxon test in the case with two treatment arms and where the asymptotic test is conducted without continuity corrections" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=70) PDF p.70].
- No model, no covariates.
- For one secondary endpoint (photoprovocation) the Applicant reported "a continuity-corrected asymptotic Wilcoxon test" instead, which FDA flagged as inconsistent [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=88) PDF p.88].

### Effect estimate and interval

- Hodges-Lehmann estimate with 95% CI, added in the study report, "not included in the protocol or the SAP" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=69) PDF p.69]. CI method (Moses distribution-free vs asymptotic): Not stated.
- FDA: the estimator "can be interpreted as median of the differences of all pairs of observations from the two treatment groups" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=70) PDF p.70].

### Missing data and intercurrent events

- Applicant: observed cases, no imputation for missing diary days or unreturned diaries; subjects with no diaries excluded [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=65) PDF p.65, p.70].
- Amount: 0 diaries 2 vs 2; 1 diary 0 vs 1; 2 diaries 3 vs 3; all 3 diaries 43 (90%) vs 39 (87%); among those, 0 missing days 21 vs 16, 1-3 days 16 vs 16, 4-10 days 4 vs 5, 11-21 days 2 vs 2 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=71) PDF p.71].
- FDA sensitivity analyses (population: randomized and dispensed, N=48/45) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=71) PDF p.71-72]:
  1. "as reported": observed totals; 0 hours for subjects with no diaries.
  2. "internally consistent": subjects who received all 3 doses but returned 1 or 2 diaries get 3x or 1.5x their observed total; subjects who discontinued treatment keep observed totals (no accrual after discontinuation); no diaries = 0 hours.
- Within-diary missing days were not imputed by FDA [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=71) PDF p.71].

### Multiplicity

- None across secondary endpoints; FDA's 2012 advice to add control was not adopted [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=65) PDF p.65].

### Sample size assumptions

- "designed to enroll between 75 and 100 subjects" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=63) PDF p.63]. Power assumptions: Not stated.

### Software and code

- Not stated. No code in the sources.

### Results as presented

- Layout (FDA Table 26): rows "Mean (SD)" and "Median"; columns Afamelanotide, Placebo, "Estimate / 95% CI" (HL estimate on the mean row, CI on the median row), p-value (Kruskal-Wallis) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=69) PDF p.69]. Sensitivity table (Table 30) repeats this layout per imputation [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=73) PDF p.73].

| Analysis | Afamelanotide mean (SD); median | Placebo mean (SD); median | HL estimate (95% CI) | KW p |
|---|---|---|---|---|
| Applicant, ITT-Diary Card (N=46/43) | 115.6 (140.6); 69.4 | 60.5 (60.6); 40.8 | 24.0 (0.3, 50.3) | 0.044 |
| FDA "as reported" (N=48/45) | 110.7 (139.6); 64.1 | 57.9 (60.5); 40.5 | 23.5 (0.0, 48.0) | 0.055 |
| FDA "internally consistent" (N=48/45) | 111.1 (139.3); 64.1 | 60.2 (61.2); 40.8 | 22.8 (-1.8, 47.0) | 0.091 |

- Figures: histogram by arm (Figure 12); empirical CDFs for total hours outdoors, hours in direct sun, and the primary endpoint (Figures 13-15); boxplots by baseline tolerance and by center; weekly median/mean over time [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=70) PDF p.70, p.73, p.76-79].
- Label: medians only (64.1 vs 40.5 h), no p-value, no HL estimate [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210797s000lbl.pdf) §14].

### Sensitivity and supportive analyses

- The two FDA imputations above.
- Subgroups with HL estimate and CI only (sex, race, age) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=78) PDF p.78].
- Before correction of a treatment-allocation transcription error for two subjects, the Applicant's p-value was 0.107; after correction 0.044 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=91) PDF p.91].
- No parametric analysis reported.

### FDA reviewer comments and reanalyses

- Result is "close to the statistical significance level"; small changes in handling missing data push p above 0.05 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=72) PDF p.72].
- "interpreting the results simply as a difference in medians may not be appropriate" given different shapes [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=70) PDF p.70].
- Applicant ignored FDA's July 2, 2012 advice on ITT definition, missing data and multiplicity [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=65) PDF p.65].

## CUV029 (supportive)

### Design

- 76 randomized, 74 treated: 38 afamelanotide, 36 placebo; randomized 1:1 "within center"; Europe; five implants (Days 0, 60, 120, 180, 240), 270 days follow-up [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=93) PDF p.93, p.96].
- Analysis population: ITT = randomized and received at least one dose (38 vs 36) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=99) PDF p.99].

### Endpoint

- Redefined in the SAP before unblinding (after Study 030 results): total hours outdoors between 10:00 and 15:00 on days with no pain (Likert 0) and on which the subject reported that "most" of the day was spent in direct sunlight; days marked as a combination of sun and shade do not count [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=94) PDF p.94, p.98]. Diary covered 270 days.
- Pain score imputed as 0 for any day without a pain score (the SAP limited this to days with "No" reaction; the Applicant applied it more broadly) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=95) PDF p.95].
- Diary misprint: no boxes for 14:00-15:00, so that hour was under-recorded [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=100) PDF p.100-101].

### Primary analysis method

- Same as CUV039: Kruskal-Wallis test, 0.05 level, asymptotic without continuity correction, unstratified, no imputation [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=95) PDF p.95, p.99].

### Effect estimate and interval

- Hodges-Lehmann estimate and 95% CI calculated by the FDA reviewer "To provide analyses similar to what were conducted for Study 039" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=99) PDF p.99].

### Missing data

- Observed cases; all treated subjects returned at least one diary; 33 (87%) vs 35 (97%) returned all diaries [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=100) PDF p.100]. No sensitivity analysis.

### Results as presented

| Analysis (N=38/36) | Afamelanotide mean (SD); median | Placebo mean (SD); median | HL estimate (95% CI) | KW p |
|---|---|---|---|---|
| Primary, 10:00-15:00 | 20.4 (40.5); 6.0 | 5.6 (9.3); 0.75 | 2.75 (0.75, 6.5) | 0.005 |
| FDA, 10:00-14:00 | 18.1 (37.6); 5.125 | 5.2 (9.0); 0.75 | 2.75 (0.75, 5.5) | 0.006 |
| Applicant supportive, direct sun or combination | 102.1 (151.0); 51.625 | 91.5 (122.6); 53.375 | 0.25 (-21.5, 27.0) | 0.97 |

Source: [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=99) PDF p.99, p.101, p.102]. Label: medians 6.0 vs 0.75 h [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210797s000lbl.pdf) §14].

## Common sections

### Verbatim specification excerpts

> "All primary and secondary endpoints were to be analyzed with a Kruskal-Wallis non-parametric test. All tests were to be conducted at the 0.05 significance level." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=64), PDF p.64]

> "Although not included in the protocol or the statistical analysis plan (SAP), the Applicant included Hodges-Lehmann estimates for the treatment effect for the primary and secondary endpoints in the study report." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=64), PDF p.64-65]

> "The ITT population was defined as all treated subjects who provided at least one post-dose efficacy assessment. Analyses were to be performed on available data and there was no plan to impute any missing efficacy data, except to align contradictory diary data as follows:" — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=65), PDF p.65]

> "The primary endpoint was analyzed with a Kruskal-Wallis test, which is equivalent to the Wilcoxon test in the case with two treatment arms and where the asymptotic test is conducted without continuity corrections." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=70), PDF p.70]

> "For subjects who did not return any diaries, impute 0 hours of pain-free sun exposure." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=71), PDF p.71]

> "Note: Imputed value is 1.5 times observed if subjects returned 2 diaries and 3 times observed if subjects returned 1 diary." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=72), PDF p.72]

> "Subjects were randomized 1:1 within-center using blocks of size 4." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf#page=63), PDF p.63]

### Implementation notes (inference)

- Inference: SAS `PROC NPAR1WAY WILCOXON; CLASS trt; VAR hours;` reports the Kruskal-Wallis chi-square (1 df) whose p-value equals the two-sided normal-approximation Wilcoxon p-value without continuity correction; adding `HL` gives the Hodges-Lehmann shift with asymptotic (Moses) and, with `EXACT HL`, exact limits. R: `kruskal.test(hours ~ trt)` or `wilcox.test(..., correct = FALSE, exact = FALSE)`; `wilcox.test(..., conf.int = TRUE)` for the HL estimate.
- Note that the default two-sample Wilcoxon output in SAS and R applies a continuity correction, so p-values differ slightly from the Kruskal-Wallis p-value; the source flags exactly this inconsistency.
- HL estimates in multiples of 0.25 or 0.125 are consistent with a median of pairwise differences of 15-minute-resolution totals.
- Open choices: whether to stratify by center (randomization was within center; analysis was not); how to treat partial diaries (rate per diary day vs raw total); CI method for HL.

### Sources consulted

- [FDA Multi-Discipline Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210797Orig1s000MultidisciplineR.pdf) — fetched (mdr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210797s000lbl.pdf) — fetched (label.txt)
- ClinicalTrials.gov API [NCT01605136](https://clinicaltrials.gov/study/NCT01605136), [NCT00979745](https://clinicaltrials.gov/study/NCT00979745) (DocumentSection) — fetched; no protocol/SAP posted
- Langendonk et al., NEJM 2015 — not attempted (NEJM not open access)
