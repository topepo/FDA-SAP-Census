# Sotatercept-csrk (Winrevair) — BLA 761363

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [Protocol and SAP (NCT04576988, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) · [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/761363Orig1s000lbl.pdf)

Census entry: [`README.md`](../../README.md) line 16205. Pulmonary arterial hypertension. Merck Sharp & Dohme (Acceleron). Approved 2024.

**Summary:** STELLAR compared sotatercept with placebo (1:1) on change from baseline in 6-minute walk distance (6MWD) at Week 24. The analysis was an Aligned Rank Stratified Wilcoxon (ARSW) test with the two randomization factors as strata, with a Hodges-Lehmann (HL) location shift and 95% CI. Deaths received the worst rank (coded as a change of -2000 m), non-fatal clinical worsening with missing Week 24 the next-worst rank (-1000 m), and other missing values were multiply imputed (m = 100, FCS regression). Result: HL shift 40.8 m (ASE 6.8), 95% CI 27.5 to 54.1, p < 0.001.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census says "stratified Wilcoxon rank-sum test"; that is the protocol wording. The final SAP (v2.0, as described by FDA) used the *aligned rank* stratified Wilcoxon test, which is not the van Elteren test. The census does not mention alignment.
- The census says the "-2000 m / -1000 m" codings are only sensitivity variants. FDA's label footnote states that the displayed (primary) results code deaths as -2000 m and clinical worsening as -1000 m "to receive the worst rank" / "next-worst rank"; the sensitivity analyses A-C differ only in tie-breaking, and gave identical results.
- The census does not give number of imputations (100), imputation model (FCS regression within stratum), or results.
- The SAP itself (v2.0, 19 Sep 2022) is not public; the ClinicalTrials.gov document is the protocol (Revision 1.0, 06 Oct 2021) with a statistical section, which says "Additional detail will be described in the statistical analysis plan". The census calls this a combined Protocol/SAP.

## STELLAR (A011-11 / MK-7962-003, NCT04576988)

### Design

- Sotatercept (0.3 mg/kg first dose, then 0.7 mg/kg SC every 21 days) vs placebo, on top of background PAH therapy; 1:1; N = 163 vs 160 randomized [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.35-36; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/761363Orig1s000lbl.pdf) §14 p.10]. Planned N = 284 (142 per arm) [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.2 p.83].
- Randomization stratification factors [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §6.4 p.42]:
    - Baseline WHO functional class: II or III (2 levels)
    - Background PAH therapy: mono/double or triple (2 levels)
- Double-blind, placebo-controlled; 24-week double-blind placebo-controlled period, then long-term double-blind period [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §6.4].
- Primary analysis population: Full Analysis Set, "All participants will be analyzed according to the treatment arm to which the participant is randomized" [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.3 p.83]; N = 163 / 160 [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) Table 15 p.37].

### Endpoint

- Change from baseline in 6MWD (meters) at Week 24 [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.5.1 p.84].
- Derivation: Week 24 value minus baseline. Baseline definition: Not stated in the sections consulted (6MWT was done twice at screening [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) schedule of events]).
- Distributional remarks: Not stated. The rank method is motivated by the need to place deaths on the same scale (composite strategy) rather than by a normality argument [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.31].

### Hypothesis and contrast

- Two-sided, alpha 0.05 [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.2 p.83; [IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.31].
- Single comparison: sotatercept vs placebo.
- Estimand [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.31]: variable is change from baseline in 6MWD at Week 24 "with death prior to Week 24 represented quantitatively by any fixed worst-rank change from baseline (e.g., -2000m)"; population-level summary is the difference in "midpoints" (location-shift parameter); death handled by a composite strategy; changes in study drug or background therapy handled by treatment policy.

### Decision rule

Not contingent. The rank test was the pre-specified primary analysis.

### Primary analysis method

- Test name: "Aligned Rank Stratified Wilcoxon (ARSW) test with the randomization stratification factors as strata" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.31]. The protocol says only "stratified Wilcoxon test with the randomization factors as strata" [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.5.1 p.84].
- What is ranked: aligned change-from-baseline values. "the endpoint values are first aligned across the randomization strata using the stratum-level Hodges-Lehmann location shift estimates, and the aligned values are then analyzed using a Wilcoxon rank sum test" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.31]. Ranking scope after alignment: overall (a single Wilcoxon rank-sum test on the aligned values), as described. Score type and tie handling: Not stated.
- Stratification: WHO FC (II/III) x background therapy (mono/double vs triple). Whether the strata are the 4 cross-classified cells or handled another way: Not stated (the text says "randomization factors as strata").
- No model is fitted for the primary analysis.
- Test statistic and reference distribution: Not stated beyond "Wilcoxon rank sum test" and "2-sided p-value". The results table reports an "ASE" (asymptotic standard error) for the HL estimate [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) Table 15 p.37], which indicates asymptotic inference. Continuity correction: Not stated.
- Parametric model accompanying it: ANCOVA sensitivity analysis "with randomization factors and baseline 6MWD as covariates" [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.5.1.1(e) p.85]. This appears in the protocol's list; the FDA review's list of sensitivity analyses (A-E) does not include it.

| Term (ANCOVA sensitivity, protocol only) | Type | Levels | Notes |
|---|---|---|---|
| Treatment | categorical | 2 | sotatercept, placebo |
| WHO FC | categorical | 2 | II, III |
| Background PAH therapy | categorical | 2 | mono/double, triple |
| Baseline 6MWD | continuous | - | |

### Effect estimate and interval

- HL location shift, sotatercept minus placebo, described in the results footnote as "Hodges-Lehmann location shift from placebo estimate (median of all paired differences)" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) Table 15 p.37; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/761363Orig1s000lbl.pdf) §14 p.11], reported with an asymptotic standard error (ASE) and a 95% CI.
- The CI is symmetric about the estimate and equals estimate ± 1.96 x ASE (40.8 ± 1.96 x 6.8 = 27.5, 54.1), see Implementation notes.
- Per-arm "Median estimate (min, max)": "Average, minimum, and maximum of the medians across the imputed datasets if missing data imputed" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) Table 15 footnote p.37].

### Missing data and intercurrent events

- Deaths: "the worst-rank score was assigned for the nonexistent change from baseline at Week 24" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.32]. Label: "Change from baseline in 6 MWD at Week 24 for subjects who died was imputed to -2000 meters to receive the worst rank." [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/761363Orig1s000lbl.pdf) §14 p.11]
- Missing Week 24 due to non-fatal clinical worsening: next-worst rank; label: "imputed to -1000 meters to receive the next-worst rank" [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/761363Orig1s000lbl.pdf) §14 p.11].
- Other missing: "standard multiple imputation" under MAR. m = 100 complete datasets from a fully conditional specification (FCS) regression model "accounting for the baseline measurement, treatment group, and prior to the efficacy assessment at time point" being imputed, sequentially in order of timepoints, "performed within the relevant stratum" [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.31-32]. Seed 7962003 [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.32].
- Combination: "The m complete datasets are analyzed by using the ARSW test. The results from the m complete datasets are combined for the inference." [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.32]. The combination rule (Rubin's rules on the HL estimate and ASE, or another rule for the p-value) is Not stated.
- Amount missing at Week 24: 6 (4%) sotatercept, 13 (8%) placebo [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) Table 15 p.37]. The split of these into death / clinical worsening / other is Not stated in the table.

### Multiplicity

Gatekeeping (fixed sequence): primary, then 9 ranked secondary endpoints, each at two-sided 0.05 only if all preceding were significant [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.5.2 p.87; [IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.34].

### Sample size assumptions

"assuming a 1:1 randomization, a 2-sided 0.05 type I error rate, a 25-m improvement in sotatercept treatment compared to placebo, a common standard deviation (SD) of 50 m, and 121 participants per arm, the statistical power is approximately 96% under the Wilcoxon rank-sum test using N-Query®." [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.2 p.83]. 15% dropout gives 142 per arm.

### Software and code

- nQuery for sample size [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.2]. Analysis software: Not stated. No code in the sources.

### Results as presented

- FDA Table 15 layout [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.37]: columns Sotatercept (N=163), Placebo (N=160). Rows: Baseline mean (SD); Value at Week 24 mean (SD); Missing n (%); Change from baseline mean (SD); Median estimate (min, max) across imputations; HL location shift (ASE); 95% CI of HL shift; Wilcoxon p-value.
- Label [§14 p.11]: text only, "placebo-adjusted median increase in 6 MWD was 41 meters (95% CI: 28, 54; p<0.001)", plus a subgroup forest plot of HL shifts.

| Parameter | Sotatercept (N=163) | Placebo (N=160) |
|---|---|---|
| Baseline, mean (SD) | 397.6 (84.3) | 404.7 (80.6) |
| Week 24, mean (SD) | 439.7 (97.4) | 408.4 (101.9) |
| Missing, n (%) | 6 (4) | 13 (8) |
| Change from baseline, mean (SD), observed | 40.1 (64.3) | -1.4 (72.0) |
| Median estimate (min, max over imputations) | 34.4 (32.5, 35.5) | 1.0 (-1.0, 5.0) |
| HL location shift (ASE) | 40.8 (6.8) | - |
| 95% CI | (27.5, 54.1) | - |
| ARSW p-value | <0.001 | - |

- Figure: forest plot of HL shift by subgroup [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) Figure 50 p.185; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/761363Orig1s000lbl.pdf) Figure 1].

### Sensitivity and supportive analyses

- A (deaths -2000 m, clinical worsening -1000 m, ties broken by subtracting baseline 6MWD): identical to primary, HL 40.8 (6.8), CI 27.5 to 54.1, p < 0.001 [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) Table 97 p.183].
- B (deaths and clinical worsening share one worst rank, tied): identical [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.183].
- C (both coded -2000 m, ties broken by baseline): identical [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.184].
- D (control-based pattern-mixture MI, imputation model estimated from placebo only, m = 100, then ARSW): HL 39.9 (6.7), CI 26.7 to 53.1, p < 0.001 [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) Table 98 p.184].
- E (tipping point; shift applied to imputed sotatercept values): "the tipping point was not estimable" because so few sotatercept participants had missing data not due to death/worsening [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.184].
- Protocol also listed a completers analysis and an ANCOVA [[Prot](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) §11.5.1.1 d, e p.85]; results not in the FDA review sections consulted.
- Secondary endpoints PVR, NT-proBNP and PAH-SYMPACT domain scores were also analyzed by ARSW with HL shift in the FDA review (protocol had planned ANCOVA); for SYMPACT, deaths were coded 200 and clinical worsening 150 [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.39, 43].

### FDA reviewer comments and reanalyses

- Reviewer reproduced the primary result ("Clinical Study Report Table 11-1 (Page 50) and reviewer's results") [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.37] and ran sensitivity analyses A-D ("Reviewer's results") [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.183-184]. No criticism of the method found.
- Subgroup shrinkage analysis with a Bayesian hierarchical model on the treatment effect [[IntR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) p.184].

### Verbatim specification excerpts

> "The change in 6MWD at Week 24 from baseline will be analyzed using the stratified Wilcoxon test with the randomization factors as strata. The Hodges-Lehmann location-shift estimate of the treatment group difference with 95% CI will be provided." — [[protsap.txt](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf), p.84]

> "For participants who die, the worst-rank score will be used to impute the missing data. For participants who experience a clinical worsening event (other than death), the next worst-rank score will be used to impute the missing data." — [[protsap.txt](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf), p.84]

> "In this case, participants who die will be considered to have a 6MWD at Week 24 of -2000 meters. Ties will be broken by subtracting the individual participant's baseline 6MWD value from the imputed Week 24 6MWD value. In this case, participants with higher baseline 6MWD values will have larger negative imputed Week 24 changes from baseline resulting in lower ranks among those who die." — [[protsap.txt](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf), p.84]

> "The endpoint was analyzed using the Aligned Rank Stratified Wilcoxon (ARSW) test with the randomization stratification factors as strata. In this test, the endpoint values are first aligned across the randomization strata using the stratum-level Hodges-Lehmann location shift estimates, and the aligned values are then analyzed using a Wilcoxon rank sum test. The output from this analysis was used to provide a 2-sided p-value and corresponding Hodges-Lehmann location- shift estimate of the overall treatment difference with 95% confidence interval." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf), p.31]

> "The missing data are filled in m times to generate m (where m =100) complete datasets using a fully conditional specification regression model accounting for the baseline measurement, treatment group, and prior to the efficacy assessment at time point “X” that is to be imputed. For each participant requiring imputation, this imputation was performed within the relevant stratum." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf), p.32]

> "The m complete datasets are analyzed by using the ARSW test." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf), p.32]

> "The results from the m complete datasets are combined for the inference." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf), p.32]

> "The random number seed used for all imputations was 7962003." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf), p.32]

> "Population-level summary: the midpoint of the distribution of the variable/endpoint noted above, compared between treatment conditions using a difference [sotatercept minus placebo] in midpoints; this between-treatment difference is referred to in statistical terms as the location-shift parameter." — [[intr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf), p.31]

> "Change from baseline in 6 MWD at Week 24 for subjects who died was imputed to -2000 meters to receive the worst rank. Change from baseline in 6 MWD at Week 24 for subjects who had missing data due to a non-fatal clinical worsening event was imputed to -1000 meters to receive the next-worst rank." — [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/761363Orig1s000lbl.pdf), p.11]

### Implementation notes (inference)

- Inference: the ARSW description is not the classical Hodges-Lehmann (1962) aligned rank test (which centers each stratum by a stratum location estimate such as the stratum mean or median). As worded, each stratum is aligned by its own two-sample HL shift estimate; the exact alignment (subtract the stratum HL shift from which arm, or subtract a stratum center) is not specified in public sources. A programmer would need the Merck SAP or a reference such as Mehrotra, Lu and Li (2010, "Rank-based analyses of stratified experiments: alternatives to the van Elteren test") which the wording resembles. Treat the alignment step as an open decision.
- Inference: the reported CI equals estimate ± 1.96 x ASE, so the interval is a Wald interval on an HL-type estimate with an asymptotic SE (and, after MI, probably Rubin's rules on estimate and SE), not the distribution-free Moses order-statistic interval. With only 19 of 323 imputed or coded values, between-imputation variance would be small.
- Inference: because -2000 and -1000 are far outside the observable range, primary and sensitivity A-C give identical ranks apart from ordering among the few deaths/worsening cases; with rank methods the specific constants do not matter as long as ordering is preserved. They would matter for the ANCOVA sensitivity ("worst change from baseline").
- Inference: MI was run first, then the death/worsening constants overwrite those subjects in each completed dataset; the ARSW is run per dataset. A programmer must decide the pooling rule for the p-value (pool the standardized test statistic, or derive it from pooled estimate/SE).
- R sketch: `mice`/FCS by stratum, then per dataset compute stratum HL shifts (`wilcox.test(..., conf.int = TRUE)$estimate`), align, run `wilcox.test` or `coin::wilcox_test` on aligned data, pool.

### Sources consulted

- [Protocol and SAP (NCT04576988, ClinicalTrials.gov)](https://cdn.clinicaltrials.gov/large-docs/88/NCT04576988/Prot_SAP_000.pdf) — fetched (protsap.txt). Protocol Rev 1.0 with statistical section; the standalone SAP v2.0 is not posted.
- [FDA Integrated Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2024/761363Orig1s000IntegratedR.pdf) — fetched (intr.txt). Not listed in census.
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2024/761363Orig1s000lbl.pdf) — fetched (label.txt).
- NEJM 2023;388:1478 (Hoeper) — not open access in Europe PMC; not fetched.
