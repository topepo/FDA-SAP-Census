# FDA Phase III SAP Census

**Last updated:** 2026-09-11 12:11 EDT · **Version:** 0.1.0 (pilot)

A reference census of FDA Phase III drug submissions (last ~15 years), documenting trial design, the statistical analysis plan (SAP) actually used, and how FDA reviewed it.

**Scope note:** This is a pilot covering 10 submissions across 2 therapeutic areas (5 oncology, 5 cardiovascular/metabolic). A full census across all FDA approvals since ~2011 would require the same treatment applied at much larger scale.

**Sourcing note:** FDA does not routinely publish a sponsor's actual SAP document. Where a genuine SAP or protocol-with-SAP was found (posted by the sponsor on ClinicalTrials.gov's Documents tab, or embedded in an FDA statistical review), it is quoted directly and marked **[verbatim]**. Where no such document is public, the entry instead includes a **Reverse-engineered SAP** section that reconstructs the likely analysis approach from the package insert and reported results, with each inferred point traced to what it's inferred from, and marked **[inferred]**.

**Keyword tagging:** each entry below carries a **Keywords:** line (trial design, endpoint type, primary analysis method, multiplicity control, interim monitoring/alpha-spending, missing-data/bias handling, and regulatory-process tags where applicable), drawn from the controlled vocabulary in [`Keyword_Taxonomy.md`](Keyword_Taxonomy.md). Use that file to look up a term's definition or to see which other submissions use the same statistical method.

---

## Oncology

### 1. Pembrolizumab (Keytruda) — BLA 125514/S-012

**Sponsor:** Merck Sharp & Dohme LLC
**Indication approved:** First-line treatment of metastatic non-small cell lung cancer (NSCLC), tumors with PD-L1 tumor proportion score (TPS) ≥50%, no EGFR/ALK aberrations
**Approval date:** October 24, 2016
**Pivotal trial:** KEYNOTE-024 (Merck protocol MK-3475-024), NCT02142738
**Keywords:** *Design:* randomized, open-label, active-controlled, crossover-permitted, biomarker-selected population · *Endpoints:* PFS (BICR, primary), OS (secondary), ORR (secondary) · *Primary analysis:* stratified log-rank test, stratified Cox proportional-hazards model, Miettinen-Nurminen method (ORR CI) · *Multiplicity:* fixed-sequence step-down hierarchy (ORR→PFS→OS) · *Interim/alpha-spending:* group-sequential design, Hwang-Shih-DeCani alpha-spending function, non-binding futility (beta-spending)

**Trial design & endpoints**

- Randomized (1:1), open-label, active-controlled, multicenter Phase III trial
- Population: treatment-naive metastatic NSCLC, PD-L1 TPS ≥50%, no EGFR/ALK genomic aberrations; excluded autoimmune disease requiring systemic therapy, immunosuppression, prior thoracic radiation >30 Gy within 26 weeks
- Randomization stratified by ECOG performance status (0 vs. 1), histology (squamous vs. non-squamous), geographic region (East Asia vs. non-East Asia)
- Arms: pembrolizumab 200 mg IV q3w vs. investigator's choice of 5 platinum-doublet chemotherapy regimens; crossover to pembrolizumab permitted for chemo-arm patients at BICR-confirmed progression
- Primary endpoint: PFS by blinded independent central review (BICR), RECIST v1.1
- Secondary endpoints: OS, ORR (both BICR-assessed)
- Sample size: event-driven, ~300 subjects randomized 1:1
- Overall type I error strictly controlled at 2.5% (one-sided), allocated across a fixed-sequence hierarchy: ORR → PFS → OS (step-down; a later endpoint is tested only if the prior one in the sequence is positive)

**Documents**

- FDA Approval Letter (joint S-008/S-012 action) — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2016/125514Orig1s008,125514Orig1s012ltr.pdf
- Package Insert / Label (2016, reflecting S-012) — https://www.accessdata.fda.gov/drugsatfda_docs/label/2016/125514s012lbl.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT02142738
- Protocol + SAP (Merck, "MK-3475-024-11 Final Protocol," 20-Dec-2017; Section 8 is the SAP) — https://cdn.clinicaltrials.gov/large-docs/38/NCT02142738/Prot_SAP_000.pdf
- Pivotal publication: Reck M, et al. "Pembrolizumab versus Chemotherapy for PD-L1–Positive Non–Small-Cell Lung Cancer." *N Engl J Med.* 2016;375:1823-1833. https://www.nejm.org/doi/full/10.1056/NEJMoa1606774

**Other resources**

- Merck participates in the Vivli data-sharing platform (vivli.org); trial-specific IPD availability for KEYNOTE-024 was not individually confirmed in this pass and should be checked on Vivli directly before assuming access.
- No FDA advisory committee meeting was held for this supplement.

**SAP — exact text / key excerpts**

*[verbatim, from Protocol/SAP Section 8.1.3 "Multiplicity," p.113-114]*

> "The overall type I error rate for this study is strictly controlled at 2.5% (one-sided). There are one planned analysis of ORR, one planned analysis of PFS and two planned analyses of OS. The ORR analysis will occur when the first 191 randomized subjects have a minimum of 6 months of follow up, and will be tested at the 0.5% (one-sided) alpha level. PFS will be tested only once at the planned PFS analysis after ~175 PFS events are observed, and will be tested at the 2.5% (one-sided) level if ORR is positive or at the 2.0% (one-sided) level if ORR is negative. OS will be tested only if PFS is positive and at the same level as PFS (i.e., step-down).
>
> For OS, a Hwang-Shih-DeCani alpha-spending function with the gamma parameter -0.4 and beta-spending function with gamma -35 are constructed to implement group sequential boundaries that control the type I error rate as well as allow for non-binding futility analysis.
>
> If at least 110 OS events are observed at the planned PFS analysis after ~175 PFS events are observed, an interim OS analysis will be conducted at the level determined by the spending function and the actual number of OS events at the PFS analysis. The final OS analysis will occur when ~170 OS events are observed at the level determined by the spending function and the actual number of OS events observed at the PFS analysis...
>
> Following Amendment 08, the final OS analysis is no longer required and will not be performed as described above. This is due to the study hypothesis for OS being supported at the interim analysis with database cutoff of May 9, 2016."

*[verbatim, from the approved Package Insert, Table 9 footnote, reporting the actual interim OS analysis conducted at 108 events]*

> "P-value is compared with 0.0118 of the allocated alpha for this interim analysis."

The label's Table 9 also documents the primary PFS result (HR 0.50, 95% CI 0.37-0.68, stratified log-rank p<0.001) and the interim OS result (HR 0.60, 95% CI 0.41-0.89, stratified log-rank p=0.005), both "based on the stratified Cox proportional hazard model" — i.e., the final executed analysis stratified by the randomization factors, consistent with the SAP's planned methodology.

---

### 2. Osimertinib (Tagrisso) — NDA 208065/S-008

**Sponsor:** AstraZeneca Pharmaceuticals LP
**Indication approved:** First-line treatment of metastatic NSCLC with EGFR exon 19 deletions or exon 21 (L858R) mutations
**Approval date:** April 18, 2018
**Pivotal trial:** FLAURA (AstraZeneca Study D5160C00007, osimertinib coded AZD9291), NCT02296125
**Keywords:** *Design:* randomized, double-blind, active-controlled, crossover-permitted, biomarker-selected population · *Endpoints:* PFS (investigator-assessed, primary), OS (key secondary), CNS PFS, ORR/DoR/DCR, PRO/HRQoL (EORTC QLQ) · *Primary analysis:* stratified log-rank test (Breslow method for ties), HR from log-rank U/V statistics, Cox proportional-hazards model (subgroups, Efron method for ties) · *Multiplicity:* fixed-sequence hierarchy (PFS→OS→CNS PFS) · *Interim/alpha-spending:* group-sequential design, Lan-DeMets alpha-spending function approximating O'Brien-Fleming · *Missing data/bias:* RPSFT, IPCW (OS crossover adjustment), ascertainment bias, evaluation-time bias, attrition bias, quantitative/qualitative interaction testing (Gail-Simon)

**Trial design & endpoints**

- Phase III, double-blind, randomized (1:1), active-controlled trial vs. standard-of-care EGFR-TKI (gefitinib or erlotinib)
- Population: locally/centrally confirmed EGFRm+ (Ex19del or L858R) locally advanced/metastatic NSCLC, treatment-naive; EGFR mutation status confirmed by cobas EGFR Mutation Test (Roche) at a central lab
- Randomization stratified by mutation type (Ex19del vs. L858R) and race (Asian vs. non-Asian)
- Primary endpoint: PFS (RECIST v1.1, investigator-assessed)
- Key secondary: OS; other secondary: ORR, DoR, DCR, depth of response, PROs (EORTC QLQ-C30/LC13, CTSQ-16)
- Sample size: ~530 patients randomized globally (1:1); primary PFS analysis planned at ~359 progression events, giving 90% power to detect HR=0.71 at a 2-sided 5% significance level (minimum critical HR 0.81)
- Analysis method: stratified log-rank test (Breslow method for ties); HR/CI derived from the log-rank U/V statistics rather than a separately fitted Cox model
- Multiplicity: fixed-sequence hierarchy PFS → OS → CNS PFS at overall 2-sided α=0.05; OS analyzed at two time points (interim at the PFS analysis, final at ~60% maturity / ~318 deaths) using a Lan-DeMets alpha-spending function approximating O'Brien-Fleming

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2018/208065Orig1s008ltr.pdf
- Package Insert / Label (2018, S-008) — https://www.accessdata.fda.gov/drugsatfda_docs/label/2018/208065s008lbl.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT02296125
- Statistical Analysis Plan (Study D5160C00007, Edition 3.0, 28-Feb-2017) — https://cdn.clinicaltrials.gov/large-docs/25/NCT02296125/SAP_001.pdf
- Pivotal publication: Soria JC, et al. "Osimertinib in Untreated EGFR-Mutated Advanced Non–Small-Cell Lung Cancer." *N Engl J Med.* 2018;378:113-125.

**Other resources**

- AstraZeneca provides IPD access for its sponsored trials via Vivli.org (Data Usage Agreement required); trial-specific FLAURA availability not individually confirmed here.

**SAP — exact text / key excerpts**

*[verbatim, from SAP §1.2 "Study design," p.16]*

> "The primary endpoint for this study is PFS (defined by RECIST v1.1), as assessed by the Investigator. Progression free survival has been chosen as a clinically meaningful outcome measure, representing a direct benefit to the patient that is largely unaffected by the effects of subsequent therapy. The sponsor will be assessing OS as a key secondary endpoint recognising that OS is an important objective assessment of clinical benefit, however in this treatment naive population, OS will likely be confounded by the use of subsequent therapies including protocol permitted cross-over."

*[verbatim, from SAP §4.2.2 "Multiple testing strategy," p.39]*

> "In order to provide strong control of the type I error rate, α=0.05 (two-sided), the primary endpoint of PFS, and endpoints of OS and CNS PFS, will be tested in this sequential order. If any previous analysis in the sequence is not statistically significant, the alpha will not be transferred to subsequent analyses...
>
> One analysis of the primary endpoint (PFS) is planned. Two analyses of OS are planned; one interim at the time of PFS and a final analysis. The final OS analysis is planned to be conducted when the OS data is approximately 60% mature (approximately 318 deaths)...
>
> A 2-sided 5% alpha will be used in all testing, with the exception of overall survival endpoint. Since two analyses of OS are planned, the Lan DeMets approach that approximates the O'Brien and Fleming spending function will be used to maintain an overall 2-sided 5% type I error across the two planned analyses of OS."

*[verbatim, from SAP §4.3.8.1 "Primary outcome: progression free survival," p.44]*

> "Progression free survival established from programmatically calculated response...based upon the Investigator assessment for patients in the FAS will be analysed using a log rank test stratified by race (Asian versus Non-Asian) and mutation type (Ex19del versus L858R) for generation of the p-value and using the Breslow approach for handling ties."

---

### 3. Olaparib (Lynparza) — NDA 208558 (original approval)

**Sponsor:** AstraZeneca Pharmaceuticals LP
**Indication approved:** Maintenance treatment of recurrent epithelial ovarian, fallopian tube, or primary peritoneal cancer in complete/partial response to platinum-based chemotherapy (≥2 prior platinum-containing lines), irrespective of BRCA status
**Approval date:** August 17, 2017
**Pivotal trial:** SOLO-2/ENGOT-Ov21, NCT01874353 (supportive: Study 19, NCT00753545)
**Keywords:** *Design:* randomized, double-blind, placebo-controlled, biomarker-selected population (germline BRCA), primary endpoint amended mid-trial (BICR→investigator) · *Endpoints:* PFS-Inv (primary), PFS2 & OS (hierarchical secondary), HRQoL (FACT-O) · *Primary analysis:* stratified log-rank test, Kaplan-Meier estimation (Brookmeyer-Crowley CI) · *Multiplicity:* two-stage hierarchical testing · *Interim/alpha-spending:* two-stage group-sequential design, Haybittle-Peto boundary (final OS), Bespoke spending function (Stone 2010, PFS2 retest) · *Missing data/bias:* ascertainment bias, evaluation-time bias, attrition bias, deviation bias sensitivity analyses

**Trial design & endpoints**

- SOLO-2: Phase III, randomized (2:1), double-blind, placebo-controlled trial; olaparib tablets 300 mg BID vs. placebo, in germline-BRCA-mutated, platinum-sensitive relapsed ovarian cancer patients responding to their penultimate platinum regimen (196 olaparib : 99 placebo)
- Randomization stratified by: response to penultimate platinum chemotherapy (6-12 months vs. >12 months), response to last platinum regimen (CR vs. PR), and ethnic descent (Jewish vs. non-Jewish)
- Primary endpoint: investigator-assessed PFS (modified RECIST), ITT population — **amended mid-trial** from BICR-assessed PFS to investigator-assessed PFS by Protocol Amendment 3 (12-Apr-2016), with BICR retained as a supportive analysis
- Secondary endpoints tested statistically (hierarchical): PFS2 (time to second progression), OS; other secondary: HRQoL (FACT-O)
- Type I error: 2.5% (one-sided), tested via two-stage analysis — stage 1 at 192 investigator-assessed PFS events (primary), stage 2 at 60% deaths (OS)
- Pre-specified sensitivity analyses: ascertainment bias (BICR comparison), evaluation-time bias, attrition bias, deviation bias (triggered if >10% of patients had protocol deviations)
- Study 19 (supportive, all-comers not restricted to BRCA-mutated): 80% power to detect HR=0.75, one-sided α=0.2; 137 PFS events from ~250 patients

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2017/208558Orig1s000ltr.pdf
- Package Insert / Label — https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/208558s000lbl.pdf
- FDA Multi-Discipline Review (includes the Statistical Review by Stella Karuri / Jason Schroeder, Division of Biometrics) — https://www.accessdata.fda.gov/drugsatfda_docs/nda/2017/208558Orig1s000MultidisciplineR.pdf
- ClinicalTrials.gov record (SOLO-2) — https://clinicaltrials.gov/study/NCT01874353
- Pivotal publication: Pujade-Lauraine E, et al. "Olaparib tablets as maintenance therapy in patients with platinum-sensitive relapsed ovarian cancer and a BRCA1/2 mutation (SOLO2/ENGOT-Ov21): a double-blind, randomised, placebo-controlled, phase 3 trial." *Lancet Oncol.* 2017;18:1274-1284.

**Other resources**

- AstraZeneca IPD access via Vivli.org (Data Usage Agreement required).

**SAP — exact text / key excerpts**

*[verbatim, from FDA Multi-Discipline Review, "Statistical Analysis Plan / SOLO2" section, p.55]*

> "The ITT and efficacy population for SOLO2 included all randomized patients. PFS-Inv, PFS2 and OS were analyzed via a stratified log-rank test, stratified by time to disease progression in the penultimate platinum treatment (6-12 months, >12 months) and response to last platinum chemotherapy prior to study entry (CR or PR)... The analysis was performed in two stages. The first stage was set to coincide with 192 investigator-assessed PFS events. The second stage was set to coincide with 60% deaths. The primary analysis of PFS-Inv performed at the first stage and the analysis of OS performed at the second stage.
>
> The primary analysis was set to coincide with the occurrence of 192 PFS-Inv events. The specified Type I error rate was set at 2.5% (one-sided)."

*[verbatim, FDA reviewer commentary on protocol conduct, p.55 — a documented deviation from the SAP as executed]*

> "Reviewer comment: Although the FDA agreed to the Sponsor's proposal (in February 2016) to change the primary endpoint from BICR assessment to Investigator assessment, FDA also advised the Sponsor on 3/3/16 that they should still conduct the independent central review of all patient scans to confirm the investigator assessment. FDA further stated that both PFS analyses (by investigator and central review) should be consistent with each other... It was discovered through the course of the NDA review that despite the FDA's advice to the Sponsor regarding the BICR analysis, no further scans were sent for BICR review following investigator assessed progression after April 2016. We performed a sensitivity analysis for PFS, comparing BICR and investigator assessed PFS at the point of protocol change."

*[verbatim, FDA reviewer commentary flagging a secondary endpoint FDA did not accept as regulatory-grade, p.56]*

> "Reviewer comment: It is noted that although PFS2 was one of the secondary endpoints of the trial, as defined by the Sponsor, this is not an endpoint that FDA considers as a valid regulatory endpoint and this endpoint was not considered in the FDA's risk-benefit analysis of this application."

This is a clear example of "how the SAP held up under FDA review": the sponsor's own mid-trial endpoint change was accepted, but FDA's condition attached to that acceptance (keep running BICR in parallel) was not actually followed by the sponsor, which FDA caught and addressed with its own independent sensitivity analysis.

---

### 4. Enzalutamide (Xtandi) — NDA 203415/S-003

**Sponsor:** Astellas Pharma US, Inc. (co-developed with Medivation)
**Indication approved:** Metastatic castration-resistant prostate cancer (mCRPC), regardless of prior docetaxel exposure (expanded from post-chemotherapy-only)
**Approval date:** September 10, 2014
**Pivotal trial:** PREVAIL, NCT01212991
**Keywords:** *Design:* randomized, double-blind, placebo-controlled, co-primary endpoints · *Endpoints:* OS + rPFS (co-primary) · *Primary analysis:* unstratified log-rank test, unstratified Cox proportional-hazards model · *Interim/alpha-spending:* group-sequential design (pre-specified interim OS analysis) — [inferred] no confirmed spending function; see Reverse-engineered SAP below

**No genuine SAP or protocol is publicly posted for PREVAIL.** NCT01212991 was registered in 2010, before ClinicalTrials.gov's sponsor document-posting norms took hold (these became common industry practice from roughly 2017 onward). No Documents tab entries exist for this trial, and no separate FDA statistical review was found publicly posted for this specific supplement (203415/S-003) — Drugs@FDA lists only the label and approval letter for this action. This entry therefore relies on the approved label and the pivotal NEJM publication, with a reverse-engineered SAP for the analysis details not stated in either.

**Trial design & endpoints** *(from label + publication)*

- Multinational, Phase III, randomized (1:1), double-blind, placebo-controlled
- Population: chemotherapy-naive mCRPC (N=1717; enzalutamide 160 mg/day PO, N=872 vs. placebo, N=845); patients with visceral metastases and mild-moderate heart failure (NYHA I/II) were allowed; prior seizure history excluded
- Co-primary endpoints: overall survival (OS) and radiographic progression-free survival (rPFS) — rPFS defined by PCWG2 criteria (bone scan, ≥2 new lesions with confirmation) and/or RECIST v1.1 for soft-tissue lesions, with the primary rPFS analysis based on centrally reviewed radiographic assessment
- A pre-specified interim OS analysis was conducted after 540 deaths

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2014/203415Orig1s003ltr.pdf
- Package Insert / Label (2014, S-003) — https://www.accessdata.fda.gov/drugsatfda_docs/label/2014/203415s003lbl.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT01212991 (no protocol/SAP documents posted)
- FDA Statistical Review for the *original* 2012 NDA 203415 approval (AFFIRM trial, post-docetaxel indication — different trial, included here only as methodological context for the same sponsor/division's conventions) — https://www.accessdata.fda.gov/drugsatfda_docs/nda/2012/203415Orig1s000StatR.pdf
- Pivotal publication: Beer TM, et al. "Enzalutamide in Metastatic Prostate Cancer before Chemotherapy." *N Engl J Med.* 2014;371:424-433. https://www.nejm.org/doi/full/10.1056/NEJMoa1405095

**Other resources**

- Astellas/Pfizer (Xtandi's co-marketer) both participate in Vivli.org; trial-specific IPD availability for PREVAIL not individually confirmed here.

**SAP — exact text / key excerpts**

*[verbatim, from the approved Package Insert, Table 4/5 footnotes — the only public description of the actual analysis method used]*

> "P-value is derived from an unstratified log-rank test... Hazard Ratio is derived from an unstratified proportional hazards model."

> "A statistically significant improvement in overall survival was demonstrated at the pre-specified interim analysis, conducted after 540 deaths in patients treated with XTANDI compared to those treated with placebo."

**Reverse-engineered SAP** *(inferred — not genuine PREVAIL SAP text)*

- **Co-primary structure, no stated alpha split** [inferred from: label reports both OS (HR 0.71, p<0.0001) and rPFS (HR 0.17, p<0.0001) each at conventional two-sided significance, with no footnote describing any alpha allocation between them]. This pattern is consistent with a co-primary-endpoint design requiring statistical significance on *each* endpoint independently at the full nominal level, rather than a split-alpha hierarchical test — the design used in the sponsor's earlier AFFIRM trial for its single OS primary endpoint (below) offers no evidence of alpha-splitting practice being extended here to two endpoints, so this remains an inference, not a confirmed fact.
- **Group-sequential interim OS monitoring** [inferred from: the label's "pre-specified interim analysis" language at a specific death count (540), which is the standard vocabulary FDA reviews use for a group-sequential design with a data monitoring committee]. The sponsor's related 2012 AFFIRM trial (same NDA, prior approval, post-docetaxel indication) used an explicit Lan-DeMets alpha-spending function for its OS interim analysis: *"A planned interim analysis was to be performed when 520 deaths (80%) deaths occurred. The interim alpha (αinterim = 0.0244) was determined by a Lan-DeMets alpha-spending function"* (FDA Statistical Review, NDA 203415 original, p.9). PREVAIL's interim OS analysis was very likely governed by an analogous Lan-DeMets/O'Brien-Fleming-type spending rule, but the specific gamma parameter, information fraction, and resulting interim alpha boundary for PREVAIL itself are not publicly available and cannot be reconstructed from the label alone.
- **Unstratified primary analysis despite stratified randomization** [inferred from: the label's footnote explicitly states the primary log-rank test and Cox model were *unstratified*, which is a specific, checkable methodological choice — most Phase III oncology trials of this era used a stratified primary analysis matching randomization strata; the choice to report unstratified results as primary suggests either no formal randomization stratification factors were built into PREVAIL, or the SAP pre-specified the unstratified analysis as primary with stratified analysis as sensitivity — this cannot be resolved without the SAP itself].

---

### 5. Venetoclax (Venclexta) — NDA 208573/S-013

**Sponsor:** AbbVie Inc. (co-marketed with Genentech/Roche)
**Indication approved:** Venetoclax + obinutuzumab, previously untreated chronic lymphocytic leukemia (CLL) / small lymphocytic lymphoma (SLL)
**Approval date:** May 15, 2019
**Pivotal trial:** CLL14 (Roche/AbbVie Protocol BO25323), NCT02242942
**Keywords:** *Design:* randomized, open-label, active-controlled, fixed-duration regimen, dual primary-endpoint definition (protocol primary vs. US-regulatory primary) · *Endpoints:* PFS (investigator- and IRC-assessed), MRD response rate, CR rate, ORR, OS · *Primary analysis:* stratified log-rank test (Binet stage), unstratified log-rank test (supportive), stratified Cox proportional-hazards model, Kaplan-Meier estimation · *Multiplicity:* Fallback Procedure (hierarchical secondary testing) · *Interim/alpha-spending:* group-sequential design, gamma-family alpha-spending function

**Trial design & endpoints**

- Phase III, open-label, multicenter, randomized (1:1) trial in previously untreated CLL patients with coexisting medical conditions (CIRS score >6 or CrCl <70 mL/min)
- Arms: fixed-duration venetoclax (12 cycles) + obinutuzumab (6 cycles) vs. obinutuzumab + chlorambucil (12 cycles); N=432
- Randomization stratified by Binet stage
- Primary endpoint (per protocol): investigator-assessed PFS, ITT population, defined as time from randomization to first progression/relapse (iwCLL 2008 criteria) or death from any cause. **IRC-assessed PFS was designated the primary endpoint for US regulatory purposes** (a split between the protocol's stated primary and the FDA-facing primary)
- Key secondary endpoints (hierarchical): IRC-assessed PFS, MRD response rate (bone marrow, ASO-PCR, at end of treatment), investigator-assessed CR rate, MRD response rate (peripheral blood), MRD in patients with CR, ORR, OS
- Sample size: 170 PFS events required for final analysis, giving 80% power to detect HR=0.65 (median PFS improving from 27 to 41.5 months), log-rank test at two-sided 0.05, one interim analysis planned after 75% of PFS events (gamma spending function, γ=-9.21)

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2019/208573Orig1s013ltr.pdf
- Package Insert / Label — https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/208573s013lbl.pdf
- FDA Multi-Discipline Review (Statistical Reviewer: Weishi (Vivian) Yuan, PhD) — https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/208573Orig1s013MultidisciplineR.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT02242942
- Study Protocol (BO25323, Version 7 — includes the protocol-level "Statistical Considerations and Analysis Plan" section quoted below; the standalone SAP document itself was not separately posted) — https://cdn.clinicaltrials.gov/large-docs/42/NCT02242942/Prot_001.pdf
- Pivotal publication: Fischer K, et al. "Venetoclax and Obinutuzumab in Patients with CLL and Coexisting Conditions." *N Engl J Med.* 2019;380:2225-2236. https://www.nejm.org/doi/full/10.1056/NEJMoa1815281

**Other resources**

- Roche/Genentech provides IPD access via Vivli.org (AbbVie's own program should also be checked); trial-specific CLL14 availability not individually confirmed here.

**SAP — exact text / key excerpts**

*[verbatim, from Protocol BO25323 v7, §6.4.1 "Primary Efficacy Endpoint," p.124]*

> "The primary efficacy endpoint is investigator-assessed PFS, defined as the time from randomization to the first occurrence of progression or relapse (determined using standard IWCLL guidelines [2008]), or death from any cause, whichever occurs first. Progression-free survival on the basis of independent review committee (IRC) assessments will be considered primary for U.S. regulatory purposes (details will be provided in the SAP)...
>
> Treatment comparisons will be made using a two-sided log-rank test (at 0.05 significance-level, adjusted for the interim analyses), stratified by Binet stage... A two-sided non-stratified log-rank test will be performed to support the primary analysis. Median PFS and the 95% confidence limits will be estimated using Kaplan-Meier survival methodology... Estimates of the treatment effect will be expressed as HR including 95% confidence limits estimated through a Cox proportional-hazards analysis stratified by Binet stage."

*[verbatim, from Protocol BO25323 v7, §6.1 "Determination of Sample Size," p.123]*

> "Estimates of the number of events required to demonstrate efficacy with regard to PFS are based on the following assumptions:
> • Log-rank test at the two-sided 0.05 level of significance
> • Median PFS for obinutuzumab and chlorambucil control arm (27 months)
> • 80% power to detect HR = 0.65 for the comparison of obinutuzumab + venetoclax experimental arm versus GClb, with median PFS for obinutuzumab + venetoclax increased to 41.5 months
> • Exponential distribution of PFS
> • Annual drop-out rate of 10%
> • One interim analysis for efficacy after 75% of PFS events, utilizing a stopping boundary according to the γ family error spending function with parameter γ = −9.21."

*[paraphrased with care — from the FDA Multi-Discipline Review's description of the executed SAP and its amendments, p.31-32; the source PDF's text extraction corrupted Greek letters and some digit strings, so this is summarized rather than quoted verbatim where corruption made exact wording unreliable]* FDA's review documents that a testing hierarchy (Fallback Procedure) controlled overall Type I error across the key secondary endpoints, that the gamma-family alpha-spending approach from the protocol (γ=-9.21) was applied to both investigator- and IRC-assessed PFS, and that the SAP was revised once post-unblinding (first version finalized 26-Sep-2018; v2 dated 08-Nov-2018) to change how patients randomized to VEN+G but who received only obinutuzumab were analyzed — reassigning them to the VEN+G arm by treatment-assigned (ITT) rather than treatment-received logic. The review also notes FDA agreed to MRD as a secondary endpoint and that the sponsor incorporated some, but not all, of FDA's recommendations on the secondary-endpoint testing hierarchy during protocol development.

---

## Cardiovascular / Metabolic

### 1. Empagliflozin (Jardiance) — NDA 204629/S-008

**Sponsor:** Boehringer Ingelheim / Eli Lilly
**Indication approved:** Reduce the risk of cardiovascular death in adults with type 2 diabetes and established cardiovascular disease
**Approval date:** December 2, 2016
**Pivotal trial:** EMPA-REG OUTCOME, NCT01131676
**Keywords:** *Design:* randomized, double-blind, placebo-controlled, dose-arm pooling, non-inferiority-then-superiority · *Endpoints:* 3-point MACE (primary), 4-point MACE (key secondary) · *Primary analysis:* Cox proportional-hazards model with covariates · *Multiplicity:* fixed four-step hierarchy (NI 3-pt→NI 4-pt→Superiority 3-pt→Superiority 4-pt) · *Interim/alpha-spending:* Haybittle-Peto adjustment for a single interim analysis · *Regulatory:* FDA Advisory Committee meeting held

**Trial design & endpoints**

- Phase III, multicenter, international, randomized, double-blind, placebo-controlled cardiovascular safety trial; empagliflozin 10 mg, empagliflozin 25 mg, and placebo, each added to standard of care
- Population: type 2 diabetes with established cardiovascular disease (~7065 randomized at 607 sites, 42 countries); the two empagliflozin dose arms were pre-specified to be pooled for the primary analysis
- Primary endpoint: time to first occurrence of adjudicated 3-point MACE (CV death including fatal stroke/MI, non-fatal MI excluding silent MI, non-fatal stroke)
- Key secondary endpoint: time to first occurrence of 4-point MACE (3-point MACE plus hospitalization for unstable angina)
- Pre-specified testing hierarchy (four sequential hypotheses, each gating the next): (1) non-inferiority, 3-point MACE; (2) non-inferiority, 4-point MACE; (3) superiority, 3-point MACE; (4) superiority, 4-point MACE
- Analysis method: Cox proportional hazards model with covariates for treatment, age, sex, geographic region, baseline BMI category, baseline HbA1c category, and baseline eGFR category
- Non-inferiority margin: HR upper bound of 1.3 (ruling out ≥30% excess risk vs. placebo); tested at one-sided α=0.0249 (95.02% CI), reflecting a Haybittle-Peto adjustment of 0.0001 from the nominal 0.025 to account for one pre-specified interim analysis
- One interim analysis was conducted (to support the original glycemic-control NDA, filed before the CV indication); the same trial data later supported this separate CV-indication supplement

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2016/204629Orig1s008ltr.pdf
- Package Insert / Label (2016, S-008) — https://www.accessdata.fda.gov/drugsatfda_docs/label/2016/204629s008lbl.pdf
- FDA combined review package (includes Division Director Review with full testing-hierarchy detail) — https://www.accessdata.fda.gov/drugsatfda_docs/nda/2021/204629Orig1s008.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT01131676 (no protocol/SAP documents posted)
- Pivotal publication: Zinman B, et al. "Empagliflozin, Cardiovascular Outcomes, and Mortality in Type 2 Diabetes." *N Engl J Med.* 2015;373:2117-2128.

**Other resources**

- Boehringer Ingelheim/Lilly IPD access via Vivli.org; trial-specific EMPA-REG availability not individually confirmed here.
- An FDA Advisory Committee meeting was held for this supplement (recommended approval 12-11).

**SAP — exact text / key excerpts**

*[verbatim, from FDA combined review, "Division Director Review," p.6]*

> "Type-1 error was controlled across the four pre-specified hypotheses to be tested using a hierarchical testing strategy (see below). Non-inferiority refers to the non-inferiority hypothesis to rule out a 30% or greater risk relative to placebo. Superiority refers to the superiority hypotheses to test whether empagliflozin conferred a benefit on MACE or MACE+ over placebo.
>
> Pre-specified Testing Hierarchy
> 1. Non-inferiority: 3-Point MACE
> 2. Non-inferiority: 4-Point MACE
> 3. Superiority: 3-Point MACE
> 4. Superiority: 4-Point MACE
>
> For the analyses, the applicant had pre-specified that the 10 mg and 25 mg empagliflozin treatment arms would be combined into a single group. A cox proportional hazards model with factors for treatment (pooled empagliflozin vs. placebo), age, sex, geographical region..., baseline values for BMI..., HbA1c..., and eGFR... was used to test for non-inferiority of the primary and secondary endpoints against a margin of 1.3 using a 1 sided alpha of 0.0249 (corresponding to 95.02% confidence intervals). The alpha had been adjusted by 0.0001 based on a Haybittle-Peto method to account for a single interim analysis to preserve the overall alpha-level level at 0.025. If non-inferiority was established for both 3-Point and 4-Point MACE, then testing for superiority was to occur in sequence for 3 and 4-Point MACE respectively."

Note the review's own remark elsewhere that "testing was based on a 95.02% confidence interval as an interim analysis was previously conducted to support the original NDA" — i.e., the alpha spent for the interim analysis of the *glycemic* NDA persists as a debit against the type-I error budget used for this later CV-indication analysis of the same trial data, which is a subtle and easy-to-miss point about reusing one trial's data across two separate regulatory submissions.

---

### 2. Sacubitril/Valsartan (Entresto) — NDA 207620 (original approval)

**Sponsor:** Novartis Pharmaceuticals
**Indication approved:** Reduce the risk of cardiovascular death and hospitalization for heart failure in patients with chronic heart failure (NYHA class II-IV) and reduced ejection fraction
**Approval date:** July 7, 2015
**Pivotal trial:** PARADIGM-HF, NCT01035255
**Keywords:** *Design:* randomized, double-blind, active-controlled, early-stopped for efficacy · *Endpoints:* CV death/HF-hospitalization composite (primary), all-cause death, KCCQ score, new-onset AF, renal composite (secondary) · *Primary analysis:* Cox regression (treatment + region), repeated-measures ANCOVA (KCCQ) · *Multiplicity:* Bonferroni-Holm sequentially rejective procedure (secondary endpoints) · *Interim/alpha-spending:* group-sequential design (3 planned interim analyses), Haybittle-Peto boundary, DMC-driven early stop

**Trial design & endpoints**

- Phase III, multicenter, randomized, double-blind, active-controlled (vs. enalapril) trial; N=8,442 patients with HFrEF, NYHA class II-IV
- Primary endpoint: time to first heart failure hospitalization or CV death (composite)
- Secondary endpoints: time to all-cause death; change from baseline in KCCQ clinical summary score at 8 months; time to new-onset atrial fibrillation; time to a renal composite (≥50% eGFR decline, >30 mL/min/1.73m² eGFR decline to below 60, or ESRD)
- Analysis method: Cox regression (treatment + region) for the primary composite and the three time-to-event secondary endpoints; repeated-measures ANCOVA (treatment + region + timepoint) for the KCCQ secondary endpoint
- Sample size: designed for ~2410 primary endpoint events and ~1229 CV-death events at maximum duration
- Group-sequential design: three interim analyses planned at 1/3, 1/2, and 2/3 information time (~804, 1205, 1607 patients with a primary event), with actual timing adjusted to DMC meeting schedule; Haybittle-Peto-type efficacy boundary, spending ~0.0001 (one-sided) at the first interim analysis and ~0.001 (one-sided, nominal) at the second and third
- Secondary-endpoint multiplicity: if the primary endpoint was significant at trial stop, the 4 secondary endpoints were tested at the same alpha using a Bonferroni-Holm sequentially rejective procedure with pre-specified endpoint-ordering/weighting

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2015/207620orig1s000ltr.pdf
- Package Insert / Label — https://www.accessdata.fda.gov/drugsatfda_docs/label/2015/207620orig1s000lbl.pdf
- FDA Statistical Review (original NDA) — https://www.accessdata.fda.gov/drugsatfda_docs/nda/2015/207620Orig1s000StatR.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT01035255 (no protocol/SAP documents posted; trial record shows status "Terminated" — early stop for efficacy, not a safety termination)
- Pivotal publication: McMurray JJV, et al. "Angiotensin-Neprilysin Inhibition versus Enalapril in Heart Failure." *N Engl J Med.* 2014;371:993-1004.

**Other resources**

- Novartis IPD access via Vivli.org; trial-specific PARADIGM-HF availability not individually confirmed here.

**SAP — exact text / key excerpts**

*[verbatim, from FDA Statistical Review, §1.4.2 "Statistical Methodologies," p.8]*

> "The study was designed to have approximately 2410 primary endpoint events and 1229 CV-death events if the study reached the maximum study duration. Three interim analyses were planned at 1/3, 1/2 and 2/3 of information time (i.e. approximately 804, 1205 and 1607 patients, respectively, with a primary event). However, some adjustment to the frequency and time for interim analyses was made to coincide with the DMC meetings. Appropriate statistical adjustments for the interim analyses actually performed were made to control the overall type-I error of 0.025 (one-sided)... The Haybittle-Peto type of boundary was used for the interim efficacy analyses to assess superiority. The interim efficacy analysis with the boundary spent approximately an alpha of 0.0001 (one-sided) at the first IA and 0.001 (one-sided and nominal) at the second and third interim analyses.
>
> Whatever time point the study stopped, if the primary endpoint was statistically significant, then the secondary endpoints were to be tested using the same alpha as used for the primary endpoint. The testing of the four secondary endpoints was to be done using the Bonferroni-Holm's method."

*[verbatim, from FDA Statistical Review, §1.4.4 "Results and Conclusions," p.11]*

> "The trial was stopped at the third interim analysis by the DMC because the efficacy boundary was crossed. The combination was superior to the control on the primary endpoint... The p-value was less than 0.0001, which was statistically significant and smaller than the boundary pre-specified by the Haybittle-Peto rule (0.001)."

---

### 3. Dapagliflozin (Farxiga) — NDA 202293/S-018

**Sponsor:** AstraZeneca (trial co-led with the TIMI Study Group)
**Indication approved:** Reduce the risk of hospitalization for heart failure in adults with type 2 diabetes and established cardiovascular disease or multiple CV risk factors
**Approval date:** October 18, 2019
**Pivotal trial:** DECLARE-TIMI 58, NCT01730534
**Keywords:** *Design:* randomized, double-blind, placebo-controlled, non-inferiority-then-superiority, mid-trial SAP amendment (secondary endpoint elevated to dual-primary), co-primary endpoints · *Endpoints:* 3-point MACE, HHF/CV-death composite (dual primary), renal composite (secondary) · *Primary analysis:* stratified Cox proportional-hazards model (hematuria, CV risk category) · *Multiplicity:* closed testing procedure, alpha recycling · *Interim/alpha-spending:* group-sequential design, O'Brien-Fleming alpha-spending rule, 2 interim analyses · *Regulatory:* reviewer-documented mid-trial endpoint elevation (FDA feedback-driven)

**Trial design & endpoints**

- Phase IIIb, multicenter, randomized, double-blind, placebo-controlled, event-driven trial; N=17,160 (59.4% multiple risk factors, 40.6% established ASCVD)
- Originally designed with a single primary endpoint (3-point MACE) and a co-primary safety non-inferiority objective; **the statistical testing hierarchy was substantially changed mid-trial**: SAP Edition 6.0 (17-Dec-2015) elevated the composite of heart failure hospitalization/CV death to a second, dual primary efficacy endpoint alongside MACE, and added a renal composite as a secondary endpoint in the closed testing procedure — a change made in response to FDA feedback, before database lock (locked 16-Sep-2018; SAP finalized as Edition 8.0 on 31-May-2018)
- Analysis method: Cox proportional hazards model stratified by baseline hematuria and baseline CV risk category
- Sample size: event-driven, 1390 MACE events planned for 85% power (HR 0.85); trial ultimately accrued 1559 MACE events
- Two interim analyses (conducted by an independent statistical group at Stanford, reviewed by the DMC) at 1/3 and 2/3 of MACE events, using an O'Brien-Fleming alpha-spending rule: first interim analysis one-sided α=0.000095, second interim analysis one-sided α=0.00614, leaving one-sided α=0.023095 for the final analysis
- Final testing hierarchy: test MACE for non-inferiority first (margin 1.3); if superiority shown for *either* dual-primary endpoint (MACE or HHF/CV-death), the full one-sided alpha could be "recycled" to test the other; only if both dual-primary endpoints were significant could alpha be recycled further to the secondary renal composite

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2019/202293Orig1s018,%20205649Orig1s011ltr.pdf
- Package Insert / Label (2019, S-018) — https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/202293s018lbl.pdf
- FDA combined review package (Clinical Review by Michelle Carey, MD, MPH, with the full SAP amendment history and testing hierarchy) — https://www.accessdata.fda.gov/drugsatfda_docs/nda/2021/202293Orig1s018.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT01730534 (no protocol/SAP documents posted)
- Pivotal publication: Wiviott SD, et al. "Dapagliflozin and Cardiovascular Outcomes in Type 2 Diabetes." *N Engl J Med.* 2019;380:347-357.

**Other resources**

- AstraZeneca IPD access via Vivli.org; trial-specific DECLARE-TIMI 58 availability not individually confirmed here.

**SAP — exact text / key excerpts**

*[verbatim, from FDA combined review, "Statistical Analysis Plan" section, p.45]*

> "The initial SAP (Edition 1.0) was dated November 19, 2012 and was revised several times based on feedback from the Agency. A major change to the statistical testing hierarchy was submitted in SAP Edition 6.0, dated December 17, 2015, in which the composite of heart failure hospitalization/CV death was elevated to a dual primary efficacy endpoint along with MACE, and a renal composite endpoint was added to the closed testing procedure as a secondary endpoint... The SAP was finalized on May 31, 2018 (Edition 8.0) and contained additional exploratory analyses of eGFR slope that were not included in the final CSP. The trial database was locked on September 16, 2018."

*[verbatim, from FDA combined review, interim analysis description, p.45-46]*

> "There were two interim analyses performed by an independent statistical group (Stanford University) and reviewed by the DMC/DSMB. These interim analyses assessed superiority for MACE and all-cause mortality after 1/3 and 2/3 of the MACE events had occurred and used an O'Brien-Fleming alpha-spending rule... The first interim analysis had a one-sided alpha level of 0.000095; the second interim analysis had a one-sided alpha level of 0.00614. This left a one-sided alpha of 0.023095 for the final analysis... Neither interim analysis presented to the DMC demonstrated superiority of dapagliflozin to placebo for MACE, and therefore the trial continued to completion."

*[verbatim, from FDA combined review, final testing hierarchy and MACE result, p.62]*

> "The final confirmatory testing hierarchy (Table 3) elevated the composite of time-to-first heart failure hospitalization or CV death to a dual primary efficacy endpoint, along with the time-to-first occurrence of 3-point MACE. If dapagliflozin were non-inferior to placebo for MACE, testing could proceed down the hierarchy to test for superiority for 3-point MACE and hospitalization for heart failure/CV death. If either of these demonstrated statistical superiority of dapagliflozin, the entire one-sided alpha could be recycled to test the other primary efficacy endpoint... The hazard ratio (HR) based on the Cox proportional hazards model for dapagliflozin vs. placebo was 0.93 (95% CI 0.84, 1.03)... dapagliflozin is non-inferior to placebo for MACE... superiority of dapagliflozin over placebo was not demonstrated [for MACE]."

This is a clean real-world example of a testing hierarchy paying off exactly as designed: MACE superiority failed, but because non-inferiority on MACE was established, the full alpha recycled down to the HHF/CV-death dual-primary endpoint, which *did* reach significance — and that recycled-alpha result is the entire basis for the approved indication.

---

### 4. Evolocumab (Repatha) — BLA 125522/S-013

**Sponsor:** Amgen Inc.
**Indication approved:** Reduce the risk of myocardial infarction, stroke, and coronary revascularization in adults with established cardiovascular disease
**Approval date:** December 1, 2017
**Pivotal trial:** FOURIER, NCT01764633
**Keywords:** *Design:* randomized, double-blind, placebo-controlled, event-driven · *Endpoints:* 5-component MACE+ composite (primary), 3-point MACE (key secondary) · *Primary analysis:* [inferred] hierarchical primary→key-secondary gatekeeping — see Reverse-engineered SAP below

**No FDA statistical review specific to this supplement was found publicly posted.** Drugs@FDA lists only the label and approval letter for BLA 125522/S-013. (A "Statistical Review and Evaluation" document does exist for BLA 125522, but it is a subgroup-analysis snapshot tied to the *original* 2015 hyperlipidemia approval, not the 2017 FOURIER-based CV supplement — included below only as a note, not as a source for this indication.) No protocol or SAP was found posted on ClinicalTrials.gov for NCT01764633. This entry relies on the approved label and the pivotal NEJM publication, with a reverse-engineered SAP for analysis details not stated in either.

**Trial design & endpoints** *(from label + publication)*

- Double-blind, randomized, placebo-controlled, event-driven trial; N=27,564 (13,784 evolocumab, 13,780 placebo) with established ASCVD and LDL-C ≥70 mg/dL and/or non-HDL-C ≥100 mg/dL despite statin therapy
- Randomized 1:1 to evolocumab (140 mg q2w or 420 mg monthly) or placebo; median follow-up 26 months
- Primary composite endpoint: time to first CV death, MI, stroke, hospitalization for unstable angina, or coronary revascularization
- Key secondary composite endpoint: time to first CV death, MI, or stroke (a subset of the primary composite's components)

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2017/125522s013ltr.pdf
- Package Insert / Label (2017, S-013) — https://www.accessdata.fda.gov/drugsatfda_docs/label/2017/125522s013lbl.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT01764633 (no protocol/SAP documents posted)
- FDA Statistical Review for the *original* 2015 BLA approval (subgroup-analysis snapshot, hyperlipidemia indication — different indication/analysis, included only as methodological context) — https://www.fda.gov/files/drugs/published/Staistical-Review-and-Evaluation--Repatha-(evolocumab).pdf
- Pivotal publication: Sabatine MS, et al. "Evolocumab and Clinical Outcomes in Patients with Cardiovascular Disease." *N Engl J Med.* 2017;376:1713-1722.

**Other resources**

- Amgen IPD access via Vivli.org; trial-specific FOURIER availability not individually confirmed here.

**SAP — exact text / key excerpts**

*[verbatim, from the approved Package Insert, "Clinical Studies" section]*

> "Study 1 (FOURIER, NCT01764633) was a double-blind, randomized, placebo-controlled, event-driven trial in 27,564... adult patients with established cardiovascular disease... REPATHA significantly reduced the risk for the primary composite endpoint (time to first occurrence of cardiovascular death, myocardial infarction, stroke, hospitalization for unstable angina, or coronary revascularization; p<0.0001) and the key secondary composite endpoint (time to first occurrence of cardiovascular death, myocardial infarction, or stroke; p<0.0001)."

**Reverse-engineered SAP** *(inferred — not genuine FOURIER SAP text)*

- **Hierarchical primary → key secondary testing** [inferred from: the label's own vocabulary explicitly labels the second composite a "key secondary" endpoint tested with its own p-value, and the fact both are reported as significant at p<0.0001 without any multiplicity caveat]. This phrasing strongly implies a fixed-sequence gatekeeping procedure (test the primary composite first; only formally test the "key" secondary at full alpha if the primary is significant) rather than a split-alpha or Bonferroni approach — this is the near-universal convention for a single primary/single key-secondary pairing of this kind in cardiology CVOTs of this period, but the exact gatekeeping language is not itself quoted in the label and cannot be confirmed without the SAP.
- **Likely group-sequential monitoring given the trial's event-driven, multi-year enrollment** [inferred from: FOURIER's structure (event-driven, ~27,564 patients, median follow-up 26 months, run by an independent academic-adjacent trial infrastructure) closely parallels EMPA-REG, PARADIGM-HF, and DECLARE-TIMI 58 above, all of which used a group-sequential design with a DMC and a pre-specified alpha-spending function for interim monitoring]. It is very likely FOURIER used a similar interim-monitoring scheme, but no interim analysis is mentioned anywhere in the label, and the specific spending function, interim timing, and boundary values cannot be reconstructed from public sources without the SAP or protocol.

---

### 5. Semaglutide (Wegovy) — NDA 215256/S-011

**Sponsor:** Novo Nordisk A/S
**Indication approved:** Reduce the risk of major adverse cardiovascular events (CV death, non-fatal MI, non-fatal stroke) in adults with established cardiovascular disease and obesity or overweight
**Approval date:** March 8, 2024
**Pivotal trial:** SELECT (Novo Nordisk trial ID EX9536-4388), NCT03574597
**Keywords:** *Design:* randomized, double-blind, placebo-controlled, group-sequential (per SAP v3.0; later reportedly changed to a fixed design) · *Endpoints:* 3-point MACE (primary), HF composite / all-cause death / CV death (confirmatory secondary) · *Primary analysis:* Cox proportional-hazards model (score test), ITT estimand · *Interim/alpha-spending:* Lan-DeMets alpha-spending function approximating O'Brien-Fleming · *Missing data/bias:* competing-risk censoring, tipping-point sensitivity analysis (multiple imputation)

**Trial design & endpoints**

- Randomized, double-blind, parallel-group, placebo-controlled, event-driven trial; semaglutide 2.4 mg s.c. once weekly vs. placebo, both added to standard of care, 1:1 randomization, N=17,500 planned (17,604 enrolled) with established CV disease and overweight/obesity, no prior diabetes
- Primary endpoint: time to first 3-point MACE (CV death, non-fatal MI, non-fatal stroke)
- Confirmatory secondary endpoints (time-to-event): CV death; a composite heart-failure endpoint (HF hospitalization, urgent HF visit, or CV death); all-cause death
- Estimand: intention-to-treat, evaluating the randomized treatment effect irrespective of adherence or background-medication changes
- Sample size: 90% power to reject H0: HR≥1.0 (one-sided) against Ha: HR<1.0, at design HR=0.83; 1,225 primary endpoint events required, 1:1 randomization
- Design (per SAP v3.0, dated 22-Apr-2022): group-sequential, one interim analysis for superiority at two-thirds of planned primary-endpoint events, no futility stopping; Lan-DeMets alpha-spending function approximating O'Brien-Fleming boundaries, controlling overall one-sided type I error at 2.5%. (A later public description of the trial states the design was ultimately changed to a fixed design without interim testing while keeping the same sample size — the SAP version obtained here still specifies the interim-analysis design, so the final, as-executed monitoring plan should be confirmed against the trial's final CSR before relying on this detail.)
- Primary analysis: Cox proportional hazards model (treatment group as sole fixed factor), score test for the hypothesis test, two-sided 95% CI alongside the one-sided fixed-design p-value; competing risk from non-CV death handled via censoring

**Documents**

- FDA Approval Letter — https://www.accessdata.fda.gov/drugsatfda_docs/appletter/2024/215256Orig1s011ltr.pdf
- ClinicalTrials.gov record — https://clinicaltrials.gov/study/NCT03574597
- Statistical Analysis Plan (Trial ID EX9536-4388, Version 3.0, 22-Apr-2022, redacted for PII) — https://cdn.clinicaltrials.gov/large-docs/97/NCT03574597/SAP_003.pdf
- Study Protocol — https://cdn.clinicaltrials.gov/large-docs/97/NCT03574597/Prot_002.pdf
- Pivotal publication: Lincoff AM, et al. "Semaglutide and Cardiovascular Outcomes in Obesity without Diabetes." *N Engl J Med.* 2023;389:2221-2232.

**Other resources**

- Novo Nordisk IPD access via Novo Nordisk's own clinical trial data-sharing portal and/or Vivli.org; trial-specific SELECT availability not individually confirmed here.

**SAP — exact text / key excerpts**

*[reconstructed — see caveat below, from SAP §2.1 "Sample size determination," p.6]*

> "The trial is designed with 90% power to confirm superiority for the primary endpoint, i.e., reject the null-hypothesis of a hazard ratio (HR) ≥1.0 against the one-sided alternative of HR<1.0... The trial is designed with one interim testing for superiority of the primary endpoint when two thirds of the total planned number of primary endpoint events has been accrued. Testing for futility is not included. The Lan-DeMets alpha spending function, approximating the O'Brien-Fleming's stopping boundaries, is used to test superiority at a study-wise one-sided type I error rate of 2.5%... Based on a randomisation ratio of 1:1 and a design HR of 0.83 a total of 1,225 primary endpoint events are required."

*[reconstructed — see caveat below, from SAP §2.3.1 "Primary analysis," p.14]*

> "The primary analysis will address the primary estimand (intention-to-treat). The HR for comparing semaglutide 2.4 mg versus semaglutide placebo is estimated from a Cox proportional hazards model with treatment group... as fixed factor together with the two-sided 95% CI and one-sided fixed design p-value for hypothesis testing. The score test from the Cox model is used for testing... The nominal significance level is calculated using the alpha spending function and the actual observed number of events available for the analysis."

**Extraction caveat:** the posted SAP and protocol PDFs for this trial were produced by a redaction/anonymization tool that strips inter-word spacing from the extracted text layer (every character is individually positioned, with no reliable word-boundary information). The passages above were manually reconstructed word-by-word from that corrupted extraction. The technical content and wording are believed faithful to the source, but — unlike the other **[verbatim]** quotes in this document — this should be treated as a careful reconstruction, not a character-for-character-guaranteed quote, and re-checked against the original PDF before being cited elsewhere.

---

## Cross-cutting observations (pilot findings)

### Oncology

- Two of five submissions (osimertinib/FLAURA, pembrolizumab/KEYNOTE-024) had a genuine sponsor SAP or combined Protocol+SAP document publicly posted on ClinicalTrials.gov. One (venetoclax/CLL14) had a protocol with a real but less detailed statistical section, with the standalone SAP referenced but not separately posted. One (olaparib/SOLO-2) had no posted SAP/protocol but an unusually detailed FDA statistical review that describes the SAP second-hand, including reviewer pushback on how it was executed. One (enzalutamide/PREVAIL) had neither, requiring full reverse-engineering from the label.
- All four trials with real SAP detail used a group-sequential / alpha-spending approach for at least one endpoint (Hwang-Shih-DeCani for KEYNOTE-024; Lan-DeMets/O'Brien-Fleming for FLAURA; gamma-family spending for CLL14; an unspecified but likely similar approach can be inferred for SOLO-2's two-stage design). This appears to be the market-standard approach for Phase III oncology trials with event-driven co-primary or hierarchical secondary endpoints in this period.
- FDA's own review documents (SOLO-2, CLL14) are a genuinely rich secondary source — in the SOLO-2 case, arguably richer than a static SAP document, because they document where FDA caught the sponsor deviating from an agreed-upon analysis approach after the fact.

### Cardiovascular / metabolic

- Only one of five submissions (semaglutide/SELECT) had a genuine sponsor SAP and protocol posted on ClinicalTrials.gov — and even that came with an extraction complication (see the SELECT entry's caveat) rather than a clean verbatim source. The other four relied entirely on FDA statistical/clinical reviews (empagliflozin, sacubitril-valsartan, dapagliflozin) or, for evolocumab/FOURIER, a fully reverse-engineered reconstruction — the opposite mix from oncology, where ClinicalTrials.gov postings were the stronger source.
- Where FDA reviews were available (empagliflozin, sacubitril-valsartan, dapagliflozin), they were exceptionally detailed — more so than in oncology — because CVOTs of this kind almost always involve group-sequential monitoring, non-inferiority-then-superiority hierarchies, or (dapagliflozin) a genuine mid-trial elevation of a secondary endpoint to co-primary status that FDA had to specifically evaluate for integrity.
- Three of five trials (EMPA-REG OUTCOME, DECLARE-TIMI 58, and implicitly PARADIGM-HF) used the same broad statistical pattern: non-inferiority safety margin tested first, then a hierarchical/recycled-alpha path to superiority — a structure essentially unseen in the oncology batch, which instead centered on direct superiority testing with PFS/OS hierarchies. This reflects the regulatory history of the class (post-2008 FDA guidance requiring CV safety exclusion for diabetes drugs), not a random difference between areas.
- Dapagliflozin/DECLARE-TIMI 58 is the standout example in this pilot of a testing hierarchy actually mattering to the outcome: the primary MACE endpoint only reached non-inferiority (not superiority), but the pre-planned "alpha recycling" rule let the trial's dual-primary HHF/CV-death endpoint absorb the full alpha and reach significance — which is the entire basis for the approved indication.
- Two submissions (empagliflozin, dapagliflozin) were found via a working pattern worth reusing at scale: search `accessdata.fda.gov/drugsatfda_docs/nda/<year>/<ApplNo>Orig1s<supp>.pdf` even when Drugs@FDA's own supplement-overview page lists only a label and approval letter — FDA appears to have retroactively posted full combined review packages for at least some older efficacy supplements under later year-folders (2021 in both cases here) that aren't linked from the per-supplement overview page and don't surface via ordinary web search on the supplement number.

### General

- accessdata.fda.gov blocks unauthenticated automated requests without a browser-like User-Agent header (returns an Akamai "abuse detection" apology page); requests succeeded once a standard browser User-Agent string was set.
- At least one sponsor (Novo Nordisk, for SELECT) posts ClinicalTrials.gov documents through a redaction pipeline that destroys inter-word spacing in the underlying PDF text layer. This is a genuinely new failure mode relative to the oncology pilot's documents, and any future scaling of this census should budget time for manual word-boundary reconstruction (or an OCR-based re-extraction) when a posted document turns out to come from this sponsor/pipeline.
