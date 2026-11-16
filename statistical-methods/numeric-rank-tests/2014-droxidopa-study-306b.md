# Droxidopa (Northera) — NDA 203202

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: parametric primary with a rank-based fallback that was invoked.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/203202lbl.pdf)

Census entry: [`README.md`](../../README.md) line 14182. Neurology / cardiovascular (neurogenic orthostatic hypotension). Chelsea Therapeutics. Approved 2014 (accelerated approval).

**Summary:** Study 306B compared droxidopa with placebo on change in OHSA Item 1 (0-10 dizziness score) from baseline to Week 1. The SAP specified ANCOVA adjusting for baseline, with a switch to a "non-parametric model using rank statistics adjusted for the OHSA Item 1 at Baseline" if visual inspection of diagnostic plots showed assumption violations. The sponsor invoked the switch (difference -1.0, 95% CI -2.0 to 0, p=0.018). The FDA statistician found no obvious violation and used ANCOVA (-0.94, 95% CI -1.78 to -0.1, p=0.028); the label reports the ANCOVA result. The sources never define the rank-based procedure beyond the phrase quoted above.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census attributes "-0.94 ... p=0.028" to an "FDA reviewer's ANCOVA recalculation" and "-1.0, p=0.018" to "the sponsor's non-parametric analysis": correct. But census does not say that the rank-based fallback **was** the sponsor's declared primary result and that FDA rejected the switch. The rank analysis was the sponsor's primary; ANCOVA was FDA's and the label's.
- The census's quoted "verbatim" StatR sentence ("the 1° endpoint would be tested ... without a formal test of normality") is from the Summary Review, not the Statistical Review [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000SumR.pdf#page=11) PDF p.11]. The StatR wording differs and is more specific (names independence, constant variance, normality; "rank statistics adjusted for the OHSA Item 1 at Baseline") [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=15) PDF p.15].
- The census lists the secondary order as "Weeks 2/4/8, standing SBP, falls, OHQ"; the actual order is Week 2, Week 4, standing SBP at Week 1, Week 8, falls, OHQ at Week 8 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=13) PDF p.13].

Page tags are PDF pages counted by form feeds in the `.txt` files. The StatR file bundles several reviews; the Study 306B review is PDF p.6-30; the earlier-cycle review of Studies 301/302 starts near PDF p.78.

## Study 306B (NOH306B)

### Design

- Two arms; 174 randomized: 89 droxidopa, 85 placebo [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=14) PDF p.14]. Allocation ratio and stratification factors: Not stated in the pages consulted.
- Double-blind, placebo-controlled, US only; dose titration (up to 2 weeks) then 8 weeks of treatment; patients with Parkinson's disease [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/203202lbl.pdf) §14; [StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=15) PDF p.15].
- Primary population: Full Analysis Set = randomized, received ≥1 dose, "and reported OHSA Item 1 data at Week 1"; N=69 droxidopa, 78 placebo [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=14) PDF p.14]. This is a completers-type set: 20 droxidopa and 7 placebo patients are excluded.

### Endpoint

- Change in OHSA Item 1 ("dizziness, lightheadedness, feeling faint or feeling like you might black out") from Baseline to Week 1 (Visit 4, after titration plus 1 week of maintenance) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=13) PDF p.13; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/203202lbl.pdf) §14].
- Scale 0 to 10, integer ("11-point scale") [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/203202lbl.pdf) §14; [StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=88) PDF p.88].
- OHSA Item 1 was not measured during titration, so Week 1 is the first post-baseline value [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=19) PDF p.19].
- Distributional remarks: change has "a strong linear relationship with the baseline OHSA Item 1"; variability "seemed large"; intra-subject variability 2.9 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=16) PDF p.16]. Discrete with heavy ties (integer differences from -10 to 10) by construction.

### Hypothesis and contrast

- Droxidopa vs placebo; two-sided 0.05 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=13) PDF p.13].
- Estimand: Not stated.

### Decision rule

- Trigger: visual inspection of ANCOVA diagnostic plots for "independence, constant variance or normality of the residuals"; "no formal test was proposed" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=15) PDF p.15].
- Outcome: "The sponsor reported that the assumptions for the ANCOVA were not met and used non-parametric methodology instead for the primary analysis" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=16) PDF p.16]. Which assumption failed: Not stated.
- FDA: "The reviewer, however, did not find any obvious deviation from ANCOVA assumptions" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=16) PDF p.16].
- Who made the call: the sponsor; timing relative to unblinding: Not stated.

### Primary analysis method

Parametric model (ANCOVA, dependent variable = change from baseline to Week 1):

| Term | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | |
| Baseline OHSA Item 1 | continuous | | integer 0-10 |

[[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=15) PDF p.15; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/203202lbl.pdf) §14]

Fallback (sponsor's operative analysis):

- Description: "non-parametric model using rank statistics adjusted for the OHSA Item 1 at Baseline" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=15) PDF p.15]. A table in the clinical review labels the p-value column "Non-parametric p-value" beside "Adjusted mean" and "Difference from placebo (95% CI)" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000MedR.pdf#page=51) PDF p.51 Table 21].
- What was ranked (response only, or response and baseline), ranking scope, tie handling, test statistic and reference distribution: Not stated.
- For Study 301 the same sponsor's analogous method is described as "a rank statistics using non-parametric ANCOVA" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=91) PDF p.91].

### Effect estimate and interval

- Sponsor: treatment difference -1.0, 95% CI (-2.0, 0), p=0.018 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=16) PDF p.16]. Estimator type: Not stated.
- FDA: LS mean difference -0.94, 95% CI (-1.78, -0.1) from ANCOVA [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=16) PDF p.16 Table 5].

### Missing data and intercurrent events

- Primary: no imputation; patients without a Week 1 score are excluded by the FAS definition [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=14) PDF p.14].
- Missing: 20 of 89 droxidopa and 7 of 85 placebo had no Week 1 score; more droxidopa dropouts during titration [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=18) PDF p.18].
- FDA sensitivity: baseline observation carried forward (change = 0): -0.45, 95% CI (-1.2, 0.3) [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=19) PDF p.19].
- Other secondary endpoints analyzed "with missing data excluded. LOCF was used as a sensitivity analysis" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=15) PDF p.15].

### Multiplicity

- Six secondaries tested sequentially in listed order if the primary was significant at 0.05 [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=13) PDF p.13].

### Sample size assumptions

- Not stated for the final OHSA Item 1 endpoint; sample size was set under earlier primary endpoints (falls), and the endpoint was changed twice [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=13) PDF p.13, p.25].

### Software and code

- Not stated. No code.

### Results as presented

StatR Table 5 layout: per arm N, mean, SD at Baseline and Week 1; then one row for LS mean difference with 95% CI and one for the ANCOVA p-value.

| | Droxidopa (N=69) | Placebo (N=78) |
|---|---|---|
| Baseline mean (SD) | 5.1 (2.04) | 5.1 (2.33) |
| Week 1 mean (SD) | 2.8 (2.44) | 3.8 (2.75) |
| ANCOVA LS mean difference (95% CI); p (FDA) | -0.94 (-1.78, -0.1); 0.028 | |
| Sponsor non-parametric difference (95% CI); p | -1.0 (-2.0, 0); 0.018 | |
| BOCF sensitivity (FDA) | -0.45 (-1.2, 0.3) | |

Label §14: "a statistically significant mean 0.9-unit decrease in dizziness with NORTHERA versus placebo (p = 0.028)".

Figures: cumulative distribution of change at Week 1 by arm; bubble scatter of change vs baseline with the two parallel ANCOVA lines [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=17) PDF p.17]; label Figure 2 is a distribution (histogram) of patients by change.

### Sensitivity and supportive analyses

- Responder analysis (≥4-unit improvement) favoured droxidopa [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=18) PDF p.18].
- Subgroup by fludrocortisone use with "Non-parametric p-value": no fludrocortisone -0.7 (-1.7, 0.2), p=0.065; fludrocortisone -1.9 (-4.0, 0.2), p=0.064 [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000MedR.pdf#page=51) PDF p.51].
- BOCF (above).

### FDA reviewer comments and reanalyses

- Statistician rejected the switch but noted "Both results were statistically significant" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=29) PDF p.29].
- Concern centred on differential dropout and the FAS definition rather than on the choice of test; one reviewer considered the trial negative once informative censoring is considered [[sumr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000SumR.pdf)].

### Related trials in the same NDA (rank methods, brief)

- Study 302 (randomized withdrawal): primary analysis was the Wilcoxon rank-sum test on change in OHSA Item 1, FAS, LOCF with missing post-randomization value set to change = 0; centers pooled, no stratification [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=96) PDF p.96].
- Study 301: primary ANCOVA on OHQ composite (change as dependent variable, randomization value as covariate, treatment as main effect); assumptions "were assessed and the assumptions were met" [[MedR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000MedR.pdf#page=134) PDF p.134-135]. For standing SBP the sponsor reported a rank-based "non-parametric ANCOVA" p<0.001 where FDA's ANCOVA gave 0.02; the reviewer "found the sponsor's analysis unjustified since ANCOVA model is robust enough" [[StatR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=91) PDF p.91].

### Verbatim specification excerpts

> "According to the sponsor’s final SAP, the primary endpoint would be tested using analysis of covariance (ANCOVA) model adjusting for Baseline OHSA Item 1 score. However, if any of the ANCOVA assumptions (independence, constant variance or normality of the residuals) were not met then the primary analysis would be changed to non-parametric model using rank statistics adjusted for the OHSA Item 1 at Baseline. The violation of assumptions was determined by visually inspecting the diagnostic plots and no formal test was proposed." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=15), PDF p.15]

> "The sponsor reported that the assumptions for the ANCOVA were not met and used non- parametric methodology instead for the primary analysis. The resulting p-value was 0.018 and the treatment difference in OHSA Item 1 score was -1.0 with 95% confidence interval (-2.0, 0). The reviewer, however, did not find any obvious deviation from ANCOVA assumptions." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=16), PDF p.16]

> "The Full Analysis Set (FAS) was the population used for the primary analysis and consisted of all randomized patients who received at least one dose of study drug and reported OHSA Item 1 data at Week 1." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=14), PDF p.14]

> "One simple way to impute the missing data was to carry forward the baseline observations. The treatment effect was -0.45 with 95% confidence interval (-1.2, 0.3)." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=19), PDF p.19]

> "The sponsor reported a p-value less than 0.001, which was based on a rank statistics using non-parametric ANCOVA. The reviewer found the sponsor’s analysis unjustified since ANCOVA model is robust enough and should be appropriate for the dataset." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf#page=91), PDF p.91, Study 301 SBP]

### Implementation notes (inference)

- Inference: "rank statistics adjusted for baseline" / "non-parametric ANCOVA" most plausibly means a rank ANCOVA. Two common forms: (a) Conover-Iman: rank the change and the baseline over all patients, fit ANCOVA on the ranks, F-test for treatment; (b) Quade/Koch: rank both, regress response ranks on baseline ranks ignoring treatment, then compare residuals between arms (`PROC FREQ ... CMH2 SCORES=TABLE` on the residuals, or a t/F test). The sources do not say which.
- Inference: the estimate -1.0 with CI (-2.0, 0) has integer limits, as expected of a Hodges-Lehmann shift and Moses CI on integer change scores; yet the subgroup table shows "Adjusted mean" values with a "Non-parametric p-value", so the sponsor may have paired ANCOVA-type estimates with rank-based p-values. Unresolved. Note the CI touching 0 with p=0.018 indicates the estimate/CI and the p-value came from different procedures (unadjusted HL vs baseline-adjusted rank test).
- With an 11-point integer scale there are many ties; use midranks and a tie-corrected variance.
- A visual-inspection trigger is not reproducible; a programmer building a similar plan should either pre-specify the rank ANCOVA outright or use a formal rule.
- Excluding patients without the Week 1 value (FAS) is the major analytic choice here; the rank method does not address it.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000StatR.pdf) — fetched (`statr.txt`; disposition and population tables are images)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000MedR.pdf) — fetched (`medr.txt`)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2014/203202Orig1s000SumR.pdf) — fetched (`sumr.txt`)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/203202lbl.pdf) — fetched (`label.txt`)
- Hauser et al., Mov Disord 2015 (doi 10.1002/mds.26086) — failed (403; not in PMC)
- ClinicalTrials.gov API [NCT01176240](https://clinicaltrials.gov/study/NCT01176240) — no protocol/SAP posted
