# Teduglutide (Gattex) — NDA 203441

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000MedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2012/203441Orig1s000lbl.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC3112364/)

Census entry: [`README.md`](../../README.md) line 42721. Gastroenterology (short bowel syndrome). NPS Pharmaceuticals. Approved 2012.

**Summary:** In supportive trial CL0600-004 (placebo, teduglutide 0.05 and 0.10 mg/kg/day), the amended primary endpoint was a 6-level graded response score (0-5) built from percent reductions in weekly parenteral volume at Weeks 16-20 and 20-24. Pairwise treatment comparisons used a rank ANCOVA adjusting for baseline PN consumption level and baseline weekly PN volume, in a step-down sequence starting with the high dose. The high dose failed (statistic 1.96, p=0.161), so the low-dose result (7.32, p=0.007) was exploratory. No effect estimate accompanied the test.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- None on the method. Notes:
  - The pivotal trial CL0600-020 analyzed its primary binary endpoint with a CMH test adjusted for the stratification factor per the FDA statistical review [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=18) PDF p.18], not only Fisher's exact (Fisher was the sample-size basis). Out of scope here.
  - Amendment date: the statistical review gives protocol Amendment 4b on June 29, 2007 and the SAP amendment on April 20, 2007 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=12) PDF p.12]; the clinical review gives "Amendment 4, 13-Feb-2007" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000MedR.pdf#page=59) PDF p.59].
  - The score table itself is an image in both FDA reviews; the cell values below come from the open-access trial publication.

Page tags are PDF page indices of the downloaded files.

## CL0600-004 (NCT00081458)

### Design

- Three arms, 1:2:2: placebo 16, teduglutide 0.05 mg/kg/day 35, 0.10 mg/kg/day 33 randomized (84 total) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=10) PDF p.10, p.20].
- Randomization strata: participation in the 72-hour nutrient absorption test (2 levels: yes, no) and PN consumption (3 levels: IV fluid and electrolytes only 3-7 times weekly; PN 3-5 times weekly; PN 6-7 times weekly) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=10) PDF p.10].
- Double-blind, placebo-controlled, 24 weeks, after PN optimization and stabilization [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=9) PDF p.9-10].
- Primary analysis population: ITT = randomized and received at least one dose, analyzed as randomized; N = 16 / 35 / 32 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=16) PDF p.16, p.20]. PP: 15 / 26 / 29.

### Endpoint

- "An ordered categorical (or graded) response variable that accounts for both intensity and duration of response at the end of the 24-week treatment period" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=12) PDF p.12]. Intensity = percent reduction from baseline in weekly PN volume (20% to 100%); duration = response at Weeks 16 to 20 and Weeks 20 to 24.
- Score lookup (row = response at Weeks 16 and 20; column = response at Weeks 20 and 24) [[jeppesen_gut2011.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC3112364/), Table 1; use instructions in medr.txt PDF p.60]:

| Weeks 16 and 20 \ Weeks 20 and 24 | <20% reduction | 20-39% reduction | 40-99% reduction | 100% reduction |
|---|---|---|---|---|
| <20% reduction | 0 | 1 | 2 | 3 |
| 20-39% reduction | 0 | 2 | 3 | 4 |
| >40% reduction (as printed) | 0 | 3 | 4 | 5 |

- From the table, a score ≥1 occurs exactly when the Weeks 20 and 24 reduction is ≥20%, i.e. the original binary responder (the counts agree: 16/35 and 8/32 responders); the review notes "y1 is equivalent to the previously presented original primary endpoint" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=13) PDF p.13]. The formula for the response variable is an image in the review: Not stated in extractable text.
- How a reduction is judged "maintained" across the two visits of each pair (e.g. minimum of the two): Not stated.
- Variable type: 6-level score with heavy ties (58 of 83 subjects scored 0). FDA: the score is "not technically ordinal", e.g. a 3 from complete PN stoppage at Weeks 20-24 scores below a 4 from a 40% reduction [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=14) PDF p.14].

### Hypothesis and contrast

- Null of "no treatment difference"; two-sided tests at 0.05 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=11) PDF p.11, p.25].
- Pairwise comparisons: 0.10 vs placebo, 0.05 vs placebo, 0.10 vs 0.05 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=11) PDF p.11].
- Estimand / intercurrent events: Not stated.

### Primary analysis method

- Test name: "rank-based ANCOVA" / "Pair-wise rank ANCOVA" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=17) PDF p.17, p.25]; publication: "a rank analysis of covariance (an extension of the Wilcoxon rank sum test)" [[jeppesen_gut2011.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC3112364/)].
- Terms as described by FDA:

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 per pairwise comparison | "independent factor" |
| Baseline PN consumption level | categorical | 3 (two binary indicators: PN 3-5 times weekly, PN 6-7 times weekly; reference IV fluids 3-7 times weekly) | randomization stratum |
| Baseline weekly PN volume | continuous | — | covariate; whether it was ranked: Not stated |
| 72-hour absorption test participation | categorical | 2 | not in the Applicant's model; added in an FDA re-analysis |

- The publication describes the same analysis as using "strata for the baseline parenteral consumption level" with baseline weekly parenteral volume as a covariate [[jeppesen_gut2011.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC3112364/)]; i.e. consumption level as strata rather than indicator covariates. The two descriptions are not reconciled in the sources.
- What is ranked (response only, or response and covariate), ranking scope (overall, within pairwise subset, within stratum), score type, tie handling: Not stated.
- Test statistic and reference distribution: a single statistic per pairwise comparison is reported (1.96, 7.32, 3.06) with p-values (0.161, 0.007, 0.080) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=25) PDF p.25]. Distribution name: Not stated.

### Effect estimate and interval

- Not stated (none reported for the graded score; only category counts and percentages by arm).

### Missing data and intercurrent events

- "any patient dropping out of the study prior to study week 24 is imputed as a zero or failure" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=18) PDF p.18].
- Discontinued early: 1/16 placebo, 8/35 at 0.05, 3/33 at 0.10; no deaths [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=20) PDF p.20].

### Multiplicity

- Step-down: Step 1, 0.10 vs placebo at two-sided 0.05; if significant, Step 2, 0.05 vs placebo; if significant, Step 3, 0.10 vs 0.05; if significant, return to Step 1 for the next endpoint in the pre-specified order [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=11) PDF p.11].
- Step 1 failed, so everything after it was exploratory [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=25) PDF p.25].

### Sample size assumptions

- 80 subjects (32 / 32 / 16) for ≥90% power to detect responder rates of 5% (placebo) vs 50% (80% power for 44%), two-sided Fisher's exact test, alpha 0.05; based on the original binary endpoint and not revised for the graded score [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=11) PDF p.11].

### Software and code

- Not stated. No code in the sources.

### Results as presented

- FDA Table 7 layout: rows = response score 0 to 5 with n (%) per arm; below, a block "Rank ANCOVA Test" with one row per pairwise comparison giving the statistic and (p-value) in a single "Statistic (p-value)" column [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=25) PDF p.25].

| Response score | Placebo (N=16) | 0.05 mg/kg/day (N=35) | 0.10 mg/kg/day (N=32) |
|---|---|---|---|
| 0 (non-responder) | 15 (93.8%) | 19 (54.3%) | 24 (75.0%) |
| 1 | 0 | 6 (17.1%) | 2 (6.3%) |
| 2 | 1 (6.3%) | 6 (17.1%) | 4 (12.5%) |
| 3 | 0 | 0 | 0 |
| 4 | 0 | 2 (5.7%) | 2 (6.3%) |
| 5 | 0 | 2 (5.7%) | 0 |

| Comparison | Rank ANCOVA statistic | p-value |
|---|---|---|
| 0.10 mg/kg/day - placebo | 1.96 | 0.161 |
| 0.05 mg/kg/day - placebo | 7.32 | 0.007 |
| 0.10 - 0.05 mg/kg/day | 3.06 | 0.080 |

- Label: states only that the graded categorical score "did not achieve statistical significance for the high dose" [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2012/203441Orig1s000lbl.pdf) §14.2].

### Sensitivity and supportive analyses

- FDA re-ran the rank ANCOVA adding the 72-hour absorption test stratum: "no changes to the conclusions"; numbers not given [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=25) PDF p.25].
- PP analysis set: "no changes to the conclusions" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=25) PDF p.25].
- Key secondary (binary response, Fisher's exact): 0.05 vs placebo 45.7% vs 6.3%, p=0.0089; 0.10 vs placebo 25.0% vs 6.3%, p=0.238 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=26) PDF p.26].

### FDA reviewer comments and reanalyses

- "The rank-ANCOVA approach is less reliant on parametric model assumptions. This is beneficial in this relatively small sample environment." The non-ordinality of the score may weaken the case for ranks, but the method is "still a sufficient analytical approach" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=17) PDF p.17].
- All randomization stratification variables should be in the primary model; hence the FDA re-analysis [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=17) PDF p.17].
- Clinical reviewer: the score "was actually not ordinal though analyzed as such with ranks ANCOVA" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000MedR.pdf#page=61) PDF p.61].
- For CL0600-020 the graded score (secondary) was analyzed by "extended CMH test statistics (with standardized mid-ranks) adjusted for the randomization stratification variable" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=19) PDF p.19], a different rank method from CL0600-004.

### Verbatim specification excerpts

> "The analysis of the primary endpoint, i.e. the graded response endpoint, utilizes a rank-based ANCOVA adjusted by PN consumption level (two binary indicators; one each for PN 3-5 times weekly and PN 6-7 times weekly, and with IV fluids 3-7 times weekly serving as the reference category) and Baseline PN volume. Treatment group is an independent factor in this model." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=17), PDF p.17]

> "[1]: Test statistic is based on Pair-wise rank ANCOVA after adjustment for the baseline PN consumption level and baseline PN volume as a covariate." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=25), PDF p.25]

> "For the analysis of the primary efficacy end point (the GRS), pairwise treatment comparisons were made using a rank analysis of covariance (an extension of the Wilcoxon rank sum test) with strata for the baseline parenteral consumption level used for the stratification of the randomisation and treatment groups, with the baseline weekly parenteral volume as a covariate and a step-down procedure for multiple comparisons." — [[jeppesen_gut2011.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC3112364/)]

> "Step 1: The 0.10 mg/kg/day teduglutide group was to be compared with the placebo group using a two-sided test at a 0.05 significance level." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=11), PDF p.11]

> "For the analysis of the responder endpoints, i.e. the primary and top two secondary endpoints based on the applicant’s pre-specified ordering, a worst-case imputation is administered. Thus any patient dropping out of the study prior to study week 24 is imputed as a zero or failure." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf#page=18), PDF p.18]

> "To calculate the graded response score for an individual subject, go to the applicable row in the column “Weeks 16 to 20” (based on % reduction) and the applicable column in the column entitled “Weeks 20 to 24” and read the integer at the intersection of this row and column." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000MedR.pdf#page=60), PDF p.60]

### Implementation notes (inference)

- Inference: the reported statistics are chi-square with 1 df. `pchisq(c(1.96, 7.32, 3.06), 1, lower.tail = FALSE)` gives 0.1615, 0.0068, 0.0802, matching the reported p-values; an F reference distribution with the available denominator df does not (e.g. F(1,43) gives 0.169, 0.0097, 0.087).
- Inference: this, plus "extension of the Wilcoxon rank sum test" and "strata", points to the Koch/Quade stratified rank ANCOVA: within the two-arm subset, rank the score and the covariate (baseline PN volume) within each consumption-level stratum (standardized ranks), regress response ranks on covariate ranks (no treatment term), then test treatment on the residuals with a stratified CMH mean-score statistic. SAS sketch (not from the sources): `PROC RANK ... NPLUS1 TIES=MEAN; BY stratum;` then `PROC REG; BY stratum; MODEL r_y = r_x; OUTPUT r=resid;` then `PROC FREQ; TABLES stratum*trt*resid / CMH2 SCORES=TABLE NOPRINT;`. An alternative reading consistent with FDA's wording is a single regression of overall ranks on stratum indicators and baseline volume followed by an unstratified mean-score test on residuals. The sources do not settle which.
- With a 3-stratum by 2-arm layout and a placebo arm of 16, some strata will have very few placebo subjects; a programmer must decide how to handle sparse strata.
- The score table has an internal gap ("20-39%" then ">40%"; exactly 40% is presumably in the top row category) and is not monotone in clinical benefit; decide whether a rank method is appropriate for a similar composite.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000StatR.pdf) — fetched (statr.txt; score formula and criterion table are images)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203441Orig1s000MedR.pdf) — fetched (medr.txt; score table is an image)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2012/203441Orig1s000lbl.pdf) — fetched (label.txt)
- Jeppesen et al., Gut 2011;60:902-914 (CL0600-004 primary publication), [PMC3112364](https://pmc.ncbi.nlm.nih.gov/articles/PMC3112364/) via NCBI efetch — fetched (jeppesen_gut2011.txt; XML tags stripped, no page numbers)
- ClinicalTrials.gov API [NCT00081458](https://clinicaltrials.gov/study/NCT00081458), [NCT00798967](https://clinicaltrials.gov/study/NCT00798967) (DocumentSection) — fetched; no protocol/SAP posted
