# SAP Keyword Taxonomy

A controlled vocabulary for tagging FDA Phase III submissions in `FDA_SAP_Census.md`, derived entirely from terms actually observed in the 10 submissions documented so far (5 oncology, 5 cardiovascular/metabolic). Each entry in the census carries a **Keywords:** line using these terms, grouped into the same categories as below, so entries can be filtered/grepped by method. This is a living taxonomy — as more submissions are added, new terms should be appended to the relevant table rather than creating parallel/duplicate terms for the same concept.

Short trial names used in the "Seen in" columns: KEYNOTE-024, FLAURA, SOLO-2, PREVAIL, CLL14 (oncology); EMPA-REG, PARADIGM-HF, DECLARE-TIMI58, FOURIER, SELECT (cardiovascular/metabolic).

---

## 1. Trial design

| Keyword | Definition | Seen in |
|---|---|---|
| Randomized, double-blind, placebo-controlled | Standard blinded RCT design with an inert comparator | SOLO-2, PREVAIL, EMPA-REG, DECLARE-TIMI58, FOURIER, SELECT |
| Randomized, double-blind, active-controlled | Blinded RCT with a comparator that is itself an active treatment (not placebo) | FLAURA, PARADIGM-HF |
| Randomized, open-label, active-controlled | Unblinded RCT against an active comparator, typically relying on BICR/IRC to limit assessment bias | KEYNOTE-024, CLL14 |
| Event-driven trial | Trial duration/analysis timing set by accrual of a target number of clinical events rather than a fixed calendar time | KEYNOTE-024, FLAURA, PREVAIL, CLL14, EMPA-REG, PARADIGM-HF, DECLARE-TIMI58, FOURIER, SELECT |
| Non-inferiority-then-superiority hierarchy | Design first rules out a pre-specified excess-risk margin, then (only if non-inferiority holds) tests for superiority | EMPA-REG, DECLARE-TIMI58 |
| Co-primary endpoints | Two endpoints each individually required (or each independently testable) to support the primary claim | PREVAIL (OS + rPFS), DECLARE-TIMI58 (MACE + HHF/CV-death, post-amendment) |
| Dual primary-endpoint definition (protocol vs. regulatory) | Sponsor's protocol names one endpoint as primary while a *different* assessment of the same construct is designated primary for a specific regulator | CLL14 (investigator-assessed PFS per protocol; IRC-assessed PFS for US regulatory purposes) |
| Mid-trial SAP amendment changing endpoint status | A secondary endpoint formally promoted (or primary endpoint's assessment method changed) after trial start, before database lock, sometimes at FDA's request | SOLO-2 (BICR→investigator primary), DECLARE-TIMI58 (secondary→dual-primary) |
| Crossover permitted at progression | Control-arm patients may switch to the experimental drug after a defined progression/eligibility trigger | KEYNOTE-024, FLAURA |
| Biomarker-selected/enriched population | Enrollment restricted to a molecularly-defined subgroup expected to benefit | KEYNOTE-024 (PD-L1 TPS≥50%), FLAURA (EGFR mutation), SOLO-2 (germline BRCA) |
| Dose-arm pooling | Two or more randomized dose arms of the same drug combined into one group for the primary analysis | EMPA-REG (10 mg + 25 mg pooled) |
| Fixed-duration regimen | Treatment given for a pre-specified number of cycles/duration rather than until progression | CLL14 |
| Early-stopped for efficacy | Trial halted before planned completion because an interim analysis crossed an efficacy stopping boundary | PARADIGM-HF |

## 2. Endpoint / outcome type

| Keyword | Definition | Seen in |
|---|---|---|
| Overall survival (OS) | Time from randomization to death from any cause | PREVAIL (co-primary), FLAURA (key secondary), SOLO-2 (hierarchical secondary), CLL14 (secondary), KEYNOTE-024 (secondary) |
| Progression-free survival (PFS) / radiographic PFS (rPFS) | Time to disease progression (by RECIST or, for prostate cancer, PCWG2/RECIST composite) or death | KEYNOTE-024 (primary), FLAURA (primary), SOLO-2 (primary, PFS-Inv), CLL14 (primary), PREVAIL (co-primary, rPFS) |
| Objective response rate (ORR) / duration of response (DoR) / disease control rate (DCR) | Tumor-shrinkage response-based secondary endpoints | KEYNOTE-024, FLAURA, CLL14 |
| Minimal residual disease (MRD) response rate | Molecular/flow-cytometric measure of disease clearance below a defined threshold | CLL14 (key secondary) |
| MACE composite (3-point / 4-point / 5-component) | Composite of cardiovascular death, MI, stroke (3-point), plus unstable-angina hospitalization (4-point) or plus coronary revascularization (FOURIER's 5-component version) | EMPA-REG, DECLARE-TIMI58, FOURIER, SELECT |
| CV death / HF-hospitalization composite | Heart-failure-specific composite endpoint | PARADIGM-HF (primary), DECLARE-TIMI58 (dual primary) |
| Renal composite endpoint | Composite of eGFR decline thresholds and/or ESRD | PARADIGM-HF (secondary), DECLARE-TIMI58 (secondary, added to closed testing procedure) |
| All-cause mortality (as a distinct secondary) | All-cause death tracked as its own secondary endpoint separate from the composite primary | PARADIGM-HF, SELECT |
| Patient-reported outcomes / HRQoL | Validated patient-reported instruments as secondary/exploratory endpoints | FLAURA (EORTC QLQ-C30/LC13, CTSQ-16), SOLO-2 (FACT-O), PARADIGM-HF (KCCQ) |
| Key secondary endpoint | A secondary endpoint formally elevated for hierarchical alpha-controlled testing (as opposed to a purely descriptive secondary) | FLAURA (OS), FOURIER (3-point MACE), KEYNOTE-024 (OS) |

## 3. Primary analysis method

| Keyword | Definition | Seen in |
|---|---|---|
| Stratified log-rank test | Log-rank test conducted within randomization strata and combined | KEYNOTE-024, FLAURA, SOLO-2, CLL14 |
| Unstratified log-rank test | Log-rank test ignoring randomization strata (sometimes primary, sometimes a supportive companion to a stratified analysis) | PREVAIL (primary), CLL14 (supportive) |
| Cox proportional-hazards model (stratified or with covariates) | Semi-parametric survival regression used to estimate the hazard ratio and CI | KEYNOTE-024, EMPA-REG, PARADIGM-HF, CLL14, DECLARE-TIMI58, SELECT |
| HR derived from log-rank U/V statistics (not a separately fitted Cox model) | HR and CI computed directly from the log-rank test's score/variance statistics rather than a distinct Cox model fit | FLAURA |
| Kaplan-Meier estimation | Non-parametric survival curve/median estimation | Ubiquitous across all 10 (used wherever a time-to-event endpoint is summarized) |
| Breslow / Efron method for ties | Alternative conventions for handling tied event times within a Cox or log-rank analysis | FLAURA |
| Miettinen-Nurminen method | Method for constructing a CI around a difference/ratio of binomial proportions | KEYNOTE-024 (ORR CI) |
| Brookmeyer-Crowley method | Method for constructing CIs around a Kaplan-Meier median | SOLO-2 |
| Repeated-measures ANCOVA | Longitudinal continuous-outcome model with treatment, region, and timepoint terms | PARADIGM-HF (KCCQ) |
| Score test (Cox) | Hypothesis test based on the Cox model's score statistic rather than a Wald or likelihood-ratio test | SELECT |

## 4. Multiplicity control / testing hierarchy

| Keyword | Definition | Seen in |
|---|---|---|
| Fixed-sequence (step-down) hierarchical testing | Endpoints tested in a pre-specified order; a later endpoint is tested only if the earlier one is significant | KEYNOTE-024 (ORR→PFS→OS), FLAURA (PFS→OS→CNS PFS), EMPA-REG (NI→NI→Sup→Sup) |
| Bonferroni-Holm sequentially rejective procedure | Stepwise-adjusted multiple-comparison procedure for a family of secondary endpoints | PARADIGM-HF |
| Fallback Procedure | Group-sequential-style hierarchy that lets alpha continue to later hypotheses even if an earlier one in the sequence is not rejected | CLL14 |
| Alpha recycling | Explicit rule letting the full alpha "spent" on one endpoint be reused to test another endpoint if the first is positive | DECLARE-TIMI58 |
| Closed testing procedure | Formal multiplicity framework in which a hypothesis is rejected only if all hypotheses implying it are also rejected | DECLARE-TIMI58 |
| Two-stage hierarchical testing | Multiplicity structure split across two pre-defined analysis stages (e.g., PFS at stage 1, OS at stage 2) | SOLO-2 |

## 5. Interim monitoring & alpha-spending

| Keyword | Definition | Seen in |
|---|---|---|
| Group-sequential design | Trial design with one or more planned interim looks at accumulating data, each with a pre-specified stopping rule | KEYNOTE-024, FLAURA, SOLO-2, CLL14, PARADIGM-HF, DECLARE-TIMI58, SELECT, PREVAIL (inferred) |
| Lan-DeMets alpha-spending function | A flexible way to implement a group-sequential boundary at arbitrary information fractions (often used to approximate O'Brien-Fleming) | FLAURA, SELECT |
| O'Brien-Fleming boundary | A conservative stopping boundary that spends very little alpha early and most near the final analysis | FLAURA, SELECT, DECLARE-TIMI58 (explicit) |
| Haybittle-Peto boundary | A simple, very conservative fixed-nominal-p-value boundary for early interim looks | EMPA-REG, PARADIGM-HF, SOLO-2 (final OS) |
| Hwang-Shih-DeCani alpha-spending function | A parametric family of spending functions (shape parameter γ) used to design flexible group-sequential boundaries | KEYNOTE-024 |
| Gamma-family alpha-spending function | Same parametric family as above, distinct instance/parameterization | CLL14 |
| Non-binding futility boundary (beta-spending) | A futility-stopping rule that does not formally bind the sponsor to stop, paired with a beta-spending function | KEYNOTE-024 |
| Bespoke spending function (Stone 2010) | A named, trial-specific spending function for a secondary-endpoint retest at a later analysis | SOLO-2 (PFS2) |
| Data Monitoring Committee (DMC/DSMB) | Independent committee reviewing unblinded interim data against the pre-specified stopping rules | PARADIGM-HF, DECLARE-TIMI58, CLL14, EMPA-REG |

## 6. Missing data, censoring & bias handling

| Keyword | Definition | Seen in |
|---|---|---|
| Standard right-censoring at last evaluable assessment | Default handling for patients without an observed event | Ubiquitous across all 10 |
| Competing-risk censoring | Non-target-cause events (e.g., non-CV death) handled as censoring rather than as the event of interest | SELECT |
| Rank-Preserving Structural Failure Time (RPSFT) | Method to adjust OS for treatment-arm crossover, preserving the randomized comparison under a causal assumption | FLAURA |
| Inverse Probability of Censoring Weighting (IPCW) | Alternative crossover-adjustment method reweighting patients by their probability of remaining uncensored/uncrossed-over | FLAURA |
| Tipping-point analysis (multiple imputation) | Sensitivity method that varies an assumed penalty for informatively-censored patients until the primary conclusion "tips" | SELECT |
| Ascertainment bias assessment (EDR/LDR) | Comparing investigator- vs. BICR-assessed progression timing to detect assessment-favoring bias | FLAURA, SOLO-2 |
| Evaluation-time bias | Sensitivity analysis addressing bias from off-schedule tumor assessments | FLAURA, SOLO-2 |
| Attrition bias | Sensitivity analysis addressing bias from differential loss-to-follow-up/missed-visit patterns | FLAURA, SOLO-2 |
| Deviation bias | Sensitivity analysis excluding patients with major protocol deviations, above a pre-specified threshold | SOLO-2 |
| Quantitative/qualitative interaction testing (Gail-Simon) | Formal test for whether a subgroup-by-treatment interaction reflects a genuine (qualitative) reversal of effect vs. a magnitude (quantitative) difference | FLAURA |

## 7. Regulatory process tags

| Keyword | Definition | Seen in |
|---|---|---|
| Reviewer-documented deviation from agreed analysis plan | FDA review text explicitly records the sponsor executing the trial differently from what FDA had agreed to/advised | SOLO-2 (BICR scanning stopped), EMPA-REG (interim-analysis alpha carryover across two submissions of the same trial) |
| Reviewer-documented mid-trial endpoint elevation (FDA feedback-driven) | FDA review text documents that a SAP amendment elevating an endpoint's status was made partly in response to Agency feedback | DECLARE-TIMI58 |
| FDA Advisory Committee meeting held | A public FDA advisory committee reviewed and voted on the submission | EMPA-REG (12-11 vote) |
| Endpoint not accepted as a valid regulatory endpoint | FDA review explicitly states a sponsor-defined secondary endpoint was not considered in its risk-benefit analysis | SOLO-2 (PFS2) |

---

## How to use this file when scaling the census

- When writing a new entry, tag it with existing terms from the tables above wherever the underlying method genuinely matches — don't invent a new label for a concept already covered (e.g., always write "stratified log-rank test," never a synonym like "log-rank test with strata").
- Only add a new row when a submission uses a method not already listed. When adding one, write it the same way as existing rows (Keyword | plain-language definition | which submission(s)).
- If a term's definition needs to flex slightly to fit a new use, expand the definition in place rather than forking a near-duplicate term.
- The **[inferred]** / reverse-engineered entries (PREVAIL, FOURIER in the current census) should have any keyword drawn from inference, not confirmed source text, marked so in the entry's Keywords line (see the census file) — this taxonomy file itself does not distinguish confirmed vs. inferred usage per drug; that distinction lives only in each entry's Keywords line in `FDA_SAP_Census.md`.
