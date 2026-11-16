# Rank-based analyses of numeric primary endpoints in the FDA SAP census

**Compiled:** 2026-11-16 · **Scope:** census entries in [`../../README.md`](../../README.md) whose primary (or co-primary) endpoint is a numeric, non-censored variable and whose analysis used, or was pre-specified to fall back on, a rank-based test. 34 submissions were investigated.

**Purpose:** record each analysis in enough detail that we could write our own code for a similar analysis: what was ranked and over what scope, the model terms and their types, the test statistic and reference distribution, the estimator and interval, the handling of missing data and deaths, and how the results were laid out.

## How this was built

1. Candidates were found by a keyword search of the census (Wilcoxon, rank-sum, van Elteren, Kruskal-Wallis, Hodges-Lehmann, rank ANCOVA, signed-rank, joint rank, non-parametric). The search hit 107 entries. Reading the hits narrowed these to 34 in which the rank method touched the primary analysis of a numeric endpoint.
2. For each of the 34, the primary sources were downloaded and converted to text: FDA Statistical / Multi-Discipline / Integrated / Clinical reviews, the label, any protocol or SAP posted on ClinicalTrials.gov, and open-access publications.
3. Six parallel research agents extracted the details into one file per submission, using a fixed template. Each field is either sourced with a citation tag or says *Not stated*, meaning it was not found in the documents consulted.
4. Each file ends with verbatim excerpts. All 254 block quotes were checked mechanically against the converted source text. 252 matched exactly after whitespace normalization; the other 2 differ only by a hyphen at a PDF line break.
5. Citation tags in the per-submission files link to the source PDF. Where a tag says `PDF p.N`, the link opens at that page. Other page numbers are the document's printed page numbers.

**Caveats:**

- No sponsor SAP is public for 22 of the 34 submissions. For those, the mechanics come from the FDA reviewer's summary, and details such as stratum weights, tie handling, and exact versus asymptotic p-values are often *Not stated*.
- Each file has an **Implementation notes (inference)** section. Those notes, and the R sketches in this file, are our reading of how to code the analysis. They are not statements from the sources.
- Some result tables exist only as images and were transcribed by OCR or by eye (riociguat, perampanel, cannabidiol, teduglutide). The files flag these.
- The 18 census entries where a rank test appeared only as a sensitivity analysis or an FDA reanalysis were not investigated. They are listed at the end.

## Index

### Rank test was the pre-specified primary analysis (21)

| Submission | Trials | Primary endpoint | Rank method | Estimate shown with it | SAP public |
|---|---|---|---|---|---|
| [Roflumilast 2011](2011-roflumilast-m2-112.md) | M2-112 (supportive) | Exacerbations per patient-year | Unstratified Wilcoxon rank-sum | None; Poisson rate ratio used instead | No |
| [Ezogabine 2011](2011-ezogabine-restore.md) | 301, 302, 205 | % change in 28-day seizure frequency | Stratified rank ANCOVA on within-stratum standardized ranks (301/302); rank-transform ANCOVA with trend contrasts (205) | Difference of medians, no CI | No |
| [Perampanel 2012](2012-perampanel-304-305-306.md) | 304, 305, 306 | % change in 28-day seizure frequency | Rank-transform ANCOVA (ranked response, ranked baseline, treatment, pooled country) | Unadjusted Hodges-Lehmann (HL) difference, 95% CI | No |
| [Mirabegron 2012](2012-mirabegron-046-047-074.md) | 046, 047, 074 | Change in incontinence episodes/24 h (co-primary) | Stratified rank ANCOVA: residuals, then stratified mean score test | LS means and CI from parametric ANCOVA | No |
| [Teduglutide 2012](2012-teduglutide-cl0600-004.md) | CL0600-004 (supportive) | Graded response score, 0 to 5 | Pairwise rank ANCOVA, chi-square with 1 df | None | No |
| [Pirfenidone 2014](2014-pirfenidone-ascend-capacity.md) | ASCEND, CAPACITY 004/006 | Change in % predicted FVC | Rank ANCOVA on rank/(N+1), Mantel-Haenszel mean score test; deaths ranked worst by time | Raw mean difference, no CI | No |
| [Patiromer 2015](2015-patiromer-opal-hk.md) | OPAL-HK Part B | Change in serum potassium | Linear model on ranks with two binary strata, t-test; 10 imputations | HL difference, 95% CI; constructed medians | No |
| [Flibanserin 2015](2015-flibanserin-violet-daisy-begonia.md) | 511.71, 511.75, 511.147 | Change in satisfying sexual events per 28 days (co-primary) | Wilcoxon rank-sum stratified by pooled center | Difference of medians; ANCOVA mean difference and CI in label | No |
| [Eteplirsen 2016](2016-eteplirsen-study-201.md) | Study 201 | Change in % dystrophin-positive fibers | "ANCOVA for ranked data" (treatment, baseline, time since diagnosis), N=12 | Descriptive means | No |
| [Telotristat 2017](2017-telotristat-telestar-telecast.md) | TELESTAR, TELECAST | Change in bowel movements/day; % change in u5-HIAA | van Elteren test, 3 strata, each dose vs placebo | HL shift, 97.5% or 95% limits | No |
| [Benralizumab 2017](2017-benralizumab-zonda.md) | ZONDA | % reduction in oral corticosteroid dose | Unstratified Wilcoxon rank-sum, Hochberg over 2 regimens | HL shift with Moses CI; medians with distribution-free CI | No |
| [Cannabidiol 2018](2018-cannabidiol-gwpcare.md) | GWPCARE1, 3, 4 | % change in 28-day seizure frequency | Unstratified Wilcoxon rank-sum | HL median difference, "approximate" 95% CI | No |
| [Cenobamate 2019](2019-cenobamate-c013-c017.md) | C013, C017 | % change in 28-day seizure frequency | Wilcoxon rank-sum (C013); rank-transform ANCOVA with ranked baseline (C017) | Observed medians only | C017 protocol |
| [Bremelanotide 2019](2019-bremelanotide-reconnect.md) | 301, 302 | Change in desire score; change in distress item (co-primary) | Unadjusted Wilcoxon rank-sum | Mean and median change, mean difference, no CI | No |
| [Afamelanotide 2019](2019-afamelanotide-cuv039-cuv029.md) | CUV039, CUV029 | Total pain-free sun-exposure hours | Kruskal-Wallis, asymptotic, no continuity correction | HL shift, 95% CI (added outside the SAP) | No |
| [Crizanlizumab 2019](2019-crizanlizumab-sustain.md) | SUSTAIN | Annualized crisis rate | Stratified Wilcoxon rank-sum, 4 strata, fixed sequence over doses | Medians; HL median difference, 95% CI | No |
| [Ganaxolone 2022](2022-ganaxolone-marigold.md) | Marigold | % change in 28-day major motor seizure frequency | Unstratified Wilcoxon rank-sum (`PROC NPAR1WAY`), O'Brien-Fleming interims | HL shift, asymptotic 95% CI | Yes, with code |
| [Tofersen 2023](2023-tofersen-valor.md) | VALOR | Change in ALSFRS-R at Week 28 | Joint rank (deaths worst by time), ANCOVA on ranks, 100 imputations | LS mean difference from a separate ANCOVA | Yes |
| [Sotatercept 2024](2024-sotatercept-stellar.md) | STELLAR | Change in 6-minute walk distance | Aligned rank stratified Wilcoxon; worst-rank coding for death and worsening; 100 imputations | HL shift with asymptotic SE and Wald CI | Protocol only |
| [Plozasiran 2025](2025-plozasiran-palisade.md) | PALISADE | % change in triglycerides | Unstratified Wilcoxon rank-sum per imputation (100), pooled | HL shift, pooled by Rubin's rules | Yes, with code |
| [Garadacimab 2025](2025-garadacimab-vanguard.md) | VANGUARD | Attacks per month | Unstratified Wilcoxon rank-sum | None; Poisson model means and % reduction in label | Yes |

### Parametric primary with a rank-based fallback that was invoked (8)

| Submission | Trials | Primary endpoint | Parametric model | Trigger | Fallback | Outcome |
|---|---|---|---|---|---|---|
| [Deferiprone 2011](2011-deferiprone-la16-0102.md) | LA16-0102 | Change in cardiac MRI T2* | Unequal-variance t-test | "if normally distributed"; no test named | "nonparametric tests", none named | Sponsor log-transformed post hoc; FDA ran Wilcoxon, median and Kolmogorov-Smirnov tests |
| [Ospemifene 2013](2013-ospemifene-15-50310-15-50821.md) | 15-50310, 15-50821 | Change in % superficial cells, % parabasal cells, vaginal pH | ANCOVA (treatment, center, uterus status, baseline) | Assumptions "severely violated"; no rule | Rank-based ANCOVA, undocumented | Invoked in the original reports; FDA's primary analyses and the label used ANCOVA |
| [Mipomersen 2013](2013-mipomersen-cs5-cs12.md) | CS5, CS7, CS12, MIPO3500108 | % change in LDL-C | Two-sample t-test | Kolmogorov-Smirnov normality test, p<0.05 | Wilcoxon rank-sum | Fired only in CS12; pivotal CS5 used the t-test |
| [Riociguat 2013](2013-riociguat-chest1-patent1.md) | CHEST-1, PATENT-1 | Change in 6-minute walk distance | ANCOVA (baseline, treatment, region, stratification group) | Shapiro-Wilk on ANCOVA residuals | Stratified Wilcoxon | Fired in both (p=0.0001); FDA added HL estimates |
| [Droxidopa 2014](2014-droxidopa-study-306b.md) | 306B | Change in dizziness item score | ANCOVA (treatment, baseline) | Visual inspection of diagnostic plots | Rank statistics adjusted for baseline | Sponsor invoked it; FDA saw no violation and used ANCOVA |
| [Fremanezumab 2018](2018-fremanezumab-halo.md) | HALO EM, HALO CM | Change in monthly migraine or headache days | ANCOVA (treatment, sex, region, preventive medication, baseline, years since onset) | Shapiro-Wilk on residuals, p ≤ 0.01 | Unstratified Wilcoxon rank-sum, each dose vs placebo | Fired in both; label pairs ANCOVA estimates with the Wilcoxon p-value |
| [Eplontersen 2023](2023-eplontersen-neuro-ttransform.md) | NEURO-TTRansform vs external placebo | Change in mNIS+7 | ANCOVA with propensity score, 500 imputations | Shapiro-Wilk on residuals at 0.01 | Wilcoxon stratified by propensity-score quartile | Fired; FDA kept the ANCOVA |
| [Sofpironium 2024](2024-sofpironium-cardigan.md) | Cardigan I, II | Change in gravimetric sweat production (co-primary) | ANCOVA (treatment, baseline, analysis center) | Shapiro-Wilk per arm | Same ANCOVA on rank differences, 20 imputations | Fired in both (p<0.0001 each arm) |

### Rank test specified or run, but not the operative primary analysis (5)

| Submission | What was found |
|---|---|
| [Clobazam 2011](2011-clobazam-ov1012-ov1002.md) | Pivotal OV-1012 used parametric ANCOVA; rank ANCOVA was a sensitivity analysis. Supportive OV-1002 used a one-sided Wilcoxon signed-rank test of within-group change. |
| [Lomitapide 2012](2012-lomitapide-up1002.md) | Single arm. Paired t-test was primary; the signed-rank fallback was not invoked. FDA ran it as a check. |
| [Inotersen 2018](2018-inotersen-neuro-ttr.md) | Primary was a mixed model. The fallback is a stratified re-randomization test of the model estimate, not a rank test. Documents a van Elteren sensitivity analysis and FDA's joint-rank analysis. |
| [Triheptanoin 2020](2020-triheptanoin-cl201-cl202.md) | Signed-rank test was an alternative to a paired t-test in one single-arm study. FDA treated negative binomial regression as primary. |
| [Viltolarsen 2020](2020-viltolarsen-study-201.md) | Not a rank-test case. Paired t-test; no fallback was used. FDA ran a sign test. |

## Method catalogue

The 34 submissions use a small number of distinct procedures under overlapping names. "Rank ANCOVA" in particular covers two different algorithms. The R sketches below are ours and are not taken from the sources.

### 1. Unstratified Wilcoxon rank-sum test

Used by cannabidiol, ganaxolone, plozasiran, garadacimab, benralizumab, bremelanotide, afamelanotide, cenobamate C013, roflumilast M2-112, and as the fallback for fremanezumab and mipomersen.

What the sources leave open most often:

- **Reference distribution.** No source reports an exact test. Where code is given (ganaxolone, plozasiran) it is `PROC NPAR1WAY` with no `EXACT` statement, so the p-value is the normal approximation. Fremanezumab's SAP says "P value based on normal approximation".
- **Continuity correction.** SAS and R apply one by default for two samples. Afamelanotide's Kruskal-Wallis test did not, and FDA flagged the inconsistency when one secondary endpoint used the corrected version. A two-arm Kruskal-Wallis test equals the uncorrected asymptotic Wilcoxon test.
- **Ties.** Midranks with a tie-corrected variance are the software default. Ties are heavy for scale scores (bremelanotide), dose steps (benralizumab) and event rates (garadacimab, roflumilast).
- **Multi-arm trials.** Each dose is compared with placebo on the two-arm subset, so ranks are recomputed per comparison.
- **Randomization strata.** Every trial in this group ignored its stratification factors in the test.

```r
# two-arm subset; estimate is the shift of the first factor level relative to the second
wilcox.test(y ~ arm, data = d, exact = FALSE, correct = TRUE, conf.int = TRUE)
```

### 2. Stratified Wilcoxon tests

Used by telotristat (called a van Elteren test in the label), crizanlizumab, flibanserin, riociguat's fallback, and eplontersen's fallback. Sotatercept used a different stratified test (aligned ranks).

No source states the stratum weights. The van Elteren test ranks within each stratum and weights stratum $k$ by $1/(n_k+1)$:

$$
Z = \frac{\sum_k \frac{1}{n_k+1}\left(W_k - \frac{n_{1k}(n_k+1)}{2}\right)}{\sqrt{\sum_k \frac{1}{(n_k+1)^2}\,\frac{n_{1k}\,n_{0k}}{n_k(n_k-1)}\sum_{i \in k}\left(r_{ik}-\bar r_k\right)^2}}
$$

where $W_k$ is the rank sum of the active arm in stratum $k$ and $r_{ik}$ are within-stratum midranks. This is the stratified mean score test with modified ridit scores (`PROC FREQ ... / CMH2 SCORES=MODRIDIT`).

A general helper covers this test and the residual-based rank ANCOVA in section 4:

```r
# stratified mean score test: scores are compared between two arms within strata
strat_mean_score <- function(score, active, stratum) {
  pieces <- lapply(split(data.frame(score, active), stratum), function(s) {
    n <- nrow(s)
    n1 <- sum(s$active)
    c(
      obs = sum(s$score[s$active]),
      exp = n1 * mean(s$score),
      var = n1 * (n - n1) / (n * (n - 1)) * sum((s$score - mean(s$score))^2)
    )
  })
  tot <- Reduce(`+`, pieces)
  z <- (tot[["obs"]] - tot[["exp"]]) / sqrt(tot[["var"]])
  c(z = z, chisq = z^2, p = 2 * pnorm(-abs(z)))
}

std_rank <- function(x) rank(x) / (length(x) + 1)

# van Elteren: within-stratum standardized ranks as scores
strat_mean_score(ave(d$y, d$stratum, FUN = std_rank), d$active, d$stratum)
```

Notes:

- The helper needs at least two subjects per stratum. A stratum with one arm only contributes nothing.
- `coin::wilcox_test(y ~ arm | stratum)` is not the van Elteren test. It sums unweighted within-stratum rank sums, and the p-value can differ noticeably when strata are unequal in size.
- Sparse strata are a recurring problem that no source addresses: telotristat's "unknown" stratum, riociguat's 10 region-by-group cells, eplontersen's propensity quartiles built from a score with at most 8 distinct values.

**Aligned rank stratified Wilcoxon (sotatercept).** Values are first aligned across strata "using the stratum-level Hodges-Lehmann location shift estimates", then a single Wilcoxon rank-sum test is run on the aligned values. The exact alignment step is not public. See the [sotatercept file](2024-sotatercept-stellar.md).

### 3. Rank-transform ANCOVA (linear model on ranks)

Rank the response over all subjects, optionally rank the covariate, and fit an ordinary linear model. The treatment test is the model's t or F test.

| Submission | Response ranked | Covariates | Factors | Ranking scope |
|---|---|---|---|---|
| Patiromer | Change | None | Treatment; 2 binary strata | Overall (implied); per imputed dataset |
| Perampanel | % change | Ranked baseline frequency | Treatment (3 or 4); pooled country | Overall (implied) |
| Cenobamate C017 | % change | Ranked baseline rate | Treatment (4) | Not stated |
| Ezogabine 205 | % change | Ranked baseline rate | Treatment (4); center | Not stated |
| Eteplirsen | Change | Baseline; time since diagnosis (ranked or raw not stated) | Treatment (3) | All 12 patients (inferred) |
| Tofersen | Joint rank | Raw baseline score; raw disease duration | Treatment; 3-level background therapy | Overall, per imputed dataset |
| Sofpironium | EOT rank minus baseline rank | Baseline rank | Treatment; analysis center | Overall, per visit, per imputed dataset |
| Cannabidiol (sensitivity) | % change | Baseline (ranked or raw not stated) | Treatment; age group | Not stated |
| Clobazam OV-1012 (sensitivity) | % reduction | Raw baseline rate | Treatment; pooled center | Not stated |

```r
d$ry <- rank(d$y)
d$rx <- rank(d$x)
fit <- lm(ry ~ arm + rx + site, data = d)
```

Points to decide:

- Whether the covariate is ranked. Perampanel, cenobamate and ezogabine ranked it; tofersen left covariates on the raw scale.
- One multi-arm model with contrasts, or re-ranking on each two-arm subset. No source says which.
- The estimate from this model is a difference in adjusted mean ranks. Sofpironium reported it and FDA called it "not clinically meaningful". Everyone else reported a separate estimate.

**Sofpironium's two versions.** The sponsor ranked sweat production across all subjects at each of six visits, took the median of the three baseline-visit ranks and of the three end-of-treatment ranks, and modeled their difference ("difference of the ranks"). FDA instead ranked the raw change score ("ranks of the differences"). With baseline rank as a covariate, the first is equivalent to modeling the end-of-treatment rank.

### 4. Residual-based (Koch) stratified rank ANCOVA

Used by mirabegron, pirfenidone and ezogabine 301/302, and probably teduglutide. The reference cited by pirfenidone's review is Stokes, Davis and Koch (2000), *Categorical Data Analysis Using the SAS System*, section 7.7.

The steps, as described most fully for mirabegron:

1. Subset to the two arms being compared.
2. Within each stratum, convert the response and the covariate to standardized ranks, rank/(n+1), using midranks for ties.
3. Within each stratum, regress the ranked response on the ranked covariate (and other covariates). Treatment is not in this model.
4. Compare the residuals between arms with a stratified mean score test. The statistic is chi-square with 1 df.

| Submission | Strata | Covariates in the residual model | Notes |
|---|---|---|---|
| Mirabegron | Region (2 to 7 levels) | Ranked baseline; gender | Regression fitted separately per region |
| Ezogabine 301/302 | Region × baseline seizure category (4) | Ranked baseline, nested within strata | Statistic not stated |
| Pirfenidone ASCEND | None | Ranked baseline | Ranks over all patients; deaths ranked worst |
| Pirfenidone CAPACITY | Region (USA, rest of world) | Ranked baseline | |
| Teduglutide | Baseline consumption level (3) | Baseline volume | Reported statistics match chi-square with 1 df |

```r
d$ry <- ave(d$y, d$stratum, FUN = std_rank)
d$rx <- ave(d$x, d$stratum, FUN = std_rank)
d$res <- NA_real_
for (s in unique(d$stratum)) {
  i <- d$stratum == s
  d$res[i] <- resid(lm(ry ~ rx, data = d[i, ]))
}
strat_mean_score(d$res, d$active, d$stratum)
```

This procedure gives a p-value and no effect estimate. Mirabegron reported parametric ANCOVA LS means beside it, and pirfenidone reported raw mean differences with no interval.

### 5. Hodges-Lehmann estimate and its interval

The two-sample Hodges-Lehmann estimate is the median of all pairwise differences between arms:

$$
\hat\Delta = \operatorname{median}\{\,y_i - x_j : i = 1,\dots,n_1;\ j = 1,\dots,n_0\,\}
$$

How it was used:

| Submission | Interval | Notes |
|---|---|---|
| Ganaxolone | "asymptotic 95% confidence limits" (`HL` option) | Code in SAP |
| Benralizumab | "Moses CI" | Per-arm medians with distribution-free CI |
| Cannabidiol | "approximate" | Asymmetric limits, consistent with an order-statistic interval |
| Perampanel | Not stated | Unadjusted, although the p-value is from a covariate-adjusted model |
| Telotristat | 97.5% or 95% limits | Stratified or pooled not stated |
| Crizanlizumab | Not stated | Upper limit exactly 0.00 with p=0.010, so probably unstratified |
| Afamelanotide | Not stated | Added outside the SAP |
| Patiromer | Not stated | Combined over 10 imputations; rule not stated |
| Plozasiran | Symmetric | Rubin's rules on per-imputation estimate and SE |
| Sotatercept | Estimate ± 1.96 × asymptotic SE | Wald interval |
| Riociguat | Not stated | Computed by FDA, "associated with the stratified Wilcoxon test" |

Recurring issues:

- **Estimate and p-value from different procedures.** Perampanel, crizanlizumab, telotristat and droxidopa pair an unadjusted or unstratified estimate with an adjusted or stratified test. The interval can then touch zero while the test is significant.
- **No estimate at all.** Fremanezumab, garadacimab, cenobamate, bremelanotide and roflumilast specified no rank-based estimator. Each ended up showing a parametric or model-based estimate beside the rank p-value. FDA's comment on fremanezumab: "The Wilcoxon rank-sum test does not provide estimates of the treatment difference".
- **It is not a difference of medians.** FDA on garadacimab: "the Wilcoxon rank sum test is not a median test". FDA asked that crizanlizumab's 45% relative difference of arm medians be left out of labeling. Patiromer displayed a placebo "median" constructed as the active median plus the Hodges-Lehmann difference.
- **Discrete data.** With dose steps, integer scores or event rates, the estimate and limits fall on a lattice (benralizumab 33.3 and 37.5; droxidopa −1.0 with limits −2.0 and 0).

### 6. Deaths and other intercurrent events in a rank analysis

| Approach | Submission | Rule |
|---|---|---|
| Worst value | Riociguat | Walk distance set to 0 for death or clinical worsening without a final measurement; other withdrawals carry the last value forward |
| Worst-rank constants | Sotatercept | Change coded −2000 m for death and −1000 m for non-fatal clinical worsening with a missing Week 24 value |
| Ranked worst, ordered by time | Pirfenidone | Deaths rank below all observed values, shortest survival worst |
| Joint rank | Tofersen; FDA for inotersen | Pairwise scoring: survivors beat deaths; among deaths, later is better; among survivors, compare change |
| Inside the endpoint | Benralizumab | Withdrawal or loss of asthma control sets the final dose one level above the dose at the event |
| Inside the endpoint | Patiromer | Endpoint taken at the first visit with potassium out of range |
| Annualization | Crizanlizumab, garadacimab | Rate = count × period / days observed; early discontinuers get extrapolated rates |
| Failure score | Teduglutide | Dropouts scored 0 on the graded scale |

Joint rank scoring in tofersen's SAP compares every pair of subjects and sums +1, −1 or 0, then ranks the sums with midranks. When one composite ordering exists, this equals ranking a single key:

```r
# deaths below every survivor, ordered by survival time; survivors ordered by change
key <- ifelse(d$died, -1e6 + d$days_to_death, d$change)
d$joint_rank <- rank(key)
```

FDA's inotersen version compares each pair at "the last assessment common to both patients", which is not a single ordering and needs the pairwise loop.

### 7. Multiple imputation with a rank analysis

In every case the continuous values are imputed first and ranks are recomputed within each completed dataset.

| Submission | Imputation | Analysis per dataset | Combination |
|---|---|---|---|
| Tofersen | 100 datasets, MCMC by arm | ANCOVA on joint ranks | Rubin's rules on the rank-scale treatment estimate (`PROC MIANALYZE`) |
| Sofpironium | 20 datasets; control-based for the active arm | ANCOVA on rank differences | Rubin's rules |
| Patiromer | 10 datasets, for 3 subjects | Linear model on ranks; HL estimate | "combined using multiple imputation methods"; medians by median of medians |
| Plozasiran | 100 datasets, placebo washout | Wilcoxon and HL | Rubin's rules on HL estimate and SE; p-value by "a modified macro from Mogg and Mehrotra (2007)" |
| Sotatercept | 100 datasets, chained regressions within stratum | Aligned rank test and HL | "combined for the inference"; rule not stated |
| Cannabidiol (sensitivity) | Not stated | Wilcoxon | Not stated |
| Eplontersen | 500 datasets | Stratified Wilcoxon | Not stated |

A linear model on ranks pools naturally because it yields an estimate and a standard error. A Wilcoxon p-value does not, and the only source that addresses it (plozasiran) points to a macro that is not public. Plozasiran's reported p-values do not match its symmetric intervals, so the test statistic was pooled separately from the estimate.

### 8. Normality-triggered fallbacks

| Submission | Test | Applied to | Threshold | Fallback | Fired |
|---|---|---|---|---|---|
| Fremanezumab | Shapiro-Wilk | Residuals of the 3-arm ANCOVA, pooled | p ≤ 0.01 (raised from 0.001 at FDA's request) | Wilcoxon rank-sum | Yes, both trials |
| Riociguat | Shapiro-Wilk | ANCOVA residuals, pooled | "statistically significant" | Stratified Wilcoxon | Yes, both trials |
| Sofpironium | Shapiro-Wilk | Each arm separately, before imputation | Not stated | ANCOVA on ranks | Yes, both trials |
| Eplontersen | Shapiro-Wilk | ANCOVA residuals | 0.01 | Stratified Wilcoxon | Yes; one outlier drove it |
| Inotersen | Shapiro-Wilk | Week 66 mixed-model residuals | 0.01 | Re-randomization test of the model estimate | Not stated |
| Mipomersen | Kolmogorov-Smirnov | Not stated; one p-value per trial | p < 0.05 | Wilcoxon rank-sum | 1 of 4 trials |
| Droxidopa | Visual inspection | Diagnostic plots | None | Rank statistics adjusted for baseline | Sponsor yes; FDA disagreed |
| Ospemifene | Not stated | Not stated | "severely violated" | Rank-based ANCOVA | Varied by endpoint and analysis set |
| Deferiprone | Not stated | Not stated | Not stated | "nonparametric tests" | Disputed |
| Lomitapide, triheptanoin, viltolarsen | Not stated | Not stated | Not stated | Signed-rank or unspecified | No |
| Cenobamate C013 | "Diagnostics" | Four candidate models in sequence | Not stated | Wilcoxon rank-sum | Yes; FDA called the plan "ambiguous" |

What this shows:

- With a few hundred patients, a bounded or zero-imputed endpoint, and a threshold of 0.01, Shapiro-Wilk fired every time it was formally specified and reported. The rank test was the de facto primary analysis.
- The fallbacks dropped the covariates and usually the strata. Fremanezumab went from a six-term ANCOVA to an unadjusted two-sample test.
- Regulators did not always honor the switch. For eplontersen and droxidopa FDA relied on the ANCOVA, and for fremanezumab and riociguat the label still shows ANCOVA estimates.
- Rules without a named test, threshold and single fallback (deferiprone, ospemifene, droxidopa, cenobamate C013) led to disputes about what was pre-specified.

### 9. Paired and one-sample rank tests

Clobazam OV-1002 used a one-sided Wilcoxon signed-rank test of within-group change per dose group. Lomitapide and triheptanoin named the signed-rank test as an alternative to a paired t-test. None reports how zero differences were handled, whether the p-value was exact, or a rank-based estimate. FDA ran an exact sign test for viltolarsen (8 of 8 increases, p=0.0078).

## How results were presented

| Pattern | Submissions |
|---|---|
| Arm medians, HL difference with CI, rank p-value | Cannabidiol, ganaxolone, benralizumab, crizanlizumab, telotristat, perampanel, patiromer, plozasiran, sotatercept, afamelanotide |
| Arm medians and rank p-value only | Cenobamate, ezogabine, flibanserin (difference of medians) |
| Means or medians of change, mean difference, no interval | Bremelanotide, pirfenidone |
| Parametric LS means and CI with a rank p-value | Fremanezumab, mirabegron, riociguat (as submitted), tofersen |
| Count-model estimate with a rank p-value | Garadacimab, roflumilast |
| Rank-scale LS means, with medians and quartiles for interpretation | Sofpironium |
| Category counts | Teduglutide, pirfenidone (decline categories) |

Supporting displays mentioned in the reviews include cumulative distribution plots of change (riociguat, pirfenidone responder curves) and forest plots of sensitivity analyses (cannabidiol).

## Decisions a similar analysis has to make

1. **Test:** unstratified rank-sum, van Elteren, aligned rank, rank-transform linear model, or residual-based rank ANCOVA.
2. **Ranking scope:** all subjects, within stratum, or within each two-arm subset.
3. **Scores:** raw midranks or standardized ranks, rank/(n+1).
4. **Covariates:** none, ranked, or raw; and whether randomization strata enter as strata, factors, or not at all.
5. **Reference distribution:** exact, normal approximation with or without continuity correction, chi-square, t or F on ranks, or permutation.
6. **Estimator:** Hodges-Lehmann shift (stratified or pooled) and the interval method, stated together with the test so both come from one procedure.
7. **Deaths and dropouts:** worst value, worst rank ordered by time, joint rank, or handling inside the endpoint definition.
8. **Missing data:** impute then rank; and the rule for pooling a rank test across imputations.
9. **Multiple doses:** pairwise subsets with a gatekeeping order, or one model with contrasts.
10. **If contingent:** the normality test, what it is applied to, the threshold, and the single fallback test.

## Census discrepancies

Each file lists the errors found in its census entry. The ones that change the method description:

- **Flibanserin:** the rank test was the pre-specified test for the satisfying-sexual-events co-primary, not a fallback after a failed normality check.
- **Clobazam:** OV-1002's primary was a signed-rank test of within-group change; the high-versus-low dose comparison was a supportive rank-sum test.
- **Sotatercept:** the test is an aligned rank stratified Wilcoxon, not a van Elteren test, and the −2000/−1000 coding is part of the primary analysis.
- **Lomitapide:** the signed-rank test was a SAP fallback, not only an FDA addition.
- **Mipomersen:** the pivotal trial used the t-test; the protocol's LOCF was replaced by a different endpoint rule.
- **Riociguat:** the Hodges-Lehmann estimates were FDA's calculation, not part of the SAP.
- **Deferiprone:** the SAP named no specific non-parametric tests.
- **Inotersen:** the fallback is a re-randomization test, separate from the van Elteren sensitivity analysis.
- **Eplontersen:** the fallback fired; the census does not say so.
- **Viltolarsen, triheptanoin:** the rank test played no real part in the primary analysis.
- **SAP availability:** the census says no SAP or protocol is posted for fremanezumab, tofersen, inotersen, ganaxolone and viltolarsen. All five are on ClinicalTrials.gov.

These corrections have not been applied to `../../README.md`.

## Not investigated

Census entries where a rank test appears only as a sensitivity analysis or an FDA reanalysis of a numeric primary endpoint: casimersen, pitolisant, lumateperone, ivacaftor, lumacaftor/ivacaftor, avalglucosidase alfa, olipudase alfa, vamorolone, givinostat, nerandomilast, lecanemab, suvorexant, aripiprazole lauroxil, brivaracetam, sarecycline, cipaglucosidase alfa, sodium phenylbutyrate/taurursodiol, vutrisiran.
