# Mixed-effects, random-coefficient and repeated-measures models in the FDA SAP census

**Compiled:** 2026-10-07 · **Scope:** every census entry in `README.md` whose text mentions a mixed-effects, random-coefficient, repeated-measures, or GEE model (187 of 684 entries).

**Companion files:**

- [`Mixed_Models_Trial_Details.md`](Mixed_Models_Trial_Details.md): per-trial evidence, with each model's terms, covariance, df method, software, and results, and the URLs consulted. Each entry ends with a **Verbatim specification excerpts** section: 1,810 quoted passages and 57 SAS code blocks taken directly from the FDA reviews, SAPs and publications.
- [`tables/mixed_models.tsv`](tables/mixed_models.tsv): one row per model (579 rows: 572 models plus 7 false-positive entries). It has the raw extracted fields and the standardized `*_std` columns used for every count in this document.

## How this was built

1. The candidate entries were found by a keyword search of `README.md`. The pattern covered MMRM, mixed effects/model, random coefficient/slope/intercept/effect, repeated measures, GLMM, unstructured covariance, Kenward-Roger, compound symmetry, PROC MIXED/GLIMMIX, autoregressive, and GEE. It found 187 entries. In 146 of them the hit is in the `Primary analysis:` keyword bullet.
2. For each entry, the README section was read in full. Then the primary sources in its **Documents** list were downloaded and converted to text: Protocol/SAP, FDA Statistical / Multi-Discipline / Integrated / Medical Review, and the publication where open access. Model specifications were extracted from those documents.
3. Every analysis using one of these models was recorded, whatever its role: primary, key secondary, secondary, sensitivity, supportive, or an FDA reviewer's own reanalysis.
4. A second pass pulled verbatim passages stating each model's specification from the downloaded document text. Every quote was then checked mechanically against that text: 1,855 of 1,864 matched exactly, 6 matched in part (they span a page break or table in the PDF), and 3 were too short to check. Where a model's own quotes stated a df method, estimation method, covariance or software that the first pass had recorded as *Not stated*, the field was filled in (11 fields, flagged in the TSV's `filled_from_quotes` column).
5. Every field is either sourced or the literal *Not stated*. For 57% of models the specification comes from an FDA review, for 34% from SAP/protocol text, and for 8% from SAP text that includes the SAS code. The rest come from publications or labels.
6. The extracted fields were standardized with regular expressions: model family, role, covariance structure, df method, software, and missing-data sensitivity method. These are coarse categories. Read the `*_std` columns in the TSV with that in mind.

**Caveats:**

- The extraction was done by parallel research agents working from PDF text. This document summarizes their records; the underlying documents were not re-read line by line.
- Results tables that exist only as images, redacted SAP pages, and paywalled publications (NEJM, Lancet, JAMA, Wiley, and Elsevier generally returned HTTP 403) leave gaps. These are flagged per trial in the details file.
- *Not stated* means "not found in the documents consulted", not "not done".

## Headline numbers

| Quantity | Value |
|---|---|
| Entries investigated | 187 |
| Entries with at least one mixed/repeated/GEE model | 181 |
| False positives (no such model in any source) | 7 (neratinib, glofitamab, sotatercept, milsaperidone, zilganersen, prabotulinumtoxinA/Jeuveau, deferiprone) |
| Model records | 572 |
| Entries where such a model is the **sponsor's primary** analysis | 106 |
| Entries where an **FDA reviewer fit their own** mixed/GEE model | 45 (61 model records) |
| MMRM share of all model records | 70% (403 / 572) |

The 7 false positives (README wording versus what the source documents show):

- **Neratinib:** the README's "repeated-measures ANCOVA" is a per-visit ANCOVA.
- **Glofitamab:** only a random-effects meta-analysis, used to build the historical control.
- **Sotatercept:** neither the posted Protocol/SAP nor the FDA review contains the "MMRM sensitivity analyses" the README lists.
- **Milsaperidone:** a PK-bridging approval with no statistical reviewer.
- **Zilganersen:** the label describes ANCOVA with imputation.
- **Jeuveau:** a binary responder endpoint.
- **Deferiprone:** the FDA review never calls its meta-analysis random-effects.

Vimizim is borderline: its confirmatory analyses are single-timepoint ANCOVAs, and the only repeated-measures use is in published descriptive figures.

### By therapeutic area

| Therapeutic area | Entries | Models | Entries with a sponsor primary mixed/repeated model |
|---|---|---|---|
| Neurology / Psychiatry | 46 | 176 | 33 |
| Rare Disease / Genetic / Metabolic-genetic | 38 | 140 | 28 |
| Cardiovascular / Metabolic | 19 | 53 | 12 |
| Immunology / Rheumatology / Dermatology | 17 | 34 | 5 |
| Hematology | 15 | 48 | 5 |
| Other / Misc | 13 | 30 | 8 |
| Oncology | 9 | 19 | 1 |
| Gastroenterology | 8 | 18 | 1 |
| Endocrine | 7 | 18 | 3 |
| Ophthalmology | 7 | 19 | 5 |
| Infectious Disease | 4 | 9 | 2 |
| Respiratory | 4 | 8 | 3 |

Neurology/psychiatry and rare disease account for 55% of entries and 55% of models (316 of 572 records). In these areas the primary endpoint is usually a continuous rating scale or functional measure collected at repeated visits: HAM-D/MADRS/PANSS, MDS-UPDRS, CDR-SB, 6MWT, FVC, and the like. In oncology, mixed models appear almost only for patient-reported outcomes (PRO) and quality of life (QoL) key secondaries. Mogamulizumab, vimseltinib, alpelisib and selumetinib are examples.

### Model family by analysis role

| Model family | Primary | Key secondary | Secondary | Sensitivity | Supportive / exploratory | Total |
|---|---|---|---|---|---|---|
| MMRM | 116 | 101 | 61 | 68 | 57 | 403 |
| Linear mixed model (random intercept) | 15 | 5 | 6 | 4 | 22 | 52 |
| GEE (marginal) | 14 | 8 | 9 | 9 | 8 | 48 |
| Random-coefficients / random-slope | 8 | 1 | 2 | 7 | 8 | 26 |
| GLMM | 3 | 3 | 6 | 5 | 4 | 21 |
| Other | 1 | 1 | 1 | 2 | 6 | 11 |
| Repeated-measures ANCOVA/ANOVA | 2 | 2 | 1 | 0 | 1 | 6 |
| cLDA | 2 | 0 | 1 | 1 | 1 | 5 |

"Primary" includes co-primary endpoints and FDA-designated primary analyses. Random-intercept linear mixed models are concentrated in supportive work: crossover abuse-potential and driving studies, reader studies for imaging agents, and concentration–QTc models. Random-coefficient (slope) models cluster in eGFR and FVC decline (sparsentan, atrasentan, nintedanib, pirfenidone, pegunigalsidase), joint-damage progression (upadacitinib and sarilumab mTSS), and natural-history comparisons (selumetinib, arimoclomol).

## 1. The standard MMRM specification

Across the 403 MMRM records, the fixed-effect terms named are:

| Term | MMRMs naming it |
|---|---|
| Baseline value of the outcome | 326 (81%) |
| Visit (categorical) | 316 (78%) |
| Treatment | 315 (78%) |
| Treatment × visit | 270 (67%) |
| Region / country / site | 110 (27%) |
| Baseline × visit | 74 (18%) |
| Stratification factors (named generically) | 47 (12%) |
| Nothing stated | 37 (9%) |

The modal specification is change from baseline modeled as

$$
y_{ij} - y_{i0} = \mu + \tau_{g(i)} + \nu_j + (\tau\nu)_{g(i)j} + \beta\, y_{i0} + \gamma_j\, y_{i0} + \text{strata}_i + \varepsilon_{ij}
$$

$$
\boldsymbol{\varepsilon}_i \sim N(\mathbf{0}, \boldsymbol{\Sigma}_{\text{UN}})
$$

with no G-side random effects, REML estimation, Kenward-Roger denominator df, and the treatment contrast at the final visit as the estimand. The data are assumed missing at random (MAR) and none are imputed. Where SAS code is given, it is almost always

```
proc mixed method=reml;
  class subject trt visit <strata>;
  model chg = trt visit trt*visit base base*visit <strata> / ddfm=kr;
  repeated visit / subject=subject type=un;
  lsmeans trt*visit / diff cl;
```

### Covariance structure

| Primary covariance structure (MMRM) | n | % |
|---|---|---|
| Unstructured | 282 | 70% |
| Not stated | 90 | 22% |
| Compound symmetry | 11 | 3% |
| Heterogeneous Toeplitz | 5 | 1% |
| Not stated, sandwich SEs only | 5 | 1% |
| AR(1) | 4 | 1% |
| Toeplitz | 2 | <1% |
| Spatial power | 2 | <1% |
| UN ⊗ AR(1) (Kronecker) | 1 | <1% |
| Other | 1 | <1% |

- **Spatial power:** olodaterol, all four Phase 3 trials, for unequally spaced FEV1 timepoints.
- **Kronecker:** a vamorolone sensitivity analysis, a multivariate MMRM across endpoints.
- **Per-arm unstructured covariance:** lemborexant SUNRISE-1 (`type=UN group=treatment`), bempedoic acid (`repeated / group=armcd`), and FDA's upadacitinib mTSS model.

### Fallback sequences when unstructured fails

Of the MMRMs, 141 (35%) state a fallback rule. The components named are:

| Fallback component | MMRMs naming it |
|---|---|
| Compound symmetry or heterogeneous CS | 80 |
| AR(1) or heterogeneous AR(1) | 76 |
| Toeplitz or heterogeneous Toeplitz | 51 |
| Choose among structures by AIC/BIC | 20 |
| Sandwich (empirical) SEs when a structured matrix is used | 11 |
| Change optimizer first (Fisher scoring, Newton-Raphson) | 7 |
| Drop or collapse covariates | 5 |

There is no consensus ordering. Representative sequences:

| Entry | Pre-specified fallback |
|---|---|
| Galcanezumab | Fisher scoring → heterogeneous Toeplitz → heterogeneous AR(1) → Toeplitz → AR(1); sandwich SEs with between-within df |
| Tirzepatide (SURPASS-2) | UN → TOEPH → ARH(1) → CSH → TOEP → AR(1) → CS |
| Zuranolone | UN (Newton-Raphson) → UN (Fisher scoring) → FA0(T) → Toeplitz → AR(1); sandwich SEs, OM option |
| Vibegron | Fisher scoring, then AIC choice among TOEPH, TOEP, ARH(1), CSH, CS |
| Elinzanetant | UN → **add a random subject intercept** with AR(1) → CS |
| Roflumilast (Daliresp) | UN/REML → **CS/ML** → drop covariates in a set order |
| Eplontersen | Six-step sequence after UN |
| Atrasentan | UN → ARH(1) → AR(1) |
| Avacincaptad (GATHER2) | UN → ARH(1) → CSH → AR(1) → CS |

**Cases where a fallback (or an unplanned structure) was actually used:**

- **Linerixibat:** UN apparently failed, and compound symmetry was used for every reported MMRM.
- **Deflazacort:** the sponsor used CS, which the SAP did not specify. The FDA reviewer refit with UN on Week 1–12 data.
- **Brexpiprazole (trial 227):** the Sheehan Disability Scale model fell back to TOEPH because of a visit-mapping data deviation. FDA remapped the visits; UN then converged and gave smaller effects (3 mg p=0.0937).
- **Serdexmethylphenidate (Azstarys):** a late SAP amendment, buried in a meeting package, switched from UN (which FDA had requested) to Toeplitz. FDA's UN rerun gave the same conclusions.
- **Crovalimab:** UN and Toeplitz both failed for the primary hemolysis GEE, so AR(1) was used.
- **Donanemab:** FDA could not fit the sponsor's UN NCS2 model in R and used ARH(1).
- **Lixisenatide:** the sponsor set PROC MIXED `singular=1e-11` to get convergence.

### "MMRMs" that also include random effects

In 51 MMRM records (13%), the documents list a **random subject effect alongside an unstructured R-matrix**. That combination is over-parameterized: with an unstructured R-matrix, a subject random intercept is not separately identifiable. These entries include:

- arimoclomol, daridorexant, ensifentrine, ferric maltol, lofexidine
- lumacaftor/ivacaftor, lumasiran, mavorixafor, nerandomilast, omaveloxolone
- plozasiran, rozanolixizumab, sepiapterin, sparsentan, tafamidis
- vilazodone, xanomeline/trospium, zilucoplan

In at least three cases the posted SAS code shows the text is wrong: it has only `REPEATED / TYPE=UN` and no `RANDOM` statement. These are spesolimab (Spevigo), risdiplam (SUNFISH) and nipocalimab.

Tafamidis is a deliberate hybrid. It has a random center intercept plus a UN R-matrix with `EMPIRICAL` SEs. Naloxegol likewise pairs UN with a random pooled-center effect.

### Models labeled "MMRM" that are something else

| Entry | What it actually is |
|---|---|
| Avacincaptad (GATHER2) | Continuous linear time with UN residual covariance, i.e. a slope model with no random slope |
| Amifampridine (LMS-002) | Random-coefficient model ("time effect was random between subjects"), GLS/REML, permutation p-values |
| Pitolisant (HARMONY I/I-bis) | Single-timepoint model with random center intercept; FDA then ran a true MMRM with AR(1) |
| Elagolix; Oxervate; plecanatide secondaries | Random-intercept linear mixed models |
| Lumasiran (Oxlumo) | No treatment × visit term, so it estimates an average effect over Months 3–6 (−53.6%; −46.6% with the interaction added) |
| Mavorixafor; lumacaftor/ivacaftor; nipocalimab; sutimlimab | Primary contrast averages several visits (e.g. Weeks 16 and 24, or Weeks 22–24) |
| Rilzabrutinib | Marginal linear-probability GEE (`PROC GLIMMIX EMPIRICAL`, `RANDOM _resid_ / TYPE=VC`); no random effect |
| Gadoterate (Dotarem), gadopiclenol | CS repeated measures over imaging *modality* (pre vs paired) within subject, not over time |
| Levacetylleucine | MMRM applied to a 2×2 crossover with no washout |
| Bempedoic acid | Single-timepoint ANCOVA in PROC MIXED with arm-specific residual variances; no visits, no random effects |
| Luliconazole | FDA table calls a GEE repeated-measures logistic model "MMRM" |

## 2. Degrees of freedom, estimation and software

| Denominator df (non-GEE models) | n | % |
|---|---|---|
| Not stated | 340 | 65% |
| Kenward-Roger | 156 | 30% |
| Satterthwaite | 25 | 5% |
| Between-within | 1 | <1% |
| Not applicable | 2 | <1% |

| Approval era | Not stated | Kenward-Roger | Satterthwaite | Other | Total |
|---|---|---|---|---|---|
| 2011–2015 | 55 (79%) | 10 (14%) | 5 | 0 | 70 |
| 2016–2020 | 131 (71%) | 37 (20%) | 14 | 2 | 184 |
| 2021–2026 | 154 (57%) | 109 (40%) | 6 | 1 | 270 |

Kenward-Roger reporting roughly tripled in share between 2011–2015 and 2021–2026. Satterthwaite users are alirocumab, evinacumab, lumasiran, ocrelizumab, patisiran, setmelanotide, teriflunomide and tividenofusp. Only one case shows the choice mattering: FDA's R reanalysis of trofinetide gave p=0.0157, against the sponsor's 0.0175 (Satterthwaite in R versus Kenward-Roger in SAS).

| Estimation (non-GEE) | n | % |
|---|---|---|
| Not stated | 394 | 75% |
| REML | 124 | 24% |
| Bayesian | 5 | 1% |
| ML | 1 | <1% |

| Software | n | % |
|---|---|---|
| Not stated | 346 | 60% |
| SAS | 211 | 37% |
| SAS + R | 10 | 2% |
| R only | 4 | 1% |
| Other | 1 | <1% |

- **SAS procedures named:** PROC MIXED 103, PROC MI 45, PROC MIANALYZE 37, PROC GENMOD 9, PROC GLIMMIX 7.
- **SAS versions named:** 9.4 (66 model records), 9.3 (11), 9.2 (9).
- **Sponsor R use:** only four sponsors name R:
  - avacincaptad's GATHER1 SAP says "SAS Studio (version 3.6) or R"
  - elinzanetant's SAP names "ValidR 3.5.2+" alongside SAS 9.4
  - cipaglucosidase's SAP lists R alongside SAS 9.4 PROC MIXED
  - palovarotene states R v3.5.0 or later
- **FDA R use:** FDA reviewers used R for their own reanalyses of trofinetide, donanemab and vanzacaftor/tezacaftor/deutivacaftor (Alyftrek). For arimoclomol, FDA wrote its own EM-algorithm code to recompute the MMRM's implicit imputations.
- **Trend:** software reporting improves over time. The share stating software rises from 22% (2011–2015) to 34% (2016–2020) and 48% (2021–2026).

## 3. Missing data, estimands and MNAR sensitivity

Nearly every MMRM is justified as "likelihood-based under MAR, no imputation". Since about 2018, FDA reviewers have consistently treated that as estimating a **hypothetical** estimand and asked for something closer to **treatment policy**.

| MNAR-type sensitivity method named (all models) | Records |
|---|---|
| Tipping point / delta adjustment | 76 |
| Pattern-mixture model | 49 |
| Placebo / control / reference-based MI | 42 |
| Jump-to-reference | 27 |
| Copy reference / copy increments | 16 |
| Retrieved-dropout MI | 12 |
| Return-to-baseline / washout MI | 11 |
| Shared-parameter / selection model | 1 |
| LOCF / single imputation (as primary or comparator) | 68 |

| MMRMs by approval era | No MNAR-type sensitivity named | Any MNAR-type sensitivity |
|---|---|---|
| 2011–2015 | 42 (81%) | 10 (19%) |
| 2016–2020 | 112 (82%) | 24 (18%) |
| 2021–2026 | 135 (63%) | 80 (37%) |

**Recurring patterns:**

- **MMRM fit after multiple imputation, then combined with Rubin's rules.** The model stops being the missing-data method and becomes the analysis model. Examples:
  - lemborexant: PROC MI MNAR/CCMV → PROC MIXED → PROC MIANALYZE
  - elinzanetant: 500 imputations under treatment policy
  - remibrutinib: J2R via the RMConjPlus/RefBTBV macros
  - atacicept: MAR MI for intermittent gaps and J2R for dropouts
  - bexagliflozin: MCMC → monotone regression → MMRM
  - fitusiran, oveporexton
- **FDA replacing the sponsor's MMRM with a treatment-policy ANCOVA on imputed data:**
  - tirzepatide (retrieved-dropout MI)
  - sibeprenlimab (placebo-based MI)
  - ertugliflozin: "The cLDA primary analysis does not adequately address missing data"
  - semaglutide: both the on-treatment and in-trial MMRMs called "not acceptable"
  - alirocumab (return-to-baseline pattern-mixture)
  - aprocitentan (MAR + J2R hybrid, and objection to dropping the 3–4% with no post-baseline data)
  - faricimab (treatment policy over the sponsor's COVID-hypothetical estimand)
- **Explicit FDA objections to MAR:**
  - arimoclomol: FDA recomputed the MMRM's implicit imputations with its own EM code and found implausible values
  - tofacitinib: "varying the covariance structure is not an appropriate sensitivity analysis to assess MAR"
  - upadacitinib, nintedanib ("initially appeared to me as unacceptable"), daridorexant, evinacumab, aducanumab (~50% missing at Week 78)
- **Tipping points that tipped at plausible shifts:**
  - brexpiprazole trial 230 (4 mg tipped at an 80% shift)
  - lecanemab (1.5 → ~1.1, and 0.5 when data after ARIA-E were censored)
  - donanemab CDR-SB (tipped at the scale's smallest increment, 0.5)
  - abrocitinib (FDA's grid removed significance for 100 mg in both monotherapy trials)
  - fitusiran (FDA: "not robust")
  - avacincaptad GATHER2 (tipping shift about half the effect)

## 4. Non-standard and notable model specifications

| Entry | Model | Why it stands out |
|---|---|---|
| Donanemab | Natural cubic spline (2 df) mixed model on continuous time, baseline constrained equal across arms, UN with 4-step fallback, KR | Primary was not an MMRM; FDA declined to present the Time-PMRM results |
| Ertugliflozin, aficamten, oveporexton | Constrained longitudinal data analysis (cLDA) | Baseline is part of the response vector rather than a covariate; aficamten's pVO2 model sets treatment = 0 at baseline; FDA questioned oveporexton's PVT cLDA and reran it as an MMRM |
| Sodium phenylbutyrate/taurursodiol (Relyvrio) | Shared-baseline linear mixed slope model with a quadratic linearity check | FDA's visit-wise MMRM gave p=0.0749 vs the sponsor's 0.034 (0.1027 after dropping one site) |
| Nintedanib | Random intercept + slope on FVC (SAP equation quoted in the StatR) | SAP calls the covariance both "unstructured" and "variance components" |
| Pegunigalsidase (Elfabrio) | Random intercept/slope eGFR model | Demoted after the interim unblinding; the SAP's lyso-Gb3 MMRM code has the baseline variable as the response |
| Lofexidine | Pattern-mixture random-coefficient model, piecewise linear with a Day-2 change point, log scale | FDA replaced it with its own Days 1–5 MMRM with placebo-mean imputation |
| Sebetralstat | Gehan scores of censored times in a 3-period crossover, then a linear mixed model with patient(sequence) | FDA overrode the "censor at Time 0" rule and required censoring at Hour 12 |
| Palovarotene | Post hoc weighted random-intercept model (weights = follow-up years); prespecified Bayesian compound-Poisson | FDA called the Bayesian model "not valid" and cross-checked with GEE landmarks |
| Eplontersen; risdiplam (SUNFISH); selumetinib | Propensity-weighted MMRM or growth model against an external / natural-history control | External-control mixed models; FDA called selumetinib's "exploratory and … not verified by the FDA" |
| Moxidectin | Site random intercept with only 4 sites (LMM and logistic GLMM) | FDA reviewer cited Rabe-Hesketh & Skrondal and Snijders & Bosker, raised odds-ratio non-collapsibility, and redid it with fixed sites plus bootstrap SEs and g-computation |
| Rozanolixizumab | MMRM fit per stage and combined with the Lehmacher-Wassmer method | Adaptive-design combination of stagewise mixed-model results |
| Danicopan | MMRM inside a 1,500-iteration re-randomization test | The re-randomization p-value was the US primary inference |
| Omidenepag (Omlonti) | Separate MMRMs per time of day | FDA refit one MMRM with a fully unstructured 9-measurement correlation; one timepoint in each passing trial then crossed the 1.5 mmHg NI margin |
| Vamorolone | Multivariate MMRM with UN ⊗ AR(1) | FDA also noted the primary model's normality assumption failed |
| Abrocitinib; ritlecitinib | Bayesian logit-normal GLMM driving tipping-point MI; GLMM imputing COVID-related missing data | GLMMs used as imputation engines rather than analysis models |
| Pegulicianine | GEE with CS working correlation for tissue-level sensitivity | FDA's independence-assumption rerun was nearly identical; within-patient correlation was low |
| Contrast agents (gadoterate, gadopiclenol, gadoquatrane) | Reader-level mixed models over imaging modality | For gadoquatrane, FDA's reader-effect model gave an LS mean of 0.97, below the scale minimum of 1; the label uses paired t-tests |

## 5. Where FDA's own mixed-model reanalysis changed the picture

| Entry | Sponsor analysis | FDA reanalysis |
|---|---|---|
| Ocrelizumab (ORATORIO, T25FW) | Ranked ANCOVA, p=0.0404 (from a SAP version filed too late for review) | MMRM, p=0.0783 |
| Arimoclomol | MMRM, p=0.046 | ANCOVA alternatives p=0.12–0.32; fed into the 2021 Complete Response Letter |
| Givinostat | ANCOVA after single imputation, 4-stair climb p=0.037 | MMRM p=0.083; fat fraction p=0.073 |
| Olodaterol (Study 12) | Post hoc model without the treatment × tiotropium-stratum term | Pre-planned model: +33 mL (−13, 80), p=0.16; post hoc model "not acceptable" |
| Linerixibat (GLIMMER Ph2b) | Complete-case ANCOVA, −1.14 | MMRM restricted to concurrently randomized placebo: −0.53, CI crossing 0 |
| Fitusiran (Haem-A-QoL) | MI + MMRM, Pool B p=0.025 | Observed data p=0.064; control-based PMM p=0.23 |
| Brivaracetam (N01252, 100 mg) | ANCOVA p=0.037 | Mixed-model sensitivity p=0.104 |
| Lixisenatide | Post hoc MMRM (replaced the prespecified LOCF) | Under FDA MI, NI vs glulisine TID failed: 0.28 (0.157, 0.408) |
| Upadacitinib (mTSS) | Linear-extrapolation imputation | FDA random-intercept/slope model with arm-specific variance: −0.63 (−0.92, −0.34), adopted for labeling |
| Sarilumab (mTSS) | Linear extrapolation | Post hoc mixed-effects slopes: −1.60 and −2.01 units/yr vs placebo |
| Roflumilast | Timepoint estimates from deleting later visits | Re-estimated from the time × treatment interaction |
| Nedosiran | ANCOVA | Label percent change comes from FDA's own MI + CS MMRM |
| Mitapivat (PKDD score) | MMRM and observed-case ANCOVA disagreed | FDA requested item-level raw-score analyses; the label uses those |
| Pegcetacoplan (FACIT-Fatigue) | MMRM with post-transfusion Hb set to missing (38/80 had no Week-16 Hb) | FDA judged the tipping shifts that overturned the result implausible; LDH NI failure (p=0.96) made FACIT exploratory |

## 6. Reporting quality

- **The specification is often reconstructed from FDA reviews.** For 57% of model records the most detailed specification available is an FDA review's paraphrase. Only 8% come from SAP text with actual SAS code.
- **SAP text and code disagree in several cases**:
  - Random subject effect in text, none in code: Spevigo, SUNFISH, nipocalimab.
  - Fremanezumab: "unconstructed" covariance, and region omitted from the code.
  - Lemborexant: baseline missing from the sample MODEL statement.
  - Pegunigalsidase: response set to the baseline variable.
- **Core details are missing for most models.**
  - df method is missing for 65% of non-GEE models, the estimation method for 75%, and software for 60% of all models.
  - GEE working correlations are often missing: about half of the 48 GEE records give none.
- **Ambiguous "MMRM" labelling is common** (Section 1). A reader of the census keyword bullets alone would misclassify a substantial minority of these models.
- **Results tables are often images.** Examples are Omlonti per-timepoint IOP, Oxervate lesion size, naloxegol Study 04, elagolix secondaries, cariprazine MD-04 and suvorexant. Numbers for these come from reviewer narrative or are *Not stated*.

## 7. README discrepancies found during this investigation

These came from comparing README entries with the primary documents. **None have been corrected in `README.md`.**

| Entry | Discrepancy |
|---|---|
| Cipaglucosidase alfa (Pombiliti) | README's 14.21 m 6MWD result is a post hoc analysis excluding one patient; full-ITT MMRM gave 5.33 m, p=0.608 |
| Eplontersen | README says Week-66 analyses were never conducted; the JAMA paper reports Week 65/66 MMRM results |
| Mavorixafor | README states REML and SAS PROC MIXED; the FDA review states neither |
| Sepiapterin | README's −397.66 is FDA's alternative raw-Phe MMRM; the applicant's primary was −395.87 (−463.07, −328.66) |
| Sibeprenlimab | README's "MMRM-then-ANCOVA workflow" is wrong; primary is ANCOVA on 100 placebo-based MI datasets |
| Nerandomilast | Label used a "while alive" ANCOVA on observed FVC with MI, not the ranked ANCOVA (a sensitivity analysis) |
| Gadoquatrane | README's Reader 1 CI is from FDA's paired t-test, not the mixed model |
| Ravulizumab | README omits that Study 302's primary (LDH % change) was an MMRM with AIC-chosen fallback |
| Pegcetacoplan | README omits the LDH NI failure (p=0.96) and the post-transfusion missing-Hb handling |
| Voxelotor | README's review URL returns HTML; the working file is `213137Orig1s000Multidiscipline.pdf` |
| Rilzabrutinib | README's "MMRM on longitudinal binary data" is a marginal linear-probability GEE |
| Erenumab | ARISE difference is −1.04 in the FDA review, not −0.94; the "−1.86 chronic" figure matches neither −2.46 nor −2.45 |
| Cariprazine | FDA review lists MD-32 as well as MD-33 with an MMRM primary |
| Tezacaftor/ivacaftor (Symdeko) | "5.1 (3.2, 7.0)" credited to Study 107 is Study 106's CFQ-R result; Study 107 hit its futility rule |
| Olipudase (Xenpozyme) | DLCO figures are Week 26; Week-52 primary results are 21.05 (13.65, 28.44) and 9.51 (6.77, 12.25) |
| Pitolisant | Primary was not an MMRM (single-timepoint model with random center) |
| Lemborexant | Toeplitz fallback applies only to SUNRISE-2; SUNRISE-1 goes UN → AR(1) |
| Solriamfetol | The "Week 12 vs last post-baseline" deviation concerns Phase 2 ADX-N05-202, not 14-002/14-003 |
| Eptinezumab | Not ANCOVA-only: PROMISE-2 has an MMRM key secondary and both trials have repeated-measures sensitivity analyses |
| Viloxazine | Key secondaries used ANCOVA, not MMRM |
| Olanzapine/samidorphan (Lybalvi) | ENLIGHTEN-2 co-primaries used MI-ANCOVA and logistic regression; MMRM was sensitivity only |
| Atogepant | The REML/CS-fallback specification belongs to the CGP-MD-01 SAP, not ADVANCE |
| Vortioxetine | MMRM was primary in Studies 305, 13267A, 315, 316 and 317; README says LOCF ANCOVA was primary "in most trials" |
| Sotatercept | README's "MMRM sensitivity analyses" are not supported by the posted Protocol/SAP or Integrated Review |
| Ritlecitinib | The tipping-point analysis was pre-planned in the SAP, not "additionally required" by FDA |
| Donanemab | The Division *did* agree to NCS2 (its objection was to iADRS); the SAP is posted on ClinicalTrials.gov |
| Fezolinetant | Posted SAP specifies a Hochberg procedure; README's p=0.09 / p=0.501 are per-protocol sensitivity values |
| Faricimab | TENAYA/LUCERNE randomization was 1:1, not 1:1:1 |
| Deflazacort | The protocol specified ANCOVA; the 2015 SAP for the 1990s trial switched to MMRM |
| Documents now available | FDA reviews are now posted for rusfertide and oveporexton; Integrated Reviews exist for aprocitentan, sotatercept and plozasiran. SAPs are posted on ClinicalTrials.gov for donanemab, xanomeline/trospium (EMERGENT-2/3), sebetralstat (KONFIDENT), linerixibat (GLISTEN), elinzanetant (OASIS 1–3), fezolinetant (SKYLIGHT 1/2), faricimab (all four), setmelanotide and teplizumab (TN-10). The README says these are unavailable or omits them. |

## 8. Takeaways

1. **The MMRM has become the default analysis for continuous repeated outcomes in these trials.** It is 70% of model records and the sponsor's primary analysis in 81 of the 106 entries where a mixed or repeated-measures model is primary. The specification is highly standardized: UN covariance, treatment × visit, baseline (× visit), and region/strata covariates. A typical fallback list ends in Toeplitz, AR(1) or CS.
2. **The main point of dispute is the missing-data assumption, not the model.** FDA rarely disputes the MMRM's mean or covariance specification. It frequently disputes that MAR yields the estimand of interest. Since about 2020 the regulatory primary has often moved to a treatment-policy ANCOVA on multiply imputed data, with the MMRM demoted to the "hypothetical" sensitivity analysis.
3. **Basic reproducibility details are missing for most models.** Denominator df, estimation method and software are absent for 60–75% of models, though reporting is improving (Kenward-Roger 14% → 40%, software 22% → 48%).
4. **"MMRM" is a loose label.** Random-intercept models, continuous-time slope models, crossover models, single-timepoint models with random centers, and marginal GEEs have all been called MMRM in sponsor documents, FDA reviews, or the census itself. The `family_std` column reclassifies them by the actual specification.
5. **R appears almost only on the FDA side.** SAS PROC MIXED is the sponsor default. R appears mainly in FDA reviewers' independent reanalyses, and the trofinetide case shows the df method can move the p-value when R and SAS defaults differ.
