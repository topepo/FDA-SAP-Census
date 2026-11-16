# Roflumilast (Daliresp) — NDA 022522

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf) · [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf) · [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000SumR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2011/022522s000lbl.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC3040135/)

Census entry: [`README.md`](../../README.md) line 46827. Pulmonary (COPD). Forest Research Institute (originally Nycomed/Altana). Approved 2011.

**Summary:** The census claim is confirmed for supportive Study M2-112 only: its pre-planned primary analysis of the co-primary exacerbation endpoint (frequency of moderate or severe exacerbations per patient per year, roflumilast 500 mcg vs placebo) was an unstratified Wilcoxon rank-sum test, p=0.451, with Poisson regression with overdispersion as a secondary analysis. FDA reported the Wilcoxon p-value in its table of pre-planned analyses but noted it "does not provide an exacerbation rate or rate ratio", and otherwise presented and relied on Poisson results. The pivotal trials (M2-124, M2-125) and M2-111 (as finally amended) used Poisson regression, not a rank test.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The claim (M2-112, Wilcoxon rank-sum, p=0.451) is correct [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=17) PDF p.17, p.27].
- Missing from the census: M2-111 was originally planned with the same Wilcoxon test; Amendments 5 and 6 (dated November 2005 and February 2006, around or after its December 2005 end) switched it to Poisson regression [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=108) PDF p.108]. In M2-111 the Wilcoxon test "reached statistical significance" while the Poisson primary analysis did not (p=0.129 in the statistical review; RR 0.865, P=0.1440 in the clinical review table) [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=115) PDF p.115; [statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=27) PDF p.27].
- The rank test here is on a count-derived outcome in a supportive trial; it is not the primary analysis of the approval-supporting trials.

Page tags are PDF page indices of the downloaded files (medr.txt bundles several reviews).

## M2-112 (RATIO)

### Design

- Roflumilast 500 mcg once daily vs placebo; ITT N=760 vs 753 (1513; clinical review says 1514 randomized) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=13) PDF p.13, p.27; [medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=110) PDF p.110].
- Randomization stratification: none stated for M2-112 ("In Study 111, but not in Study 112, the randomization was stratified by smoking status and use of inhaled corticosteroids pre-treatment") [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=16) PDF p.16].
- Double-blind, placebo-controlled, 4-week single-blind run-in, 52 weeks treatment; non-US, 159 centers in 14 countries [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=108) PDF p.108, p.110; [rennard_respres2011.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC3040135/)].
- Analysis population: ITT "defined as all randomized patients (primary)"; PP secondary [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=17) PDF p.17].

### Endpoint

- Co-primary: "Frequency of moderate or severe exacerbations per patient per year" and change (endpoint minus baseline) in post-bronchodilator FEV1 [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=117) PDF p.117].
- Moderate = requiring oral or parenteral glucocorticosteroids or, in M2-112 only, antibiotics; severe = hospitalization (death added post-protocol). Exacerbations not separated by one exacerbation-free day were merged [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=16) PDF p.16-17].
- Derivation of the per-patient value that was ranked (raw count vs count divided by time in study; handling of early withdrawals): Not stated in the documents consulted.
- Distributional remarks: Not stated.

### Hypothesis and contrast

- Roflumilast vs placebo. Sidedness and alpha for M2-112: Not stated explicitly (two-sided 0.05 is stated for the four 52-week studies' hierarchical testing in the results section [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=27) PDF p.27]).
- Estimand / intercurrent events: Not stated.

### Primary analysis method

- "unstratified Wilcoxon Rank Sum Test" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=17) PDF p.17]; called "Wilcoxon-Mann-Whitney test" in the results table footnote [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=27) PDF p.27].
- Ranked: per-patient exacerbation frequency (exact derivation Not stated); overall ranking, no strata. Score type, tie handling, exact vs asymptotic, continuity correction: Not stated.
- No model terms.
- Accompanying parametric (secondary) analysis: "A Poisson regression with overdispersion" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=17) PDF p.17]. Covariates for the M2-112 Poisson model: Not stated. For reference, the M2-124/125 primary model was Poisson with log link, offset log(time in study), terms treatment, country, smoking status, percent predicted FEV1, gender, age, with Pearson chi-square scale correction [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=15) PDF p.15]; the Applicant applied that model post hoc to M2-111/112 [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=27) PDF p.27].

### Effect estimate and interval

- None from the rank analysis: FDA notes the test "does not provide an exacerbation rate or rate ratio" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=27) PDF p.27]. Hodges-Lehmann: Not stated.
- From the secondary Poisson model (CSR): rate 0.857 vs 0.918, RR 0.934 (SE 0.075), 95% CI (0.798, 1.092), P=0.3901 (steroids and/or antibiotics definition); 0.474 vs 0.549, RR 0.864 (SE 0.090), P=0.1599 (steroids-only definition) [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=118) PDF p.118].

### Missing data and intercurrent events

- For the rank analysis: Not stated. M2-112 discontinuation: 29% roflumilast, 22% placebo (randomized 761 / 753; ITT 760 / 753; PP 514 / 536) [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=20) PDF p.20].

### Multiplicity

- "both primary endpoints tested simultaneously first, and if both are significant, the secondary endpoint (SGRQ) will then be tested" [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=18) PDF p.18].

### Sample size assumptions

- Not stated.

### Software and code

- Not stated. No code in the sources.

### Results as presented

- FDA statistical review Table 8 ("Pre-Planned Primary Analyses"): columns R500 rate (N), placebo rate (N), rate ratio, p-value, pooled rate ratio. The M2-112 row shows only N (760, 753) and p=0.451, with rate and ratio cells blank and the footnote on the Wilcoxon test [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=27) PDF p.27].

| Study | R500 rate (N) | Placebo rate (N) | Rate ratio | p-value | Method |
|---|---|---|---|---|---|
| 111 | 0.6 (567) | 0.7 (606) | 0.87 | 0.129 | Poisson |
| 112 | — (760) | — (753) | — | 0.451 | Wilcoxon-Mann-Whitney |
| 124 | 1.1 (765) | 1.3 (758) | 0.85 | 0.028 | Poisson |
| 125 | 1.2 (772) | 1.5 (796) | 0.82 | 0.004 | Poisson |

- CDTL table (post hoc, M2-124/125 definitions and model): M2-112 0.5 vs 0.5, RR 0.85, p=0.085; without the post hoc changes "the p-value in Study M2-112 would be 0.4514 rather than 0.085" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=47) PDF p.47-48].
- Clinical review shows only Poisson results for M2-112 "To be consistent with other trials reviewed" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=118) PDF p.118].
- Label: M2-111/M2-112 exacerbation rank results not presented (no match for "M2-112" or "Wilcoxon" in label.txt).

### Sensitivity and supportive analyses

- Poisson regression (secondary), above.
- Also non-significant: percentage with any exacerbation (Fisher's exact), number of exacerbations, time to first exacerbation (log-rank) [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=118) PDF p.118].

### FDA reviewer comments and reanalyses

- FDA did not use the rank result for effect-size comparison across trials; cross-trial tables use Poisson rates and ratios, with the post hoc harmonized Poisson analysis for M2-112 [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=47) PDF p.47].
- On M2-111's Wilcoxon result, the clinical reviewer: "because the method did not correct for subject heterogeneity, the results is considered not as realizable as that of Poisson regression" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=115) PDF p.115].
- The switch from Wilcoxon to Poisson came with M2-111 Amendments 5 and 6 and carried into M2-124/125 [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=108) PDF p.108].

## M2-111 (OPUS), briefly

- Final pre-planned primary exacerbation analysis: Poisson regression with overdispersion, with pre-treatment ICS and COPD history (bronchitis/emphysema) as added covariates [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=17) PDF p.17]. Not a rank analysis as finally specified; the Wilcoxon result is mentioned only as "results not shown" [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=115) PDF p.115].

### Verbatim specification excerpts

> "In Study 112, the primary analysis for the effect of roflumilast on frequency of moderate or severe exacerbations used an unstratified Wilcoxon Rank Sum Test. A Poisson regression with overdispersion was also performed as secondary analysis for the frequency of moderate or severe COPD exacerbations." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=17), PDF p.17]

> "* Pre-planned primary analysis was Wilcoxon-Mann-Whitney test, which does not provide an exacerbation rate or rate ratio." — [[statr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf#page=27), PDF p.27]

> "Mean rate of COPD exacerbations were analyzed primarily with non parametric testing (Wilcox-rank sum). Poisson regression was performed as secondary analysis. To be consistent with other trials reviewed, only results from Poisson regression are presented below in Table 21." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=118), PDF p.118]

> "Amendments 5 and 6 of M2-111 added many changes that were later used in later trials, including addition of pre bronchodilator FEV1 as co primary variable and using Poisson regression instead of Wilcoxon rank sum test for exacerbation rate analysis." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=108), PDF p.108]

> "Non parametric analysis with Wilcoxon rank sum test reached statistical significance (results not shown here, refer to Table 14 of CSR). However, because the method did not correct for subject heterogeneity, the results is considered not as realizable as that of Poisson regression." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=115), PDF p.115]

> "The p-value in Study M2-111 would be 0.218 rather than 0.129 and the p-value in Study M2-112 would be 0.4514 rather than 0.085." — [[medr.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf#page=48), PDF p.48]

### Implementation notes (inference)

- Inference: the ranked value was most likely each patient's exacerbation count divided by exposure time (in years), as the endpoint is named "per patient per year"; the sources do not confirm this. A programmer must decide between raw counts and annualized rates; with annualization, early withdrawals with an event get inflated rates and those without stay at zero.
- Most patients have 0 or 1 events (mean rate about 0.5-0.9 per year), so the data are dominated by ties; the Wilcoxon test then mainly compares the proportion with zero events. Use midranks with tie-corrected variance (`PROC NPAR1WAY WILCOXON`; `wilcox.test(..., exact = FALSE)`).
- The rank test gives no rate ratio, which is why FDA fell back on the Poisson model for presentation. If a rank test is required, pre-specify the accompanying estimator (e.g. Hodges-Lehmann, or a rate ratio from a count model as a supportive estimate).
- The opposite conclusions in M2-111 (Wilcoxon significant, Poisson not) show the two methods target different quantities; inference only, since the Wilcoxon numbers are not in the public documents.

### Sources consulted

- [FDA Statistical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000StatR.pdf) — fetched (statr.txt)
- [FDA Medical/Clinical Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000MedR.pdf) — fetched (medr.txt; includes CDTL and clinical reviews)
- [FDA Summary Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2011/022522Orig1s000SumR.pdf) — fetched (sumr.txt; no rank-test content)
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2011/022522s000lbl.pdf) — fetched (label.txt)
- Rennard et al., Respir Res 2011 (pooled M2-111/M2-112 re-analysis), [PMC3040135](https://pmc.ncbi.nlm.nih.gov/articles/PMC3040135/) via NCBI efetch — fetched (rennard_respres2011.txt; describes only the post hoc Poisson re-analysis)
- Calverley et al., AJRCCM 2007 (M2-112 primary publication, PMID 17463412) — abstract only (calverley2007_abstract.txt); full text failed (not in PMC; publisher page blocked)
- FDA PADAC April 2010 briefing documents — failed (URL not found via web archive)
- Sponsor protocol / SAP for M2-112 — not public
