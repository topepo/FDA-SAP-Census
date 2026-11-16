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
- ⁣

> the co-primary endpoint "change from baseline in number of satisfying sexual events (SSE) standardized to 28 days" was tested by a Wilcoxon rank-sum test stratified by pooled center, on change from baseline, in the full analysis set with LOCF.

> ANCOVA adjusting for center and baseline value (Wilcoxon rank-sum used where normality assumptions failed)
 
> FDA reviewer additionally ran post-hoc Wilcoxon tests on FSFI desire and FSDS-R item 13 because the changes were not normally distributed.

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

## Hodges-Lehmann median difference

Trials: 

- Perampanel (Fycompa) — NDA 202834
- Riociguat (Adempas) — NDA 204819
- Patiromer (Veltassa) — NDA 205739

> The effect size was reported separately as a Hodges-Lehmann median difference with 95% CI.

> The effect size was a Hodges-Lehmann difference in median change (placebo minus patiromer)