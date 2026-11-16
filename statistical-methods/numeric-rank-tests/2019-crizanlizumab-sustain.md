# Crizanlizumab-tmca (Adakveo) — BLA 761128

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Multi-Discipline Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/761128s000lbl.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC5481200/)

Census entry: [`README.md`](../../README.md) line 40761. Hematology (sickle cell disease). Novartis. Approved 2019.

**Summary:** SUSTAIN (A2201) compared crizanlizumab 5 mg/kg and 2.5 mg/kg with placebo on each patient's annualized rate of vaso-occlusive crises (VOC). Each dose was compared with placebo by a stratified Wilcoxon rank-sum test (strata: hydroxyurea use x prior-year VOC category, 4 strata), tested in fixed sequence (high dose first) at alpha 0.05. Effect size was reported as arm medians plus a Hodges-Lehmann median difference with 95% CI. High dose: medians 1.63 vs 2.98, HL -1.01 (-2.00, 0.00), p=0.010; low dose p=0.180.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- None on the method. Details the census lacks or blurs:
  - End date in the annualization formula is last dose date + 14 days (not "days on study") [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78) PDF p.78].
  - Stratified testing was introduced in Amendment 3 (09/26/2014); Amendment 4 (04/21/2016) states the strata had been "inadvertently omitted in previous versions" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=79) PDF p.79].
  - The census says no key secondary was testable; the FDA text is inconsistent, twice saying no alpha was left "except the annual rate of days hospitalized" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=84) PDF p.84, p.89] and elsewhere listing days hospitalized among the untestable endpoints [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=85) PDF p.85].
  - The "45%" figure is the relative difference of the two arm medians (1.63 vs 2.98; NEJM reports 45.3%), not derived from the HL estimate of -1.01 [[ataga_nejm2017.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5481200/); [mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=85) PDF p.85].

Page tags are PDF page indices of the downloaded review (printed page number is 1 less).

## SUSTAIN (CSEG101-A2201, NCT01895361)

### Design

- Three arms, 1:1:1: crizanlizumab (SelG1) 5 mg/kg N=67, 2.5 mg/kg N=66, placebo N=65; 198 randomized [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=74) PDF p.74].
- Randomization strata (IXRS): hydroxyurea use (yes 123 / no 75) and number of VOCs in the previous 12 months (2 to 4: 123 / 5 to 10: 74) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=82) PDF p.82; [label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/761128s000lbl.pdf) §14].
- Double-blind, placebo-controlled; IV dosing Weeks 0, 2, then every 4 weeks; 52 weeks treatment [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=74) PDF p.74].
- Primary analysis population: ITT, all 198 randomized [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=74) PDF p.74, p.84].

### Endpoint

- Annual rate of VOC leading to a healthcare visit, adjudicated by a 3-member Crisis Review Committee; acute chest syndrome, hepatic or splenic sequestration and priapism requiring a facility visit also count [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=77) PDF p.77-78].
- Derivation, per patient:

$$
\text{annual rate of VOC} = \frac{\text{total number of VOC} \times 365}{\text{end date} - \text{date of randomization} + 1}
$$

  with end date = last dose date + 14 days; for patients never dosed, end date = end-of-study date [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78) PDF p.78].
- Early dropouts are handled only through this extrapolation. FDA example: dropout on Day 21 with 3 VOCs gives 3 x 365/35 = 31.29 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78) PDF p.78].
- Variable type: non-negative, discrete-derived, with a point mass at zero: 24/67 (36%) high dose, 12/66 (18%) low dose, 11/65 (17%) placebo had a rate of zero [[ataga_nejm2017.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5481200/)]. Death was removed from the VOC definition in Amendment 2 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=79) PDF p.79].

### Hypothesis and contrast

- Null: "the distribution of annual rate of VOC in patients treated with SelG1 and Placebo are identical"; alternative: the distributions "are different" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78) PDF p.78]. Two-sided by wording; alpha 0.05.
- Comparisons: 5 mg/kg vs placebo, then 2.5 mg/kg vs placebo (pairwise, each using only the two arms concerned is implied; Not stated explicitly).
- Estimand / intercurrent events: Not stated.

### Primary analysis method

- "stratified Wilcoxon rank sum test, with randomization strata of HU therapy and categorized VOC history" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78) PDF p.78]. Strata: HU (yes, no) x crises history (2 to 4, 5 to 10) = 4 strata [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=84) PDF p.84].
- Ranked: per-patient annualized VOC rate. Ranking scope (within stratum), stratum weights (van Elteren or other), score type, tie handling: Not stated.
- Reference distribution, continuity correction: Not stated.
- No model; no covariates beyond strata.

### Effect estimate and interval

- "Medians, median differences, and 95% confidence intervals (CIs) for the median differences were estimated using Hodges-Lehmann method" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78) PDF p.78]. Tables show a per-arm "Standard median" (ordinary sample median) and an HL "Median difference, (95% CI)" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=84) PDF p.84].
- Whether the HL estimate/CI is stratified, and the CI method: Not stated.

### Missing data and intercurrent events

- No imputation other than annualization; NEJM: "The annual crisis rate was imputed for patients who did not complete the trial" [[ataga_nejm2017.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5481200/)].
- Discontinuation before Week 52: 24/65 (36.9%) placebo, 24/67 (35.8%) 5 mg/kg, 21/66 (31.8%) 2.5 mg/kg [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=84) PDF p.84-85].

### Multiplicity

- Hierarchical: alpha 0.05 for 5 mg/kg vs placebo; if significant, 2.5 mg/kg vs placebo; key secondaries follow [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78) PDF p.78]. The low-dose comparison failed, stopping confirmatory testing [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=85) PDF p.85].

### Sample size assumptions

- At least 50 patients per group for >90% power at alpha 0.05 to detect a 40% lower annual rate with a stratified Wilcoxon rank-sum test, assuming placebo median 3.0 crises per year and SD 1.7 [[ataga_nejm2017.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5481200/)].

### Software and code

- Not stated. No code in the sources.

### Results as presented

- FDA Table 12 layout: one column per arm; rows "Standard median", "Median difference, (95% CI)", "p-value"; repeated for ITT and for two sub-populations (early discontinuers; excluding early discontinuers). Footnotes define HL and the stratified test [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=84) PDF p.84].

| Population | Statistic | Placebo | 5 mg/kg | 2.5 mg/kg |
|---|---|---|---|---|
| ITT (65/67/66) | Standard median | 2.98 | 1.63 | 2.01 |
| | HL median difference (95% CI) | | -1.01 (-2.00, 0.00) | -0.69 (-1.84, 0.02) |
| | p-value | | 0.010 | 0.180 |
| Discontinued early (24/24/21) | Standard median | 2.59 | 1.75 | 2.01 |
| | HL difference (95% CI) | | -0.36 (-3.17, 1.37) | -0.51 (-3.91, 1.31) |
| | p-value | | 0.420 | 0.469 |
| Completers (41/43/45) | Standard median | 2.98 | 1.18 | 2.01 |
| | HL difference (95% CI) | | -1.10 (-2.01, -0.05) | -0.91 (-1.90, 0.03) |
| | p-value | | 0.005 | 0.236 |

- Label Table 3: per-arm "Standard median" annual rate (1.63 vs 2.98) and "HL = -1.01, (-2.00, 0.00)"; p = 0.010 in text; also the proportion with no VOC (36% vs 17%) [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/761128s000lbl.pdf) §14].
- Figures: Kaplan-Meier time to discontinuation and time to first/second VOC [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=86) PDF p.86, p.89].

### Sensitivity and supportive analyses

- Planned: mITT, PP, and excluding patients with <6 months of treatment; subgroups by HU use, VOC history, genotype, "using the same methods as for the primary analysis" [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78) PDF p.78].
- PP (N=125): medians 1.04 vs 2.18, P=0.02 (high dose); low dose 2.00, P=0.13 [[ataga_nejm2017.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5481200/)].
- FDA: non-annualized VOC count (ITT), medians 1.00 vs 2.00, HL -1.00 (-1.00, 0.00), p=0.029 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=86) PDF p.86].
- FDA subgroups (5 mg/kg vs placebo): female 1.18 vs 3.00, HL -1.93 (-3.00, -0.75), p=0.005; male 2.50 vs 2.00, p=0.337; US 2.16 vs 3.25, p=0.010; South America 1.00 vs 1.00, p=0.657 [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=88) PDF p.88].
- Annual rate of days hospitalized (same test): medians 4.00 vs 6.87, HL 0.00 (-4.36, 0.00) [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=89) PDF p.89].
- No parametric or count-model analysis of SUSTAIN in the review.

### FDA reviewer comments and reanalyses

- On the median difference: the "45%" presentation "may be misleading suggesting a reduction in annual VOCs of 45% when this percentage is a median difference and not a reduction"; recommended leaving it out of labeling [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=85) PDF p.85].
- 35% discontinuation flagged; effect larger in completers than in discontinuers [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=85) PDF p.85].
- §8.3 Statistical Issues: no reduction in males or South American patients; subgroups not powered [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=122) PDF p.122].

### Verbatim specification excerpts

> "The annual rate of VOC = total number of VOC × 365/(end date – date of randomization + 1), where the End date = Last dose date + 14 days. For patients never dosed, End date = the end of study date." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78), PDF p.78]

> "The annual rate of VOC calculation accounted for early dropouts or lost to follow-up by extrapolating the VOC rate of every patient to one year." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78), PDF p.78]

> "A stratified Wilcoxon rank sum test, with randomization strata of HU therapy and categorized VOC history, was used to test the above hypotheses. Medians, median differences, and 95% confidence intervals (CIs) for the median differences were estimated using Hodges-Lehmann method, and the following hierarchical testing procedure was followed: α = 0.05 was utilized to test high dose (5 mg/kg) versus placebo, and if significant, to test low dose (2.5 mg/kg) versus placebo." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=78), PDF p.78]

> "P-values were from a Stratified Wilcoxon Rank Sum Test, with HU therapy (yes, no) and categorized crises history (2 to 4, 5 to 10) as the strata." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=84), PDF p.84]

> "The Hodges-Lehmann median is a non-parametric estimator of the location parameter." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=84), PDF p.84]

> "The presentation of median difference of 45% may be misleading suggesting a reduction in annual VOCs of 45% when this percentage is a median difference and not a reduction." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=85), PDF p.85]

> "Analysis of the primary efficacy endpoint was modified by taking the randomization strata into consideration. (Inclusion of the randomization stratum in the analysis of the primary endpoint was inadvertently omitted in previous versions)." — [[mdr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf#page=79), PDF p.79]

> "We calculated that a sample of at least 50 patients per group would provide the trial with a statistical power of greater than 90%, at an alpha level of 0.05, to detect a 40% lower annual rate of crises with crizanlizumab than with placebo, with the use of a stratified Wilcoxon rank-sum test, assuming a median rate of crises per year in the placebo group of 3.0 with a predicted standard deviation of 1.7." — [[ataga_nejm2017.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC5481200/)]

### Implementation notes (inference)

- Inference: "stratified Wilcoxon rank sum test" most likely means the van Elteren test. SAS: `PROC FREQ; TABLES stratum*trt*rate / CMH2 SCORES=MODRIDIT;` (row mean scores statistic, 1 df chi-square) on the two arms being compared, or `PROC NPAR1WAY WILCOXON; STRATA stratum;` in newer releases. R: `coin::wilcox_test(rate ~ trt | stratum)` (note: coin's default block weights are not van Elteren weights) or `sanon`.
- Inference: the HL CI upper limit of exactly 0.00 alongside p=0.010 suggests the HL estimate and CI were unstratified (e.g. `PROC NPAR1WAY HL`) while the p-value was stratified; heavy ties from small integer counts also make the CI coarse. The sources do not say.
- Annualization inflates rates for short follow-up; with many early discontinuers a programmer should expect extreme values and many ties at 0, and should decide on exact vs asymptotic inference accordingly.
- Each dose-vs-placebo test should be run on the two-arm subset, with the fixed-sequence gate applied afterwards.

### Sources consulted

- [FDA Multi-Discipline Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/761128Orig1s000MultidisciplineR.pdf) — fetched (mdr.txt)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/761128s000lbl.pdf) — fetched (label.txt)
- Ataga et al., NEJM 2017, author manuscript [PMC5481200](https://pmc.ncbi.nlm.nih.gov/articles/PMC5481200/) via NCBI efetch — fetched (ataga_nejm2017.txt; XML tags stripped, no page numbers)
- ClinicalTrials.gov API [NCT01895361](https://clinicaltrials.gov/study/NCT01895361) (DocumentSection) — fetched; no protocol/SAP posted
- NEJM protocol/SAP supplement — not attempted (NEJM.org returns 403)
