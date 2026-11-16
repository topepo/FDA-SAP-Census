# Rank-test Notes

## Wilcoxon signed-rank test 

AKA Wilcoxon-Mann-Whitney test, Wilcoxon signed-rank test (paired samples)

Two groups (independent or paired) via

Trials: 

- 2011-clobazam-ov1012-ov1002
- Deferiprone (Ferriprox) — NDA 21825
- Roflumilast (Daliresp) — NDA 022522
- 2011-roflumilast-m2-112
- 2012-lomitapide-up1002.
- Mipomersen sodium (Kynamro) — NDA 203568
- Flibanserin (Addyi) — NDA 22526
- Benralizumab (Fasenra) — BLA 761070
- Cannabidiol (Epidiolex) — NDA 210365
- Fremanezumab-vfrm (Ajovy) — BLA 761089
- Bremelanotide (Vyleesi) — NDA 210557
- Triheptanoin (Dojolvi) — NDA 213687
- Cenobamate (Xcopri) — NDA 212839
- Ganaxolone (Ztalmy) — NDA 215904
- Garadacimab-gxii (Andembry) — BLA 761367
- Plozasiran (Redemplo) — NDA 219947

> the co-primary endpoint "change from baseline in number of satisfying sexual events (SSE) standardized to 28 days" was tested by a Wilcoxon rank-sum test stratified by pooled center, on change from baseline, in the full analysis set with LOCF.

> ANCOVA adjusting for center and baseline value (Wilcoxon rank-sum used where normality assumptions failed)
 
> FDA reviewer additionally ran post-hoc Wilcoxon tests on FSFI desire and FSDS-R item 13 because the changes were not normally distributed.

> Each benralizumab regimen (Q4W, Q8W) was compared with placebo on percent reduction from baseline in final OCS dose using an unstratified Wilcoxon rank-sum test, with a Hodges-Lehmann location shift and asymptotic (Moses) 95% CI, and a Hochberg adjustment over the two comparisons.

> The primary analysis was an unstratified Wilcoxon rank-sum test with a Hodges-Lehmann (HL) median difference and "approximate" 95% CI.
>
> For 1414, each dose vs placebo is a separate two-sample test

> The SAP specified ANCOVA on change in monthly average migraine/headache days, with a pre-specified switch: if the Shapiro-Wilk test on the ANCOVA residuals had p ≤ 0.01, an unstratified, unadjusted two-sample Wilcoxon rank-sum test (SAS NPAR1WAY, normal-approximation p-value), run separately for each active arm vs placebo, became the primary analysis and ANCOVA became supportive. The switch fired in both trials

> two co-primary endpoints, change from baseline to end of study (last double-blind visit) in FSFI desire domain score and in FSDS-DAO Question 13 score, each by an unadjusted two-sided Wilcoxon rank-sum test on the change score in the MITT population.

> a within-patient Wilcoxon signed-rank test on annualized major-clinical-event (MCE) rates, pre- vs post-triheptanoin, specified in the UX007-CL202 SAP as the nonparametric alternative to a paired t-test "when the normality assumption is questionable". It was not the basis of approval

> Study C013 (200 mg vs placebo): the reported primary p-value is from an unadjusted two-sample Wilcoxon rank-sum test; the SAP listed a sequence of four candidate models (ANCOVA, log ANCOVA, rank ANCOVA, rank ANCOVA on log data) chosen by diagnostics, and FDA's statistician called the primary analysis "ambiguous".

> percent change from baseline in 28-day major motor seizure frequency over the 17-week double-blind phase using an unstratified two-sample Wilcoxon rank-sum test (SAS PROC NPAR1WAY, `wilcoxon` option).
>
> The SAP code has no EXACT statement

> time-normalized number of HAE attacks per month over the 6-month treatment period using an unstratified two-sided Wilcoxon rank-sum test at alpha 5% (p<0.001). No rank-based effect estimate was specified
>
> No stratification (despite stratified randomization), no covariates.

> The primary analysis was an unstratified Wilcoxon rank-sum test with the Hodges-Lehmann (HL) location shift and 95% CI (SAS PROC NPAR1WAY, HL option), run on each of 100 multiply imputed datasets (placebo-washout pattern-mixture imputation) and combined with Rubin's rules plus a modified Mogg-Mehrotra macro.

## Median test

Trials: Deferiprone (Ferriprox) — NDA 21825 

## Kolmogorov-Smirnov

Trials: 

- Deferiprone (Ferriprox) — NDA 21825 
- Mipomersen sodium (Kynamro) — NDA 203568

## non-parametric stratified rank ANCOVA/ANOVA

Trials: 

- 2011-ezogabine-restore
- Mirabegron (Myrbetriq) — NDA 202611
- Perampanel (Fycompa) — NDA 202834
- Teduglutide (Gattex) — NDA 203441
- Ospemifene (Osphena) — NDA 203505
- Riociguat (Adempas) — NDA 204819
- Droxidopa (Northera) — NDA 203202
- Pirfenidone (Esbriet) — NDA 22535
- Patiromer (Veltassa) — NDA 205739
- Eteplirsen (Exondys 51) — NDA 206488
- Cannabidiol (Epidiolex) — NDA 210365
- Cenobamate (Xcopri) — NDA 212839
- Sofpironium (Sofdra) — NDA 217347
- Tofersen (Qalsody) — NDA 215887

> a rank analysis of covariance (ANCOVA) with the rank of the percentage change in monthly total partial seizure rate as a dependent measure and the rank of baseline monthly seizure rate as a covariate and treatment and center as factors in the model. The dose response was studied by using appropriate contrasts in the ANCOVA according to a closed test procedure. 

> The primary analysis was a rank ANCOVA: percent change and baseline seizure frequency were ranked separately, then ANCOVA was fitted to the ranked percent change with treatment and pooled country as factors and ranked baseline as covariate.
> 
> Dose-response trend: "a linear contrast using the ranked ANCOVA"

> Pairwise treatment comparisons used a rank ANCOVA adjusting for baseline PN consumption level and baseline weekly PN volume,

> a parametric ANCOVA, with a rank-based fallback if ANCOVA assumptions were "severely violated". 

> The SAP made ANCOVA primary unless the Shapiro-Wilk test on the ANCOVA residuals was significant, in which case a stratified Wilcoxon test became the formal test.

> The SAP specified ANCOVA adjusting for baseline, with a switch to a "non-parametric model using rank statistics adjusted for the OHSA Item 1 at Baseline" if visual inspection of diagnostic plots showed assumption violations. 

> the primary endpoint, absolute change from baseline in percent predicted FVC, was analyzed by a rank ANCOVA: standardized ranks (rank/(N+1), midranks for ties) of the change as outcome and of baseline %FVC as covariate

> Change in serum potassium from Part B baseline was ranked and the ranks analyzed in a linear model with treatment and the two binary randomization strata; the treatment effect on mean ranks was tested with a two-sided t-test.
> 
> changes from baseline serum potassium were ranked, and the treatment groups were compared using an ANOVA model with strata used at randomization ... included as covariates and a treatment indicator. ... the difference between the mean ranks was tested using a two-sided t-test

> The SAP-specified primary analysis was "ANCOVA for ranked data" with treatment (3 levels) as a fixed effect and baseline value and time since DMD diagnosis as covariates. 

> Pre-specified sensitivity analyses included ANCOVA on rank-transformed percent change (baseline and age group as covariates)

> Study C017 (100/200/400 mg vs placebo): rank ANCOVA, i.e., a linear model on the ranked percent change with ranked baseline seizure rate and treatment group as the only terms, with a fixed-sequence test of 200, then 400, then 100 mg vs placebo.
>
> Ties: "handled using the default option in SAS".

> planned as an ANCOVA, switching to a rank-transformed ANCOVA if a Shapiro-Wilk test rejected normality in either arm. Normality was rejected (p<0.0001 in each arm of each trial), so the primary analysis was an ANCOVA on the within-subject "difference of ranks" (EOT rank minus baseline rank, each a median of three visit-wise ranks) with treatment, baseline rank, and analysis center, fitted to 20 multiply imputed datasets.
>
> FDA added an analysis of the "ranks of the differences" (rank the raw change scores)

> the ranks were analyzed by ANCOVA in each of 100 imputed datasets and the treatment estimates combined with Rubin's rules (PROC MIANALYZE).
>
> Model terms: treatment (2 levels), baseline ALSFRS-R total score (continuous, raw, not ranked), baseline disease duration since symptom onset (continuous, raw, not ranked), riluzole or edaravone use (3 levels)

## Hodges-Lehmann median difference

Trials: 

- Perampanel (Fycompa) — NDA 202834
- Riociguat (Adempas) — NDA 204819
- Patiromer (Veltassa) — NDA 205739
- Telotristat ethyl (Xermelo) — NDA 208794
- Benralizumab (Fasenra) — BLA 761070
- Cannabidiol (Epidiolex) — NDA 210365
- Inotersen (Tegsedi) — NDA 211172
- Afamelanotide (Scenesse) — NDA 210797
- Crizanlizumab-tmca (Adakveo) — BLA 761128
- Ganaxolone (Ztalmy) — NDA 215904
- Sotatercept-csrk (Winrevair) — BLA 761363
- Plozasiran (Redemplo) — NDA 219947

> The effect size was reported separately as a Hodges-Lehmann median difference with 95% CI.

> The effect size was a Hodges-Lehmann difference in median change (placebo minus patiromer)

> Effect size was the Hodges-Lehmann shift with 97.5% (TELESTAR) or 95% (TELECAST) confidence limits.

> a Hodges-Lehmann location shift and asymptotic (Moses) 95% CI
>
> "asymptotic Hodges-Lehmann estimation, together with associated 95% CI and p-value"

> a Hodges-Lehmann (HL) median difference and "approximate" 95% CI.

> a van Elteren test with Hodges-Lehmann estimates as Sensitivity Analysis 1

> A Hodges-Lehmann shift estimate with 95% CI was added outside the SAP (by the Applicant for CUV039, by the FDA reviewer for CUV029).

> Effect size was reported as arm medians plus a Hodges-Lehmann median difference with 95% CI. High dose: medians 1.63 vs 2.98, HL -1.01 (-2.00, 0.00), p=0.010

> The effect was reported as the Hodges-Lehmann location shift with an asymptotic 95% CI: -27.1% (-47.9, -9.5), p=0.0036.

> a Hodges-Lehmann (HL) location shift and 95% CI.
>
> Result: HL shift 40.8 m (ASE 6.8), 95% CI 27.5 to 54.1, p < 0.001.

> "As an extension to the Wilcoxon rank-sum test, the Hodges-Lehmann method will be used to estimate the median difference and its corresponding 95% CI"
>
> run on each of 100 multiply imputed datasets ... and combined with Rubin's rules

## Kruskal-Wallis test

Two arms, so the same as an asymptotic Wilcoxon rank-sum test without continuity correction.

Trials:

- Afamelanotide (Scenesse) — NDA 210797

> Both used an unstratified Kruskal-Wallis test on the per-subject totals (two arms, so equivalent to an asymptotic Wilcoxon rank-sum test without continuity correction), two-sided 0.05, observed cases only.
>
> For one secondary endpoint (photoprovocation) the Applicant reported "a continuity-corrected asymptotic Wilcoxon test" instead, which FDA flagged as inconsistent

## Stratified Wilcoxon rank-sum / van Elteren test

Trials:

- Flibanserin (Addyi) — NDA 22526
- Riociguat (Adempas) — NDA 204819
- Telotristat ethyl (Xermelo) — NDA 208794
- Inotersen (Tegsedi) — NDA 211172
- Crizanlizumab-tmca (Adakveo) — BLA 761128
- Eplontersen (Wainua) — NDA 217388

> a Wilcoxon rank-sum test stratified by pooled center, on change from baseline, in the full analysis set with LOCF.

> The SAP made ANCOVA primary unless the Shapiro-Wilk test on the ANCOVA residuals was significant, in which case a stratified Wilcoxon test became the formal test.

> Each telotristat dose (250 mg, 500 mg tid) was compared with placebo by a "blocked 2-sample Wilcoxon rank sum" test stratified by the randomization stratum (baseline u5-HIAA ≤ULN / >ULN / unknown); the label calls this a van Elteren test.
>
> Ranking scope, score type, stratum weights, tie handling: Not stated beyond the "van Elteren" label.

> a van Elteren test with Hodges-Lehmann estimates as Sensitivity Analysis 1

> Each dose was compared with placebo by a stratified Wilcoxon rank-sum test (strata: hydroxyurea use x prior-year VOC category, 4 strata), tested in fixed sequence (high dose first) at alpha 0.05.

> The SAP made a stratified Wilcoxon rank-sum test the contingent analysis if a Shapiro-Wilk test of the ANCOVA residuals was significant at 0.01. For mNIS+7 the trigger fired (p<0.01, driven by one subject with a change of -80.6) and the applicant supplied the stratified Wilcoxon result ("rank diff = -9.48 with p<0.0001"). FDA nevertheless treated the ANCOVA ... as the confirmed primary result
>
> Strata: "4 quartiles levels of the propensity scores (<=Q1, >Q1 and <= Median, > Median and <=Q3, > Q3)"

## Aligned rank stratified Wilcoxon test

Trials:

- Sotatercept-csrk (Winrevair) — BLA 761363

> The analysis was an Aligned Rank Stratified Wilcoxon (ARSW) test with the two randomization factors as strata, with a Hodges-Lehmann (HL) location shift and 95% CI.
>
> "the endpoint values are first aligned across the randomization strata using the stratum-level Hodges-Lehmann location shift estimates, and the aligned values are then analyzed using a Wilcoxon rank sum test"

## Joint rank test

Deaths and the numeric endpoint are ranked together; the ranks are then analyzed by ANCOVA.

Trials:

- Inotersen (Tegsedi) — NDA 211172
- Tofersen (Qalsody) — NDA 215887

> an FDA reviewer's post hoc joint-rank analysis (deaths ranked worst by survival time; ANCOVA on the joint ranks) because all 5 deaths were in the inotersen arm.

> The primary test was a joint rank test (Berry 2013): deaths ranked worst by time of death, all others ranked by Day-197 change (MI-imputed where missing); the ranks were analyzed by ANCOVA in each of 100 imputed datasets and the treatment estimates combined with Rubin's rules (PROC MIANALYZE). The effect estimate came from a separate ANCOVA+MI on the raw change.
>
> Compare every subject with every other subject; the subject gets +1 if their outcome is better, −1 if worse, 0 if the same.
>
> Rank subjects on the summed scores; ties get the mean of the corresponding ranks.

## Worst-rank / worst-value scores for deaths

Trials:

- Riociguat (Adempas) — NDA 204819
- Pirfenidone (Esbriet) — NDA 22535
- Sotatercept-csrk (Winrevair) — BLA 761363

> Walk distance set to 0 for death or clinical worsening without a final measurement; other withdrawals carry the last value forward

> Deaths rank below all observed values, shortest survival worst

> Deaths received the worst rank (coded as a change of -2000 m), non-fatal clinical worsening with missing Week 24 the next-worst rank (-1000 m), and other missing values were multiply imputed (m = 100, FCS regression).

## Sign test

Trials:

- Viltolarsen (Viltepso) — NDA 212154

> The rank-based method was NOT part of the primary analysis. The primary analysis of within-patient change in dystrophin (% of normal, Western blot) was a paired t-test within each dose group (n=8 each).
>
> The only nonparametric analysis found is an FDA-reviewer sensitivity analysis using a sign test (nominal p=0.0078 for both doses).

## Re-randomization (permutation) test

Trials:

- Inotersen (Tegsedi) — NDA 211172

> a pre-specified fallback, a stratified re-randomization (permutation) test of the MMRM treatment estimate, to be used if Shapiro-Wilk on the Week-66 MMRM residuals had p ≤ 0.01 (this is a permutation test of a parametric statistic, not a rank test)
>
> Shuffle treatment labels within each of the eight strata, for all FAS patients; refit the MMRM; store the Week-66 difference.
>
> Repeat 50,000 times
>
> One-sided p = (1 + number of shuffles with t_i ≤ t*) / (1 + 50,000); reject if < 0.025.

## Shapiro-Wilk

Normality check that decides whether the rank test replaces the parametric model.

Trials:

- Riociguat (Adempas) — NDA 204819
- Fremanezumab-vfrm (Ajovy) — BLA 761089
- Inotersen (Tegsedi) — NDA 211172
- Eplontersen (Wainua) — NDA 217388
- Sofpironium (Sofdra) — NDA 217347

> The SAP made ANCOVA primary unless the Shapiro-Wilk test on the ANCOVA residuals was significant

> if the Shapiro-Wilk test on the ANCOVA residuals had p ≤ 0.01
>
> The switch fired in both trials

> to be used if Shapiro-Wilk on the Week-66 MMRM residuals had p ≤ 0.01

> if a Shapiro-Wilk test of the ANCOVA residuals was significant at 0.01. For mNIS+7 the trigger fired (p<0.01, driven by one subject with a change of -80.6)

> switching to a rank-transformed ANCOVA if a Shapiro-Wilk test rejected normality in either arm. Normality was rejected (p<0.0001 in each arm of each trial)

## Multiple imputation combined with a rank analysis

Values are imputed first; ranks are recomputed in each completed dataset.

Trials:

- Patiromer (Veltassa) — NDA 205739
- Sofpironium (Sofdra) — NDA 217347
- Tofersen (Qalsody) — NDA 215887
- Eplontersen (Wainua) — NDA 217388
- Sotatercept-csrk (Winrevair) — BLA 761363
- Plozasiran (Redemplo) — NDA 219947

> Three subjects had multiply imputed values (10 datasets); tests and estimates were computed per dataset and combined.

> fitted to 20 multiply imputed datasets.
>
> per-imputation results combined by Rubin's rules

> the ranks were analyzed by ANCOVA in each of 100 imputed datasets and the treatment estimates combined with Rubin's rules (PROC MIANALYZE).
>
> Values imputed after death are not used for the rank score. Imputed values are not rounded

> ANCOVA with a propensity-score adjustment and multiple imputation.
>
> 500 datasets; stratified Wilcoxon per dataset; combination rule not stated

> other missing values were multiply imputed (m = 100, FCS regression).

> run on each of 100 multiply imputed datasets (placebo-washout pattern-mixture imputation) and combined with Rubin's rules plus a modified Mogg-Mehrotra macro.
