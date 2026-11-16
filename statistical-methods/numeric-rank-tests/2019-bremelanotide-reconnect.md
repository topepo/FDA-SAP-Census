# Bremelanotide (Vyleesi) — NDA 210557

Part of the [numeric rank tests deep dive](README.md). Role of the rank test: pre-specified primary analysis.

**Source documents:** [FDA Multi-Discipline Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) · [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) · [PMC full text](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/)

Census entry: [`README.md`](../../README.md) line 38231. Women's health (hypoactive sexual desire disorder, HSDD). AMAG Pharmaceuticals (trials run by Palatin Technologies). Approved 2019.

**Summary:** In two identical 24-week trials (BMT-301 and BMT-302, "RECONNECT"), bremelanotide 1.75 mg as needed was compared with placebo on two co-primary endpoints, change from baseline to end of study (last double-blind visit) in FSFI desire domain score and in FSDS-DAO Question 13 score, each by an unadjusted two-sided Wilcoxon rank-sum test on the change score in the MITT population. Both endpoints were significant in both trials (FSFI-D p=0.0002 and <0.0001; FSDS-DAO Q13 p<0.0001 and 0.0053). Results are shown as mean (SD) change, median change, and a difference in means; no rank-based estimate or CI is given.

**Census discrepancies** (errors found in this submission's entry in [`../../README.md`](../../README.md)):

- The census: "1,247 women randomized across both trials (635 to bremelanotide, 632 to placebo)". 1,267 were randomized (635 + 632); 1,247 is the safety population [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.127, Table 19; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) §14].
- The census: "no formal alpha-splitting or fixed-sequence gatekeeping identified for the SSE key secondary". The review describes a prespecified hierarchy: both co-primaries at two-sided 0.05, then the key secondary (SSE), then 12 ranked secondary endpoints, stopping at the first non-significant result [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125].
- The census says missing-data handling within the primary MITT analysis is not specified. The review states that subjects with a missing change value were excluded and that the end-of-study value is the last double-blind visit whenever it occurred [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125, p.133; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) §14]; the publication calls this a last-observation-carried-forward approach.
- The census's method statement (unadjusted two-sided Wilcoxon rank-sum, MITT) is confirmed.

## Studies BMT-301 and BMT-302 (identical design and analysis)

### Design

- Randomized 1:1: 301: bremelanotide 327, placebo 326; 302: 308, 306 [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.127, Table 19].
- Randomization: interactive voice response system, "blocked by country" (United States, Canada) [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.120]; the publication says permuted blocks by country [[Kingsberg](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/) 2019]. No other stratification factor stated.
- Double-blind, placebo-controlled; 4-week screening, 4-week single-blind placebo baseline period, 24-week double-blind treatment, then 52-week open-label extension [[Kingsberg](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/) 2019; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) §14].
- Primary population: MITT = randomized, at least one dose of double-blind drug, at least one double-blind follow-up visit. MITT N: 301: 314 / 316; 302: 282 / 290. Evaluable for FSFI-D change: 313 / 315 and 282 / 288; for FSDS-DAO Q13: 313 / 314 and 282 / 285 [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.124, p.127, p.132, p.136; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) Tables 2-3].

### Endpoint

- Co-primary 1: change from baseline to end of study (EOS) in FSFI desire domain = 0.6 × (Q1 + Q2), each item 1 to 5, range 1.2 to 6.0, 4-week recall; higher is better [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) §14; [MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.110].
- Co-primary 2: change from baseline to EOS in FSDS-DAO Question 13 ("Bothered by low sexual desire"), 0 (never) to 4 (always), 30-day recall; lower is better [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) §14].
- Baseline: value at the randomization visit (Visit 3), after the single-blind placebo month [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125 (EMITT description); [Kingsberg](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/) 2019]. EOS: the patient's last study visit in the double-blind period; Week 24 for completers, but possibly as early as 4 weeks after randomization [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) §14; [MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.133].
- Variable type: discrete ordinal scores (FSFI-D change in steps of 0.6; Q13 change integer -4 to 4). "The most frequent change in desire from baseline is zero in both treatment groups" [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.132]. The reviewer notes that normality "may not be appropriate" for the distress change [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.137].

### Hypothesis and contrast

- Bremelanotide vs placebo; two-sided alpha 0.05 for each co-primary; both must be significant [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125].
- Null/alternative: Not stated. Estimand: Not stated.

### Primary analysis method

- Test name as given: "Wilcoxon rank-sum test" [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125]; "unadjusted Wilcoxon rank-sum test" [[Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) Tables 2-3 footnote].
- What is ranked: the change from baseline to EOS, pooled over the two arms (implied by the two-sample test). No stratification, no covariates ("unadjusted"). Tie handling, exact vs asymptotic p-value, continuity correction: Not stated.
- Model terms: none (no model fitted in the primary analysis).
- The key secondary endpoint (change in number of satisfying sexual events) used the same test [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125].
- No parametric primary model. A general linear model was used only in the applicant's multiple-imputation sensitivity analysis [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125].

### Effect estimate and interval

- Mean change (SD) and median change per arm, and "Mean Difference" between arms; no confidence interval and no Hodges-Lehmann estimate in the primary tables [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) Tables 23 and 27; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) Tables 2-3 (label omits the mean difference)].
- Subgroup forest plots used differences in means with 95% CIs "computed from two sample t-tests with unequal variance", with Wilcoxon rank-sum p-values within subgroups [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.140].

### Missing data and intercurrent events

- Primary analysis: subjects with missing data on a co-primary endpoint were excluded from the analysis of that endpoint; no imputation. Because EOS is the last double-blind visit, early dropouts contribute their last observed score [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125, p.133]. The publication describes this as "the last-observation-carried-forward approach" [[Kingsberg](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/) 2019].
- Excluded from MITT (no double-blind follow-up visit): 301: 13 bremelanotide, 10 placebo; 302: 26 and 16. Additional exclusions for missing baseline or EOS values: FSFI-D: 1 + 1 in 301 and 2 placebo in 302; Q13: 1 + 2 in 301 and 5 placebo in 302 [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.132-133, p.136-137].
- Completion of the double-blind period: 301: 58.1% vs 84.0%; 302: 56.2% vs 71.6%; discontinuation for adverse events about 18% vs 1 to 3% [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) Tables 19-20, p.127-128].

### Multiplicity

- Both co-primary endpoints tested first at two-sided 0.05; both needed for success; then the key secondary endpoint and 12 ranked secondary endpoints in a fixed hierarchy, stopping at the first non-significant result. SSE was not significant, so all later endpoints are exploratory [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125].
- The publication states for the sample size: "As there were two primary endpoints, the inference threshold was 0.025" [[Kingsberg](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/) 2019]. This differs from the review's description of 0.05 per endpoint; the SAP itself was not available.

### Sample size assumptions

- By simulation from the observed phase 2 distributions of the endpoints (not a normal-theory formula). Predicted mean treatment differences 1.0 for FSFI-D and -0.43 for FSDS-DAO item 13; 450 evaluable patients gave 100% power for both; 480 evaluable gave 93.8% power for the key secondary; about 550 randomized per study [[Kingsberg](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/) 2019].

### Software and code

Not stated.

### Results as presented

FDA reviewer tables (MITT; p from Wilcoxon rank-sum) [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) Table 23 p.132; Table 27 p.136]. Layout: columns BMT 1.75 and PBO within each study with N; rows Baseline mean (SD), Mean change (SD), Median change, Mean Difference, P-value.

| Endpoint | Statistic | 301 BMT | 301 PBO | 302 BMT | 302 PBO |
|---|---|---|---|---|---|
| FSFI-D | N | 313 | 315 | 282 | 288 |
| | Baseline mean (SD) | 2.09 (0.85) | 2.02 (0.80) | 2.04 (0.83) | 2.05 (0.83) |
| | Mean change (SD) | 0.54 (1.11) | 0.24 (0.99) | 0.63 (1.04) | 0.21 (0.92) |
| | Median change | 0.6 | 0 | 0.6 | 0 |
| | Mean difference | 0.30 | | 0.42 | |
| | p | <0.001 (label: 0.0002) | | <0.001 (label: <0.0001) | |
| FSDS-DAO Q13 | N | 313 | 314 | 282 | 285 |
| | Baseline mean (SD) | 2.86 (0.95) | 2.84 (0.87) | 2.86 (0.94) | 2.93 (0.88) |
| | Mean change (SD) | -0.73 (1.20) | -0.36 (1.08) | -0.71 (1.14) | -0.42 (1.05) |
| | Median change | -1 | 0 | -1 | 0 |
| | Mean difference | -0.37 | | -0.29 | |
| | p | <0.001 (label: <0.0001) | | 0.005 (label: 0.0053) | |

- Label Tables 2 and 3 (one per endpoint; MITT): rows Mean Baseline (SD); Mean Change from Baseline (SD); Median Change from Baseline; p-value (one per study, footnoted "p-value from unadjusted Wilcoxon rank-sum test"). No treatment difference row and no CI. A footnote explains N as MITT patients with an evaluable change.
- Figures: histograms of the change distribution by arm; mean change by study week; label Figures 2-3 show percentages of MITT patients who completed 24 weeks and achieved each level of improvement (cumulative responder-type display) [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.132-139; [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) §14].
- Key secondary (SSE within 16 hours of dosing), same test: mean difference 0.07 and 0.06; p=0.76 and 0.70; medians 0 in all arms [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) Table 30].

### Sensitivity and supportive analyses

FDA reviewer, all randomized (N 327 / 326 and 308 / 306), single-value imputation for missing baseline or EOS, Wilcoxon rank-sum, nominal p [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) Tables 24 and 28]:

| Endpoint | Imputation for missing change | 301 diff; p | 302 diff; p |
|---|---|---|---|
| FSFI-D | 0 | 0.28; <0.001 | 0.38; <0.001 |
| FSFI-D | -0.6 | 0.28; <0.001 | 0.36; <0.001 |
| FSFI-D | -1.2 | 0.27; 0.001 | 0.35; <0.001 |
| FSFI-D | Worst case (worst score for BMT, best for PBO) | 0.04; 0.037 | -0.10; 0.032 |
| Q13 | 0 | -0.35; <0.001 | -0.26; 0.010 |
| Q13 | +1 | -0.35; <0.001 | -0.24; 0.024 |
| Q13 | MI, BMT shifted by 1 (linear regression, Rubin's rules) | -0.32; <0.001 | -0.22; 0.002 |
| Q13 | MI, BMT shifted by 2.1 | -0.28; 0.001 | -0.11; 0.048 |
| Q13 | Worst case | -0.15; 0.006 | 0.14; 0.824 |

- Multiple imputation (Q13): 20 imputations; linear regression imputation model with treatment group, baseline distress, age group, injection site, disease group, race and ethnicity, and baseline desire and FSFI and FSDS total scores; analysis by the same linear regression, combined with Rubin's rules (not a rank test); placebo under MAR, bremelanotide shifted by a constant [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.137].
- Completers vs non-completers (Wilcoxon): FSFI-D completers 0.45 and 0.64 (p<0.001); non-completers 0.08 (p=0.810) and -0.02 (p=0.728). Q13 completers -0.56 and -0.46 (p<0.001); non-completers -0.03 and 0.02 (not significant) [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) Tables 25 and 29].
- 50% trimmed mean on the randomized population (all without Week 24 data placed in the bottom half of their arm; top halves compared), p from a permutation test with 500,000 permutations: FSFI-D 0.22 (p=0.075) and 0.41 (p<0.001); Q13 -0.31 (p=0.025) and -0.23 (p=0.090) [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.134, p.139].
- MMRM under MAR: same conclusions (numbers not shown in the review; the publication's Figure 1 reports MMRM estimates) [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.135, p.139].
- Applicant: EMITT population with screening value as baseline if Visit 3 missing and baseline carried forward if no post-baseline value; multiple imputation with a general linear model [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.125].
- Applicant exploratory responder analyses in MITT (FSFI-D change of 0.6; Q13 change of -1); FDA repeated them with 1.2 for FSFI-D and -2 for Q13, and with a composite definition requiring completion of the double-blind period [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.145].

### FDA reviewer comments and reanalyses

- The applicant's primary analysis "was replicated"; "highly significant in favor of BMT for both studies (p<0.001), though the magnitude of effect is not large" [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.132].
- Wilcoxon chosen for the single-imputation sensitivity analyses "as it is less affected than the mean by the large outliers produced by the imputation" [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.133].
- Statistical issue: EOS could occur any time after baseline, with much higher dropout on bremelanotide; completer/dropout, trimmed mean and responder analyses were added [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.226].
- Monthly recall for an as-needed drug would bias toward the null [[MDR](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) p.226].

### Verbatim specification excerpts

Quotes from the review are from the decoded text file `mdr_decoded.txt` (see Sources).

> "The coprimary and key secondary endpoint were analyzed using a Wilcoxon rank-sum test, with the MITT population used in the primary analysis." — [[mdr_decoded.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf), p.125]

> "All endpoints were tested at two-sided ɲ=0.05. The coprimary endpoints were tested first, and both needed to be significant to test the secondary endpoints." — [[mdr_decoded.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf), p.125]

> "Subjects with missing data on one of the coprimary endpoints were excluded from the primary efficacy analyses of that endpoint." — [[mdr_decoded.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf), p.125]

> "The modified intent-to-treat (MITT) population consisted of all randomized subjects who received at least one dose of double-blind study drug and have at least one double-blind follow- up visit. The primary efficacy analysis uses the MITT population." — [[mdr_decoded.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf), p.124]

> "The EOS visit depended on how long a patient remained in the study and could occur 4 weeks after randomization (Week 12) or 24 weeks after randomization (Week 32)." — [[mdr_decoded.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf), p.133]

> "The Wilcoxon rank-sum test was selected for the sensitivity analyses as it is less affected than the mean by the large outliers produced by the imputation." — [[mdr_decoded.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf), p.133]

> "All individuals with missing data at the end of the 24-week double-blind treatment period were assumed to be in the bottom 50% of efficacy results within a trial arm." — [[mdr_decoded.txt](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf), p.134]

> "p-value from unadjusted Wilcoxon rank-sum test." — [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf), Table 2 footnote]

> "EOS is defined as the patient’s last study visit during the double-blind treatment period. For patients who completed the double-blind treatment period, the EOS visit occurred at Week 24." — [[label.txt](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf), §14]

> "The primary efficacy analysis used the last-observation-carried-forward approach for primary and secondary endpoints in the modified intent-to-treat population, which was defined as all patients in the safety population who had one or more double-blind follow-up visits." — [[kingsberg2019.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/), Methods]

> "Sample sizes were based on simulations from the observed distributions of the coprimary and key secondary endpoints in patients with hypoactive sexual desire disorder (with and without arousal) in a phase 2 study." — [[kingsberg2019.txt](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/), Methods]

### Implementation notes (inference)

- Inference: the primary analysis is a plain two-sample Wilcoxon-Mann-Whitney test on change scores: SAS `PROC NPAR1WAY WILCOXON; CLASS trt; VAR chg;` or R `wilcox.test(chg ~ trt)`. With a 9-level (Q13) or roughly 9-level (FSFI-D, steps of 0.6) change score, ties are massive, so the normal approximation with tie-corrected variance (midranks) is what software will use; exact p-values are impractical at N about 600. Whether a continuity correction was applied is unknown (SAS applies one by default for two samples; R applies one by default), and it has negligible effect at these sample sizes.
- "Unadjusted" means no stratification by country (the randomization blocking factor) and no baseline covariate; baseline enters only through the change score.
- The displayed "difference" is a difference of arithmetic means, and the medians (0.6 vs 0; -1 vs 0) are single steps on the scale. A Hodges-Lehmann estimate on such tied data would be 0 or one scale step; a programmer wanting a rank-consistent effect measure could report the Mann-Whitney probability P(X>Y) + 0.5 P(X=Y) instead.
- The "LOCF" label in the publication and the "excluded if missing" description in the review are consistent if EOS is derived as the last available double-blind visit value: there is nothing to carry forward for patients with no post-baseline visit, and they are outside MITT.
- For the FDA trimmed-mean analysis, the permutation test (500,000 resamples) must re-apply the trimming within each permuted arm; the review does not give further detail.
- The multiple-imputation sensitivity analyses were analyzed parametrically (linear regression with Rubin's rules), so the sources give no precedent for combining a rank test across imputations.

### Sources consulted

- [FDA Multi-Discipline Review](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2019/210557Orig1s000MultidisciplineR.pdf) — fetched. The text layer of most pages is glyph-ID encoded (body text in a Calibri subset; table text in a second font with a constant offset of 29 code points). `mdr.txt` is the raw `pdftotext -layout` output; `mdr_decoded.txt` is the same text after decoding with `scripts/decode_calibri.py` (whole file) and `scripts/decode_plus29.py` (lines 5300-7340, the efficacy section). In decoded tables, parentheses and "=" were lost by the PDF extraction (e.g. "N 313", "0.54 1.11" for "0.54 (1.11)"); a few symbols remain undecoded (e.g. "ɲ" for alpha).
- [Label](https://www.accessdata.fda.gov/drugsatfda_docs/label/2019/210557s000lbl.pdf) — fetched (label.txt)
- Kingsberg 2019, Obstet Gynecol, [PMC6819021](https://pmc.ncbi.nlm.nih.gov/articles/PMC6819021/) via Europe PMC full-text XML — fetched (kingsberg2019.xml, kingsberg2019.txt). Supplementary appendices (links.lww.com) not fetched.
- ClinicalTrials.gov API v2 for [NCT02333071](https://clinicaltrials.gov/study/NCT02333071), [NCT02338960](https://clinicaltrials.gov/study/NCT02338960) — fetched; no protocol or SAP posted
- Sponsor SAP — not publicly available; no standalone FDA statistical review exists for this NDA
