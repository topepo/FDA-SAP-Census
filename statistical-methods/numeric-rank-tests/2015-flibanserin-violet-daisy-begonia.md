# Flibanserin (Addyi) — NDA 22526

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/022526lbl.pdf)

Census entry: [`README.md`](../../README.md) line 37501. Women's health (hypoactive sexual desire disorder, HSDD). Sprout Pharmaceuticals (originally Boehringer Ingelheim). Approved 2015.

**Summary:** In the three 24-week North American trials (511.71 VIOLET, 511.75 DAISY, 511.147 BEGONIA) the co-primary endpoint "change from baseline in number of satisfying sexual events (SSE) standardized to 28 days" was tested by a Wilcoxon rank-sum test stratified by pooled center, on change from baseline, in the full analysis set with LOCF. This was the pre-specified test for SSE, not a fallback triggered after an ANCOVA failed. The second co-primary endpoint (eDiary desire in 71 and 75; FSFI desire domain in 147) was analyzed by ANCOVA. SSE was significant in all three trials (p<0.05, p<0.05, p<0.0001); results are shown as median change per arm and the difference of medians, alongside ANCOVA means and CIs. In 147 the FDA reviewer additionally ran post-hoc Wilcoxon tests on FSFI desire and FSDS-R item 13 because the changes were not normally distributed.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census: "ANCOVA adjusting for center and baseline value (Wilcoxon rank-sum used where normality assumptions failed)". Per the reviews the assignment was by endpoint and pre-specified: SSE by (stratified) Wilcoxon rank-sum; desire by ANCOVA. The only data-driven switch documented is the FDA reviewer's post-hoc nonparametric analysis of FSFI desire and FSDS-R Q13 in Study 147.
- The census: co-primary desire endpoint was FSFI desire "across all main efficacy trials". In 511.71 and 511.75 the desire co-primary was the eDiary daily desire score; FSFI desire was co-primary only in 511.147 (and in the European 511.77).
- The census: "Hochberg-type step-up procedure controlled multiplicity across the two co-primary endpoints". Hochberg was applied across doses, in two stages (SSE first, then desire among doses significant on SSE); both co-primary endpoints had to be significant. Study 147 (one dose) required both co-primaries to be significant, with FSFI desire, then SSE, then FSDS-R Q13 tested hierarchically.
- The census: "Missing data/bias: not separately detailed". The reviews give FAS + LOCF as primary, with baseline-carried-forward and observed-case sensitivity analyses and a detailed discussion of diary windows.
- The census lists 511.74 (randomized withdrawal) among pivotal trials; there SSE was analyzed by ANCOVA, not a rank test.

## Studies 511.71 (VIOLET) and 511.75 (DAISY)

### Design

- 511.71: placebo 295, flibanserin 50 mg qhs 295, 100 mg qhs 290 (880 randomized). 511.75: placebo 399, 25 mg bid 396, 50 mg bid 393, 100 mg qhs 396 (1582) [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 3, p.19].
- Randomization stratification: Not stated for 71/75 (the stratified test uses pooled center).
- 24-week, randomized, double-blind, placebo-controlled [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.18].
- Primary population: full analysis set (FAS) = randomized, at least one dose, at least one on-treatment efficacy assessment; LOCF [[MedR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf)]. FAS N in the label: Study 1 (71) 280 flibanserin 100 mg / 290 placebo; Study 2 (75, excluding two sites with data integrity issues) 365 / 372 [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/022526lbl.pdf) Table 6].

### Endpoint

- Change from baseline (4-week screening period) to Week 24 (Weeks 21-24 or last 4 weeks of recorded data) in monthly count of satisfying sexual events from a daily eDiary [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.14; [MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf)].
- Derivation: Total monthly count of SSEs = 28 × (sum of SSEs entered)/(sum of number of days entered). As implemented, diary data were grouped into intervals anchored to clinic visits (28 days before the visit, not spanning the previous visit; visit windows ±7 days); a minimum of 14 days of data was required, otherwise LOCF [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.14, p.27, p.35].
- Distribution: baseline SSE right-skewed, range 0 to 23, median 2, about 20% with zero events and about 25% with at least 5 [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.20].

### Hypothesis and contrast

- Each flibanserin dose vs placebo, pairwise; two-sided 0.05 overall [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.15; [MedR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf)].
- The reviewer's statement of the hypothesis tested: observations in the two groups come from the same distribution versus a shift [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.27].
- Estimand: Not stated.

### Decision rule

- Not documented as contingent in the SAP descriptions: SSE was assigned the Wilcoxon rank-sum test and desire the ANCOVA [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.15]. Background: at the 10 Oct 2007 pre-NDA meeting FDA accepted "Analysis by Wilcoxon (rank based) or ANCOVA methods, depending on distribution of data" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf), regulatory history]. A later clinical review summarizes the trials as using "ANCOVA and nonparametric methods (in case the normality assumption of ANCOVA was violated)" and says the pre-specified SSE analysis "used mean change from baseline" [[MedR-2015](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf) p.29-30]. Any formal normality test or threshold: Not stated.

### Primary analysis method

- Test name as given: "Wilcoxon rank sum test stratified by pooled center" [[MedR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf); [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/022526lbl.pdf) Table 6 footnote].
- What is ranked: change from baseline in standardized 28-day SSE count (baseline adjustment is by using the change score, not a covariate). Ranking scope (within stratum vs overall), stratum weights, tie handling: Not stated.
- Stratification: pooled center; centers with fewer entered patients than a complete block were pooled by country. Number of pooled centers: Not stated.
- Test statistic and reference distribution: Not stated.
- Accompanying parametric model (used for the desire co-primary, and the source of the SSE mean difference and CI in the label):

| Term | Type | Levels | Notes |
|---|---|---|---|
| Change from baseline | continuous (response) | — | |
| Treatment | categorical fixed | 3 (71) / 4 (75) | |
| (Pooled) center | categorical fixed | Not stated | |
| Baseline score | continuous covariate | — | |

### Effect estimate and interval

- Median change from baseline per arm and "Treatment Difference" = difference between the two medians (e.g. 1.0 − 0.0 = 1.0; 1.0 − 0.5 = 0.5) [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 5]. No CI for the median difference.
- Label additionally gives mean change per arm and a mean treatment difference with 95% CI (model for the SSE mean difference not stated; the label footnote ties ANCOVA to the other endpoints).

### Missing data and intercurrent events

- LOCF in the FAS. Subjects were discontinued by protocol for more than 7 consecutive days without study drug or for illness preventing compliance, which increased imputation [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.11].
- Discontinuation: 31% flibanserin 100 mg vs 25% placebo across both studies [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.11].

### Multiplicity

- Hochberg across doses in two stages: first SSE for each dose vs placebo; then, among doses significant for SSE, desire. Both co-primary endpoints had to be significant. Because of the Hochberg adjustment p-values are reported only as <0.05 or >0.05 [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.15, p.17].

### Sample size assumptions

Not stated for 71/75.

### Software and code

Not stated.

### Results as presented

| Study | Placebo median change | FLI 100 mg qhs median change | Difference of medians | p (Wilcoxon) | Desire (eDiary) LS mean diff; p (ANCOVA) |
|---|---|---|---|---|---|
| 511.71 | 0.0 | 1.0 | 1.0 | <0.05 | 2.2; >0.05 |
| 511.75 | 0.5 | 1.0 | 0.5 | <0.05 | 1.7; >0.05 |

Source: [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 5, p.27]. Layout: SSE block shows "Median change from baseline" per arm, treatment difference, p-value; desire block shows LS mean change per arm, difference, p-value.

### Sensitivity and supportive analyses

- Unstandardized total SSE count: median difference 1.0 in both studies, p<0.05 [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 6].
- 28-day intervals from randomization with LOCF if fewer than 14 days: 1.0 and 1.0, p<0.05 (511.75 p=0.048 after Hochberg) [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 7, p.35].
- All available data, not standardized: 511.71 1.0, p<0.05; 511.75 0.8, p>0.05 [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 8].
- Applicant: baseline carried forward and MMRM, described as consistent [[MedR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf)].

### FDA reviewer comments and reanalyses

- The 2010 reviewer reported medians rather than the applicant's means "because the analyses used the Wilcoxon rank sum test" [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.27].
- Clinical reviewers: the applicant's mean-based effect (0.8 to 1.0 per month) overstated benefit; with non-normal data the median (0.5 to 1.0) is preferred [[MedR-2015](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf) p.30].
- Criticism of visit-anchored diary windows and of standardizing partial diaries to 28 days [[StatR-2010](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.14-15, p.27].

## Study 511.147 (BEGONIA)

### Design

- 1,090 randomized 1:1 to flibanserin 100 mg qhs or placebo; treated (ITT) 542 / 545; FAS 532 / 536 [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.9-10, Table 2].
- "Randomization was stratified by center" [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.6].
- 24-week, double-blind, placebo-controlled; patients who stopped drug continued study visits [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.6].
- Primary analysis: FAS with LOCF. N analyzed for SSE: 500 / 521 (about 3% of FAS not in the applicant's LOCF analysis) [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.9, p.12, p.16].

### Endpoint

- Change from baseline in SSEs from eDiary standardized to 28 days: Total monthly events = 28 × (sum of the number of events)/(sum of number of days entered); comparison between the four-week screening period and Weeks 21 to 24 (or last 4 weeks of recorded data) [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.7; [MedR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf) p.42].
- Baseline SSE (FAS): mean 2.51 (SD 2.49) and 2.66 (2.93); median 2 [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 4].

### Primary analysis method

- SSE: "a stratified Wilcoxon rank sum test where strata were the pooled centers"; baseline handled by using change from baseline [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.8]. Ranking scope, weights, ties, statistic, reference distribution: Not stated.
- FSFI desire (other co-primary), as pre-specified: ANCOVA.

| Term | Type | Levels | Notes |
|---|---|---|---|
| Change from baseline to Week 24 in FSFI desire | continuous (response) | — | score range 1.2 to 6.0 in steps of 0.6 |
| Treatment | categorical fixed | 2 | |
| Pooled center | categorical fixed | Not stated | |
| Baseline score | continuous covariate | — | |
| Hormonal contraceptive use | covariate (categorical; levels Not stated) | — | listed with the covariates |

- FDA reviewer's Table 5 reports all three endpoints (FSFI desire, SSE, FSDS-R item 13) with a "Wilcoxon rank sum test" (not described as stratified) because "The change from baseline in these endpoints were not normally distributed" [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.11-12]. How normality was assessed: Not stated.

### Decision rule

- Sponsor: none documented (fixed assignment by endpoint). FDA reviewer: "distributional assumptions were checked and the results based on the appropriate analyses are reported" [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.4]; test and threshold Not stated. Secondary endpoints: "ANCOVA or Wilcoxon rank sum test (as deemed appropriate)" [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.9].

### Effect estimate and interval

- Median (Q1, Q3) change per arm and difference of medians, no CI [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 5]. ANCOVA LS mean difference with 95% CI given in the appendix and the label [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 10; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/022526lbl.pdf) Table 6].

### Missing data and intercurrent events

- LOCF (primary). FDA sensitivity: baseline carried forward for subjects with no post-baseline data (LOCF0) and observed cases at Week 24 (OC) [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.16].
- Completion 75.3% vs 81.8%; discontinuation for adverse events 9.8% vs 3.7% [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 2].

### Multiplicity

- Both co-primary endpoints must be statistically significant [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.8]. The Division Director memo adds hierarchical testing: FSFI desire, then SSE, then FSDS-R Question 13 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf) volume, Division Director Review p.10].

### Sample size assumptions

- At least 450 per arm for at least 90% power to detect a mean difference of 1 SSE and 0.25 in desire score [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.4].

### Software and code

Not stated for the efficacy analyses.

### Results as presented

FDA Table 5 (FAS, LOCF; Wilcoxon rank sum) [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.12]:

| Endpoint | FLI N | FLI median (Q1, Q3) | Placebo N | Placebo median (Q1, Q3) | Difference | p |
|---|---|---|---|---|---|---|
| FSFI desire domain | 506 | 1.20 (0.0, 1.8) | 525 | 0.60 (0.0, 1.2) | 0.60 | <0.0001 |
| SSEs (standardized) | 500 | 1.04 (0.0, 4.0) | 521 | 0.50 (-1.0, 2.2) | 0.54 | <0.0001 |
| FSDS-R item 13 | 506 | -1 (-2, 0) | 525 | 0 (-1.0, 0.0) | -1.0 | <0.0001 |

ANCOVA counterpart for SSE (FAS LOCF): 2.43 (0.22) vs 1.46 (0.22); difference 0.97 (0.43, 1.52); p=0.0005 [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 10].

Label Table 6 layout (three studies side by side, flibanserin and placebo columns), SSE block: Baseline (Mean); Change from baseline (Mean); Treatment diff. (95% CI); Change from baseline (Median); Median treatment difference; p-value vs placebo. Values:

| | Study 1 (71) | Study 2 (75) | Study 3 (147) |
|---|---|---|---|
| FAS n (ADDYI / placebo) | 280 / 290 | 365 / 372 | 532 / 536 |
| Mean change | 1.6 / 0.8 | 1.8 / 1.1 | 2.5 / 1.5 |
| Mean treatment diff (95% CI) | 0.9 (0.3, 1.4) | 0.6 (-0.03, 1.2) | 1.0 (0.4, 1.5) |
| Median change | 1.0 / 0.0 | 1.0 / 0.5 | 1.0 / 0.5 |
| Median treatment difference | 1.0 | 0.5 | 0.5 |
| p-value vs placebo | p<0.01 | p<0.01 | p<0.0001 |

Note the Study 2 mean-difference CI includes 0 while the rank p-value is <0.01.

### Sensitivity and supportive analyses

FDA Table 11, SSE (Wilcoxon) [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.16]:

| Population | FLI N, median (Q1, Q3) | Placebo N, median (Q1, Q3) | Median diff | p |
|---|---|---|---|---|
| FAS LOCF | 500, 1.04 (0.0, 4.0) | 521, 0.50 (-1.0, 2.2) | 0.54 | <0.0001 |
| FAS LOCF0 | 532, 1.0 (0.0, 3.6) | 536, 0.35 (-1.0, 2.1) | 0.65 | 0.0003 |
| OC | 329, 1.0 (0.0, 3.7) | 361, 0.45 (-1.0, 2.1) | 0.55 | 0.0020 |

For FSFI desire the median difference was 0.00 under LOCF0 and OC although p≤0.0009 (heavily tied discrete scale) [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 11].

### FDA reviewer comments and reanalyses

- "Changes in the pre-specified analysis methods due to non-normal data" is listed as a review consideration; conclusion: no statistical issues in analysis methods [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) p.4, p.15].
- Responder analyses (ROC cutoffs anchored to PGI-I) used CMH stratified by pooled center [[StatR-2013](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) Table 7].

## Verbatim specification excerpts

> "The second co-primary endpoint of change from baseline in the frequency of satisfying sexual events (SSE) measured by the eDiary was analyzed using a stratified Wilcoxon rank sum test where strata were the pooled centers. The adjustment for baseline SSE was taken into account by using change from baseline in the number of SSE in the test." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf), 2013 review p.8]

> "As specified in the protocol, the first co-primary endpoint of change from baseline in the score of the FSFI© desire items was analyzed using analysis of covariance (ANCOVA) with treatment and pooled center as fixed effects, baseline score and hormonal contraceptive use as covariates." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf), 2013 review p.8]

> "The change from baseline in these endpoints were not normally distributed, therefore, results based on non-parametric method was reported." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf), 2013 review p.11]

> "Pairwise comparisons using the Wilcoxon rank sum tests evaluated the satisfying sexual event endpoint and analysis of covariance evaluated the monthly sum or responses for sexual desire." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf), 2010 review p.15]

> "Hochberg’s method was implemented in two stages; first for SSE and then for sexual desire." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf), 2010 review p.15]

> "Although the NDA focuses on the means when reporting results for SSEs, I am reporting the medians because the analyses used the Wilcoxon rank sum test, which is a nonparametric equivalent to the t-test." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf), 2010 review p.27]

> "SSEs were analyzed using Wilcoxon rank sum test stratified by pooled center (“for centers where the number of entered patients is less than a complete block, patients will be pooled into pooled centers by country” 4 )." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf), 2010 clinical review]

> "Analysis by Wilcoxon (rank based) or ANCOVA methods, depending on distribution of data, is acceptable." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf), pre-NDA meeting 10-10-07]

> "For satisfying sexual events, p-values are based on the Wilcoxon rank sum test stratified by pooled center. Median change from baseline is shown because the data are not normally distributed." — [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/022526lbl.pdf), Table 6 footnote]

> "Total monthly events = 28 x (sum of the number of events) / (sum of number of days entered)." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf), 2013 review p.7]

## Implementation notes (inference)

- Inference: "Wilcoxon rank sum test stratified by pooled center" corresponds to the van Elteren test, e.g. SAS `PROC FREQ; TABLES pooled_center*trt*chg / CMH2 SCORES=MODRIDIT;` (row mean scores statistic), or R `coin::wilcox_test(chg ~ trt | pooled_center)` (stratum-specific ranks without van Elteren weighting) or `sanon`/hand-coded van Elteren. The sources do not say which weighting was used, so a programmer must choose (van Elteren 1/(n_h+1) weights are the usual default).
- In 71/75 comparisons were pairwise against placebo; whether ranks were formed using only the two arms being compared is not stated (a two-sample rank-sum test implies yes).
- The "treatment difference" for SSE is the simple difference of the arm medians, not a Hodges-Lehmann shift estimate; on tied or discrete data this can be 0 while the test is highly significant (as seen for FSFI desire under LOCF0/OC). A Hodges-Lehmann estimate with a stratified CI would be a more coherent companion to the test.
- The endpoint is a rate rescaled to 28 days, so values are non-integers when diary days differ; this breaks some ties relative to raw counts. FDA's sensitivity analysis on unstandardized counts shows the choice can matter (511.75).
- The FDA reviewer's own Wilcoxon tests in Study 147 appear to be unstratified (footnote says only "Wilcoxon rank sum test"), so reviewer and sponsor p-values need not match.
- Pooling rule for small centers (by country, when fewer patients than a randomization block) is needed before the stratified test can be run.

## Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000StatR.pdf) — fetched (statr.txt; a combined file containing the 2013 review of Study 147 with its own page numbers, a 2015 clinical pharmacology statistics review, and the 2010 review of Studies 71/75, cited here as StatR-2013 and StatR-2010)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000MedR.pdf) — fetched (medr.txt; combined 2015, 2013 and 2010 clinical reviews and memos)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/022526Orig1s000SumR.pdf) — fetched (sumr.txt); no rank-method detail
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/022526lbl.pdf) — fetched (label.txt)
- ClinicalTrials.gov API v2 for [NCT00360529](https://clinicaltrials.gov/study/NCT00360529), [NCT00360555](https://clinicaltrials.gov/study/NCT00360555), [NCT00996164](https://clinicaltrials.gov/study/NCT00996164) — fetched; no documents posted
- Derogatis 2012, Thorp 2012, Katz 2013 (J Sex Med) — not fetched; not open access in Europe PMC
- Sponsor SAPs (cited in the 2010 review as CSR Section 16.9.1) — not publicly available
