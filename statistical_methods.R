
library(tidymodels)

# ------------------------------------------------------------------------------

tidymodels_prefer()
theme_set(theme_bw())
options(pillar.advice = FALSE, pillar.min_title_chars = Inf)

# ------------------------------------------------------------------------------

taxon <-
  read.delim("~/github/FDA-SAP-Census/tables/primary_analysis.tsv", sep = "\t") |>
  as_tibble()

dat <-
  read.delim("~/github/FDA-SAP-Census/tables/primary_analysis_counts.tsv", sep = "\t") |>
  as_tibble() |>
  inner_join(taxon, by = join_by(primary_label, species)) |>
  mutate(
    outcome_type = ifelse(is.na(outcome_type), "No analysis", outcome_type)
  )

by_outcome <-
  dat |>
  summarize(
    n = sum(n_trials_matched),
    .by = c(outcome_type)
  ) |>
  mutate(outcome_type = reorder(factor(outcome_type), n))

by_outcome |>
  ggplot(aes(outcome_type)) +
  geom_bar(aes(y = n, fill = outcome_type), stat = "identity", show.legend = FALSE) +
  coord_flip() +
  labs(x = NULL, y = "#Trials with at least one instance")

by_method <-
  dat |>
  summarize(
    n = sum(n_trials_matched),
    .by = c(outcome_type, primary_label)
  ) |>
  mutate(
    outcome_type = factor(outcome_type, levels = levels(by_outcome$outcome_type)),
    primary_label = reorder(factor(primary_label), n)
  )

by_method |>
  ggplot(aes(primary_label)) +
  geom_bar(aes(y = n, fill = outcome_type), stat = "identity", show.legend = FALSE) +
  coord_flip() +
  labs(x = NULL, y = "#Trials with at least one instance")

by_method |>
  filter(outcome_type %in% c("Numeric", "Censored", "Categorical")) |>
  ggplot(aes(primary_label)) +
  geom_bar(aes(y = n, fill = outcome_type), stat = "identity", show.legend = FALSE) +
  coord_flip() +
  facet_wrap(~ outcome_type) +
  labs(x = NULL, y = "#Trials with at least one instance")

# ------------------------------------------------------------------------------

mult_taxon <-
  read.delim("~/github/FDA-SAP-Census/tables/multiplicity.tsv", sep = "\t") |>
  as_tibble()

mult_dat <-
  read.delim("~/github/FDA-SAP-Census/tables/multiplicity_counts.tsv", sep = "\t") |>
  as_tibble() |>
  inner_join(mult_taxon, by = join_by(type, method, species))

by_mult_method <-
  mult_dat |>
  summarize(
    n = sum(n_trials_matched),
    .by = c(method, type)
  ) |>
  mutate( method = reorder(factor(method), n))

by_mult_method |>
  ggplot(aes(method)) +
  geom_bar(aes(y = n, fill = type), stat = "identity", show.legend = FALSE) +
  coord_flip() +
  labs(x = NULL, y = "#Trials with at least one instance")



by_mult_species <-
  mult_dat  |>
  mutate(
    group = ifelse(species == "non-specific", method, species)
  ) |>
  summarize(
    n = sum(n_trials_matched),
    .by = c(group, type)
  ) |>
  mutate(group = reorder(factor(group), n))

by_mult_species |>
  ggplot(aes(group)) +
  geom_bar(aes(y = n, fill = type), stat = "identity") +
  coord_flip() +
  labs(x = NULL, y = "#Trials with at least one instance") +
  theme(legend.position = "top")

# ------------------------------------------------------------------------------

imp_dat <-
  read.delim("~/github/FDA-SAP-Census/tables/imputations_counts.tsv", sep = "\t") |>
  as_tibble() |>
  mutate(Method = reorder(factor(Method), n_trials_matched))

imp_dat |>
  ggplot(aes(Method)) +
  geom_bar(aes(y = n_trials_matched), stat = "identity") +
  coord_flip() +
  labs(x = NULL, y = "#Trials with at least one instance")
