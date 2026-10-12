library(tidymodels)

# ------------------------------------------------------------------------------

tidymodels_prefer()
theme_set(theme_bw())
options(pillar.advice = FALSE, pillar.min_title_chars = Inf)

# ------------------------------------------------------------------------------

clin_pharm_dat <-
  read.delim("~/github/FDA-SAP-Census/tables/clin_pharm.tsv", sep = "\t") |>
  as_tibble() |>
  filter(model_type != "NO SIGNAL") |> 
  mutate(
    Method = factor(model_type),
    Species = ifelse(compartment_count == "Not applicable", model_type, compartment_count),
    Species = factor(Species)
  )

clin_pharm_methods <- 
  clin_pharm_dat |> 
  count(Method) |> 
  mutate(Method = reorder(Method, n))

clin_pharm_methods |>
  ggplot(aes(Method)) +
  geom_bar(aes(y = n), stat = "identity") +
  coord_flip() +
  labs(x = NULL, y = "#Trials with at least one instance")

clin_pharm_species <- 
  clin_pharm_dat |> 
  count(Species, Method) |> 
  mutate(Species = reorder(Species, n))

clin_pharm_species |>
  ggplot(aes(Species)) +
  geom_bar(aes(y = n, fill = Method), stat = "identity") +
  coord_flip() +
  labs(x = NULL, y = "#Trials with at least one instance")



clin_pharm_sw <- 
  clin_pharm_dat |> 
  select(fitting_method_software) |> 
  mutate(
    `Not stated` = grepl("^Not stated", fitting_method_software),
    `PK-Sim` = grepl("PK-Sim", fitting_method_software),
    NONMEM = grepl("(NONMEM)|(PsN)", fitting_method_software),
    `S-Plus` = grepl("(S-Plus)|(SPLUS)", fitting_method_software),
    Simcyp = grepl("Simcyp", fitting_method_software),
    Pirana = grepl("Pirana", fitting_method_software),
    WinNonlin = grepl("(WinNonlin)(Phoenix)", fitting_method_software),
    R = grepl("\\bR\\b", fitting_method_software),
    SAS = grepl("SAS", fitting_method_software),
    Monolix = grepl("Monolix", fitting_method_software),
    Simulx = grepl("Simulx", fitting_method_software),
    GastroPlus = grepl("GastroPlus", fitting_method_software)
  ) |> 
  select(-fitting_method_software) |> 
  pivot_longer(cols = c(everything()), names_to = "software") |> 
  filter(value) |> 
  count(software) |> 
  mutate(software = reorder(factor(software), n))

clin_pharm_sw |>
  ggplot(aes(software)) +
  geom_bar(aes(y = n), stat = "identity") +
  coord_flip() +
  labs(x = NULL, y = "#Trials with at least one instance")
