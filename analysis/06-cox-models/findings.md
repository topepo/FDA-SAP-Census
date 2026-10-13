# Cox proportional-hazards models in Phase 3 trials of the FDA SAP census

**Compiled:** 2026-10-08 · **Scope:** every census entry in `census/census.md` whose text mentions a Cox / proportional-hazards model (152 of 684 entries), restricted to Cox models fitted in Phase 3 (or Phase 2/3, or pivotal Phase 3b) trials. Kaplan-Meier estimation and log-rank tests on their own are not counted.

**Companion files:**

- [`trial_details.md`](trial_details.md): one section per entry, with each Cox model's specification fields and a **Verbatim specification excerpts** block. Across all entries there are 1,521 quotes and 39 SAS/R/Stata code blocks from the FDA reviews, SAPs, protocols and publications. Excluded entries keep a short note explaining why.
- [`cox_models.tsv`](cox_models.tsv): one row per model (537 rows: 512 models plus 25 excluded entries). It has the raw extracted fields and the standardized `*_std` columns used for the counts below.

## How this was built

1. Candidates come from a keyword search of `census/census.md` (`Cox`, `proportional hazard(s)`, `PROC PHREG`, `coxph`): 152 entries. In 133 of them the hit is in the `Primary analysis:` keyword bullet.
2. Parallel research agents read each README entry. They then downloaded the FDA reviews, SAPs/protocols (including ones posted on ClinicalTrials.gov but missing from the README), and open-access publications, and converted them to text. Scanned or garbled documents were OCR'd or mechanically decoded, and those quotes are labeled as such.
3. Trial phase was determined from the documents. Cox models used only in Phase 1/2 or single-arm trials, external-control comparisons, exposure–response or animal studies were excluded.
4. For each model, the agents recorded:
   - model type, stratification factors and covariates
   - ties handling, CI/test method
   - proportional-hazards (PH) checks and the plan if PH fails
   - robust variance, censoring, interim/sample-size design, software
   - results and FDA comments
   - verbatim specification quotes and any code
5. Every quote was checked against the downloaded text, ignoring spacing and punctuation. All 1,516 checkable quotes and all 36 checkable code blocks matched; 8 were too short to check.
6. Fields were standardized with regular expressions into the `*_std` columns. *Not stated* means "not found in the documents consulted".

**Caveats:**

- Most pivotal publications (NEJM, Lancet, JCO, JAMA) were paywalled or blocked, and many results tables are images. Specifications therefore lean on FDA reviews and posted SAPs.
- Some role labels (e.g. whether a model was "FDA-run") are coarse text classifications.

## Headline numbers

| Quantity | Value |
|---|---|
| Entries searched | 152 |
| Entries with at least one Phase 3 Cox model | 127 |
| Entries excluded | 25 |
| Cox model records | 512 |
| Primary-analysis Cox models | 143 |
| Model records where FDA reviewers fit some version of the model themselves | 93 (in 66 entries) |
| Model records with SAS/R/Stata code quoted | 31 (in 19 entries) |

### By therapeutic area

| Therapeutic area | Entries searched | Entries with Phase 3 Cox | Models |
|---|---|---|---|
| Oncology | 84 | 76 | 327 |
| Cardiovascular / Metabolic | 23 | 22 | 74 |
| Hematology | 7 | 7 | 33 |
| Neurology / Psychiatry | 9 | 8 | 32 |
| Infectious Disease | 6 | 4 | 18 |
| Other / Misc | 5 | 3 | 9 |
| Endocrine | 3 | 2 | 7 |
| Rare Disease / Genetic / Metabolic-genetic | 10 | 2 | 5 |
| Respiratory | 1 | 1 | 3 |
| Immunology / Rheumatology / Dermatology | 3 | 1 | 2 |
| Gastroenterology | 1 | 1 | 2 |

Oncology accounts for 64% of the models (PFS, OS, EFS, DFS). Cardiovascular/metabolic outcome trials make up most of the rest (MACE, HF hospitalization/CV death, stroke/systemic embolism). In rare disease, Cox models almost always compare a single-arm cohort with an external control, so 8 of 10 rare-disease entries were excluded.

### Excluded entries

| Reason | Entries |
|---|---|
| Randomized but Phase 2 (pivotal or supportive) | teplizumab (TN-10, the pivotal trial), tucatinib (HER2CLIMB, "pivotal Phase 2"), glasdegib (BRIGHT AML 1003), baloxavir (Phase 2b), bedaquiline (C208), pomalidomide (MM-002) |
| Single-arm or external/historical-control comparison | asfotase alfa, sebelipase alfa, triheptanoin, lonafarnib, fosdenopterin, doxecitine/doxribtimine, copper histidinate, Omegaven, larotrectinib, pemigatinib, polatuzumab vedotin, dordaviprone |
| No Cox model in any source | macitentan (log-rank only), belatacept, Letybo, sugammadex, Lymphoseek, flortaucipir (prognostic, non-randomized), eliglustat (animal carcinogenicity only) |

The randomized Phase 2 trials could be added if "pivotal" rather than "Phase 3" is the criterion. Teplizumab, tucatinib and glasdegib all fit stratified Cox models in their pivotal trials.

### Model type by role

| Model type | Primary | Key secondary | Secondary | Sensitivity | Subgroup | Supportive / exploratory | Total |
|---|---|---|---|---|---|---|---|
| Stratified Cox | 120 | 65 | 52 | 50 | 43 | 25 | 355 |
| Unstratified / not stated Cox | 19 | 14 | 26 | 21 | 21 | 26 | 127 |
| Cox with time-dependent covariate | 1 | 0 | 2 | 7 | 0 | 4 | 14 |
| Fine-Gray subdistribution hazards | 2 | 3 | 2 | 1 | 0 | 1 | 9 |
| Recurrent-event Cox (Andersen-Gill / PWP / WLW) | 0 | 0 | 2 | 0 | 0 | 2 | 4 |
| HR reported, model not named | 1 | 1 | 0 | 0 | 1 | 0 | 3 |

Among primary-analysis models, 73% are stratified, 19% unstratified, and 8% don't say.

**Specialised variants:**

- **Time-dependent covariates:**
  - transplant / HSCT: midostaurin, gilteritinib, inotuzumab, quizartinib
  - subsequent therapy: margetuximab, penpulimab
  - treatment × time terms for PH checks: osimertinib FLAURA, apalutamide, Opdualag, acoramidis, NexoBrid, canagliflozin
  - IPCW / MSM-weighted counting-process models: ixazomib
- **Fine-Gray:** daprodustat (CKD progression), vadadustat (`eventcode=`), ensartinib (CNS progression, `%PSHREG` macro), sotagliflozin, remdesivir (planned but not reported), inotuzumab, ublituximab.
- **Recurrent events:**
  - rivaroxaban: FDA replaced the sponsor's time-to-first-bleed Cox with Andersen-Gill
  - vericiguat: Andersen-Gill with robust variance
  - daprodustat: PWP
  - icatibant: FDA exploratory Andersen-Gill

## 1. The standard specification

The modal Phase 3 Cox specification, almost universal in oncology, is:

- a **stratified log-rank test** for inference
- a **Cox model stratified by the randomization stratification factors, with treatment as the only covariate**, to estimate the HR and its 95% CI
- strata taken from the randomization system (IxRS/IVRS)
- HR < 1 favoring the experimental arm

$$
h_{ik}(t) = h_{0k}(t)\,\exp(\beta\, z_i)
$$

Here $k$ indexes the randomization strata and $z_i$ is the treatment indicator. The typical SAS code, where quoted, is

```
proc phreg data=adtte;
  class trtp (ref="Control");
  model aval*cnsr(1) = trtp / ties=efron risklimits;
  strata strat1 strat2;
  hazardratio trtp / cl=wald;
run;
```

Cardiovascular outcome trials depart from this. They more often use **unstratified, covariate-adjusted** Cox models, for example:

- empagliflozin: covariates, 95.02% CIs
- Entresto: treatment + region
- ticagrelor: unstratified primary
- daprodustat: region and ESA use / dialysis type as covariates, with a `STRATA` statement only as the fallback if PH fails
- vadadustat: study-stratified with 8 covariates

Several CV SAPs **censor non-CV deaths** in MACE models. The empagliflozin Division Director called this "not anchored in or compatible with reality". FDA's reanalysis counting those deaths as events gave HR 0.85, against the sponsor's 0.86.

### Stratification: text vs code, strata vs covariates

The most common specification inconsistency is whether stratification factors enter as **strata** or as **covariates**:

| Entry | What the documents say |
|---|---|
| Ripretinib | Factors entered as fixed covariates; README calls it "stratified Cox" |
| Mogamulizumab (MAVORIC) | Covariate-adjusted, unstratified Cox (`ties=efron`, `risklimits`); only the log-rank test is stratified |
| Caplacizumab | SAP enters GCS as a covariate; label says "stratified" |
| Vadadustat | SAP text says "stratified by the stratification factors"; SAS code puts STRAT1/STRAT2 in the MODEL statement |
| Ensartinib | SAP text says factors "included as covariates"; code uses a `strata` statement |
| Niraparib | SAP says strata in PHREG but also "included as covariates" |
| Relacorilant | Protocol: covariates; SAP: stratified Cox |
| Rilzabrutinib | Stratification factors as covariates in PHREG code |
| Ublituximab | README says stratified; SAP and FDA describe covariate-adjusted, unstratified |
| Zolbetuximab | Table footnotes call the strata "explanatory variables" |
| Finerenone | SAP change history: Cox code "was corrected to the stratified Cox model" by adding the STRATA statement |

**Sparse strata** have pre-specified pooling or dropping rules in:

- gilteritinib, margetuximab, isatuximab, duvelisib, daraxonrasib
- capivasertib: dropped region, and liver metastases in one population
- DREAMM-8: 2 of 4 factors used
- tislelizumab: region omitted
- imlunestrant: ESR1 population went from 12 strata to 4
- Opdualag: PD-L1 dropped
- gedatolisib: a sparse factor was converted to a covariate. FDA said it "generally prefers" treatment as the only covariate.

### IxRS vs CRF stratification errors (FDA's most frequent reanalysis)

FDA re-ran stratified Cox models because the strata recorded in the randomization system disagreed with case-report-form values:

| Entry | Discordance | FDA action |
|---|---|---|
| Trametinib | 11% LDH mismatch, post-randomization/imputed values | Said it "invalidate[s] the randomization"; made the unstratified analysis primary and reported IVRS-, CRF-stratified and unstratified HRs |
| Dabrafenib | 16% misclassified | Rejected the SAP's e-CRF strata in favor of randomization strata; reported Cox HRs alongside the SAP's Pike estimator |
| MONARCH 2 (abemaciclib) | 36.9% incorrect IWRS strata | Unstratified sensitivity (HR 0.577) |
| T-DM1 | ~23% visceral-disease discordance | Re-stratified using IRC status |
| Radium-223 | 10.3% | Re-ran with IVRS strata |
| Ramucirumab | 7.6% | Re-ran with eCRF strata and added covariates; some versions lost significance (p=0.075); reviewer: OS "may not be robust" |
| Necitumumab | 5.5% per arm | Flagged |
| Cobimetinib | Applicant never specified IxRS vs CRF | FDA treated IxRS as primary; rejected CRF-stratified analysis as non-ITT |
| Remdesivir (ACTT-1) | 70 patients analyzed by actual, not randomized, severity | Re-stratified results "virtually unchanged" |
| Opdualag | M-stage entered incorrectly at sites | Re-ran with IxRS M-stage (HR 0.75) |
| Quizartinib | — | OS re-run with CRF strata (HR 0.77) |
| SPARTAN, EMBRACA, abiraterone, aflibercept, ipilimumab, regorafenib | IVRS vs CRF differences | CRF-stratified sensitivity analyses |
| Treosulfan | SAP stratified by **centre (22 levels)** | FDA called it inappropriate (ICH E9, Silcocks 2012), re-stratified by donor type and risk group; approval rests on FDA's OS analysis (HR 0.67, 0.51–0.90) |

Tebentafusp pre-specified a rule: a re-stratified analysis would run only if strata mismatch exceeded 10%. The threshold was not reached, so the analysis did not run.

## 2. Ties, CI method, PH checks, and software

| Ties | n | % |
|---|---|---|
| Not stated | 412 | 80% |
| Efron | 57 | 11% |
| Exact | 33 | 6% |
| Breslow | 9 | 2% |
| Discrete | 1 | <1% |

| Approval era | Not stated | Efron | Exact | Breslow | Discrete |
|---|---|---|---|---|---|
| 2011–2015 (143 models) | 142 | 0 | 0 | 1 | 0 |
| 2016–2020 (192) | 157 | 16 | 16 | 3 | 0 |
| 2021–2026 (177) | 113 | 41 | 17 | 5 | 1 |

Ties handling went from essentially never reported before 2016 to stated for 36% of 2021–2026 models. Efron is now the norm.

**Exceptions and quirks:**

- **Exact ties:** SAkuraSky/SAkuraStar, NOVA, SOLAR-1, tafamidis, acoramidis, vepdegestrant, Opdualag, nirogacestat, and the semaglutide SELECT SAP.
- **Breslow:** SOPHIA, ensartinib, nerandomilast.
- **Discrete-time Cox:** dasiglucagon.
- **Jitter:** sotagliflozin breaks ties by adding 0.1 days.
- **Mixed ties within one SAP:** HIMALAYA's SAP describes the log-rank test as a Breslow-ties Cox score test but estimates the HR with Efron ties.

| CI / test method | n |
|---|---|
| Not stated | 439 (86%) |
| Wald | 52 |
| Profile likelihood | 18 |
| Score | 6 |
| Log-rank-based (Pike / U-V) | 2 |

- **Why some SAPs use Wald:** alpelisib's SAP says score-test CIs are "not available in SAS procedure PHREG".
- **Score or profile likelihood:** gedatolisib uses score CIs. Semaglutide (SELECT) and ensartinib's Fine-Gray model use profile-likelihood CIs.
- **HR not from a Cox model:** in FLAURA (osimertinib) the primary PFS HR comes from the log-rank U and V statistics; the label calls it a "Pike estimator". The SAP switched to Cox in December 2016 and back to U/V in February 2017. Dabrafenib's SAP also used the Pike estimator; FDA added Cox HRs.

| PH assessment | n |
|---|---|
| Not stated | 429 (84%) |
| Any method stated | 83 (16%) |
| log(-log) / KM plots (alone or with others) | 29 |
| Schoenfeld residuals (alone or with others) | 20 |
| Treatment × time interaction (alone or with others) | 22 |
| Supremum / resampling test (`assess ph / resample`) | 6 |
| Explicitly not assessed (FDA checklist "No"/"NA") | 6 |

The share of models with a stated PH check rose from 8% (2011–2015) to 13% (2016–2020) and 26% (2021–2026).

| Software | n |
|---|---|
| Not stated | 349 (68%) |
| SAS (PROC PHREG 68, PROC LIFETEST 23) | 153 |
| Stata | 4 |
| R / SAS + R | 4 |
| Design software only (EAST, gsDesign) | 2 |

- **Stata:** used in FDA reviewer Marciniak's ticagrelor and ivabradine models (35 terms, Breslow ties) and in the artesunate AQUAMAT publication.
- **R:** used for the radium-223 sample-size simulation and for FDA's edoxaban eCrCL spline reanalysis.

## 3. Non-proportional hazards

| Non-PH plan named | n |
|---|---|
| Not stated | 426 |
| RMST | 26 |
| Piecewise HR | 22 |
| Weighted log-rank / MaxCombo | 7 |
| Other / unspecified | 38 |

**Cases where non-PH affected FDA's reading of the result:**

| Entry | Issue | FDA response |
|---|---|---|
| Gilteritinib (OS) | KM curves cross after 25 months | Relied on RMST; log-rank and medians "may not be the optimal statistics" |
| Midostaurin (OS) | Medians (74.4 vs 25.6 mo) inconsistent with HR 0.77 under PH | RMST ratios ~0.90 did not support significant benefit; time-dependent transplant covariate (HR 0.79) |
| Inotuzumab (OS) | KM crossing ~13 months; non-zero Schoenfeld slope | Time-dependent HSCT covariate; HSCT × treatment interaction (p=0.04); competing-risk HR 0.585 |
| Duvelisib (PFS) | Non-zero Schoenfeld slope | RMST: max difference 2.3 months at 29 months |
| Dacomitinib (OS) | Curves cross ~12 months | HR and medians "not appropriate summaries" |
| Elacestrant (PFS) | Non-PH | HR "hard to interpret"; FDA RMST; indication limited to ESR1-mutated |
| Tivozanib (PFS) | Schoenfeld test p=0.01 | 6- and 12-month landmark rates; post hoc RMST for OS |
| Datopotamab deruxtecan (OS) | KM crossing ~20 months | PH "violation"; requested RMST; IPCW analysis (HR 0.86) judged unreliable |
| Tremelimumab (HIMALAYA OS) | Late separation | HR read as an average; post hoc treatment × time p=0.094; SAP planned MaxCombo, RMST, Grambsch-Therneau |
| Quizartinib | Sample size simulated under non-PH, analysed by a single stratified log-rank | Early OS detriment and crossing EFS hazards; time-dependent covariates for transplant/continuation called speculative |
| Canagliflozin (CANVAS) | Early imbalance (first 30 days HR 6.49) | Treatment × time p=0.01 after day 30; "complicate[s] the interpretability" |
| Semaglutide (SUSTAIN 6) | Retinopathy HR 1.76 | Possible non-PH on Schoenfeld plot; criticised post hoc HbA1c-adjusted Cox as overadjustment |
| Ocrelizumab (ORATORIO) | Landmark refits suggest non-PH | Significance depends on 21 imputed CDP events (HR 0.82, p=0.148 without) |
| NexoBrid | Pre-specified time × treatment test rejected PH (p<0.0001) | Fell back to stratified Gehan test and to an AFT model with shared frailty (`PROC NLMIXED`), which FDA judged uninterpretable |
| Dasiglucagon | Pediatric HR 51 reported "only for a reference due to violation of assumption of proportional hazards" | FDA used a log-normal time ratio |
| Baloxavir (excluded, Phase 2b) | Cox failed under non-PH | Phase 3 trials switched to Wilcoxon |

**Non-PH built into the design:**

- **SAkuraStar (satralizumab):** sample size assumed a piecewise HR (1.0 for the first 2 months, 0.25 after) and used a Fleming-Harrington(0,1) weighted log-rank sensitivity analysis.
- **Radium-223:** sample size was simulated in R under piecewise hazards.
- **KEYNOTE-024:** plans a Fleming-Harrington test if PH fails.
- **FLAURA:** if PH fails, complementary log-log plots, then a time-dependent treatment × time model, then piecewise HRs.

## 4. Crossover, censoring and competing risks

- **Crossover-adjusted OS:**
  - RPSFT: lenvatinib (FDA rejected the "common treatment effect" assumption), tislelizumab, penpulimab, vepdegestrant (bootstrap CIs)
  - IPCW: sotorasib, penpulimab, datopotamab deruxtecan
  - MSM/IPCW-weighted Cox: ixazomib
  - crossover-censored OS: vemurafenib
- **Informative or differential censoring:**
  - cabozantinib: FDA fitted a Cox model on the reversed censoring indicator, and one with protocol amendment as a stratum
  - Pluvicto: control-arm dropout
  - taurolidine: with all non-positive dispositions counted as events, HR 0.86 (p=0.17)
  - siponimod
  - MAVORIC: 41% censored in the mogamulizumab arm; 6 FDA sensitivity analyses (HR 0.53–0.74)
- **Interval-censored PFS sensitivity:** sotorasib (HR 0.71 vs 0.66), margetuximab (HR 0.73).
- **Competing risk of death unmodelled:**
  - radium-223 (death treated as censoring)
  - peginesatide (noted by the reviewer)
  - the CV non-CV-death censoring debate (see Section 1)
- **Immortal-time correction:** tebentafusp OS analysis starting at Day 8.

## 5. FDA disagreements and reanalyses that changed the picture

| Entry | Issue |
|---|---|
| Sotorasib (CodeBreaK 200) | PFS HR 0.66 judged insufficient; tipping-point/imputation CIs include 1; ODAC 10–2 that PFS could not be reliably interpreted; OS HR 1.01 |
| Ixazomib | First interim HR 0.74 crossed the boundary; final HR 0.82 (p=0.0548) did not; effect size "could not be ascertained" |
| Melphalan flufenamide (OCEAN) | Post hoc PFS reanalysis counting 29 unconfirmed progressions rejected; FDA HRs 0.82–0.83 (ns); OS HR 1.10 read as a detriment |
| Rifamycin | Applicant's HR margin 0.764 rejected as "not the specification of a margin"; FDA built a 95–95 margin from Taylor et al. 2006 |
| Edoxaban | Primary on-treatment counting-process Cox should have been ITT; Hokusai-VTE NI margin 1.5 disputed; FDA eCrCL spline reanalysis in R |
| Vadadustat (PRO2TECT) | HR 1.17 (1.01, 1.36), NI failed; FDA replaced the region covariate with a "practice-of-care" definition |
| Daprodustat (ASCEND-ND) | On-treatment MACE HR 1.40 vs 1.03 on-study; tipped under a modest 1.7× hazard assumption |
| Ticagrelor | ASA-dose Cox interaction judged non-robust (high leverage from a few non-US patients); projected censoring dates questioned |
| Ivabradine | CDTL's 35-term Stata model for a loop-diuretic interaction dismissed by the Division Director as "not to be credible" |
| Peginesatide | FDA required a two-sided 95% CI (sponsor used 90%) against the 1.3 margin and on-drug sensitivity analyses |
| Zolbetuximab | 21 accidental unblindings; FDA ran stratified Cox by unblinding scope; PRO NI margin of HR 1.33 rejected |
| Vepdegestrant | Possible OS detriment; excluding 33 possibly unblinded reads gave PFS HR 0.58 |
| Siponimod | Excluding potentially unblinded subjects gave HR 0.83 (p≈0.06); bootstrap supported the result |
| Inebilizumab | Region stratum omitted from the Cox model; clinical reviewer said the IDMC likely knew early that the interim HR was 0.18 |
| Idelalisib | Post hoc OS alpha (0.034) rejected; FDA stepwise exploratory Cox |
| T-DM1 | Data-driven second OS interim inflated type I error (accepted as ≤10% under O'Brien-Fleming) |
| Tivozanib | OS plan revised mid-study after a negative interim trend (HR 1.12) |
| Ozanimod | Agreed pooling for disability progression rejected; SAP calls Cox primary, FDA log-rank |
| Vandetanib | Sponsor HR from the log-rank test (0.46); FDA Cox with its own censoring rules (0.352) went into the label (0.35) |

## 6. Where to find code

SAS/R/Stata code blocks are quoted in the details file for these 19 entries:

- Oncology: alpelisib, darolutamide, ensartinib (including the Fine-Gray `%PSHREG` macro), fruquintinib, gilteritinib, mogamulizumab (MAVORIC), relacorilant (PHREG, LIFETEST, RMSTREG)
- Hematology and CV/metabolic: acoramidis (original and addendum code), caplacizumab (`assess ph / resample`), edoxaban, finerenone, rilzabrutinib, tafamidis, ticagrelor, vadadustat
- Other: NexoBrid (marginal Cox with `COVS(AGGREGATE)`, NLMIXED frailty AFT), ocrelizumab (OPERA/ORATORIO), remdesivir (ACTT-1 PHREG with `cl=Wald`, Gilead 5773/5774), satralizumab (including the `REGEON` typo in a strata statement)

## 7. README discrepancies found

None of these have been corrected in `census/census.md`.

| Entry | Discrepancy |
|---|---|
| Fitusiran | Study codes swapped: ATLAS-INH is EFC14768 and ATLAS-A/B is EFC14769 |
| Fruquintinib | FRESCO-2 OS given as HR 0.65 (0.51–0.83), which is the FRESCO (China) result; FRESCO-2 is 0.66 (0.55–0.80) |
| Capivasertib | README's "OS" HRs (0.70, 0.79) are PFS HRs in non-altered populations; OS was 0.74 (0.56–0.98) overall and 0.69 (0.45–1.05) altered |
| Nirogacestat | 118 was the randomization target; 142 were randomized |
| Toripalimab | PFS test was 2-sided, not 1-sided |
| Etripamil | "HR 2.59–2.6 (95% CI 1.66, 4.15)" mixes the mITT HR (2.59, CI 1.64–4.09) with the efficacy-population CI (HR 2.62) |
| Vepdegestrant | "HR 1.32" is ITT OS; ESR1-mutation OS is HR 1.04 |
| Venetoclax (CLL14) | Strata are Binet stage **and** region (README: Binet only); SAP v2 posted but not listed |
| Enzalutamide (PREVAIL) | Randomization stratified by site; alpha split (0.001/0.049) and interim alpha (0.0147) are published, contrary to README |
| Ensartinib | Primary test was an **unstratified** log-rank test with an unstratified Cox model; protocol and SAP v3.0 are in the JAMA Oncol supplement |
| Ublituximab | Cox model is covariate-adjusted, not stratified; protocol/SAP posted on ClinicalTrials.gov |
| Mogamulizumab | Cox model is covariate-adjusted, not stratified |
| Ripretinib | Stratification factors entered as covariates, not strata |
| Daprodustat | MACE model adjusts for region and ESA use/dialysis type as covariates, not strata |
| Macitentan | Only a log-rank test is described; README says "Cox / stratified log-rank" |
| Ribociclib | No source names the model behind the primary PFS HR; README's "stratified Cox" is unverified |
| Asfotase alfa | ENB-010-10 is Phase 2 per FDA (README: Phase 2/3) |
| Tebentafusp | SAP and ClinicalTrials.gov say Phase 2, FDA review says "Phase 3 Study 202" (included, flagged) |
| Lixisenatide | Heading says BLA; FDA documents are NDA 208471 |
| COLUMBUS | FDA review reports a DMC-provided OS HR 0.58 (0.42–0.80) |
| Documents now available | FDA reviews: daraxonrasib (Ref ID 5858563), finerenone, sotagliflozin, acoramidis. SAPs/protocols on ClinicalTrials.gov or in supplements: MAVORIC, DUO, EMBRACA, INVICTUS, HER2CLIMB, DREAMM-3, DREAMM-8, datopotamab deruxtecan, vepdegestrant, gedatolisib, inebilizumab, relacorilant, ensartinib |

## 8. Takeaways

1. **The Phase 3 Cox model is mostly an HR estimator attached to a stratified log-rank test.** 73% of primary models are stratified by the randomization factors with treatment as the only covariate. CV outcome trials are the main exception, using covariate-adjusted unstratified models.
2. **Getting the strata right is the dominant practical problem.** IxRS-vs-CRF discordance, sparse-strata pooling, and confusion between strata and covariates (in text vs code) recur throughout. Re-stratified Cox models are FDA's most common reanalysis.
3. **Basic specification details are missing for most models.** Ties are unstated for 80% of models, the CI method for 86%, the PH check for 84%, and software for 68%. Reporting has improved since 2016, driven by posted SAPs (Efron ties stated for 23% of 2021–2026 models).
4. **When FDA takes non-PH seriously, it usually moves to RMST.** Several approvals hinged on that switch: gilteritinib, midostaurin, duvelisib, elacestrant, datopotamab deruxtecan and tivozanib. Pre-specified non-PH plans (MaxCombo, piecewise HR, RMST) appear mostly in post-2020 SAPs.
5. **Competing risks are handled inconsistently.** Fine-Gray appears in only 9 models. Censoring non-CV deaths in MACE analyses, and treating death as censoring for skeletal events, drew explicit FDA criticism.
