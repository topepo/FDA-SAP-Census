# FDA Novel Drug Approval Master Index (2011–2026)

**Last updated:** 2026-09-12 · **Coverage:** 684 FDA novel drug approvals (CDER New Molecular Entities and new therapeutic biologics — first-time approvals of a new active ingredient, not efficacy supplements or reformulations), January 2011 through early September 2026. (Originally compiled as 683; lebrikizumab-lbkz/Ebglyss was discovered missing during Immunology deep-dive research and added as row #684.)

This is the scaffold for the "whole hog" full census: every novel drug approval in the last ~15 years, with basic identifying information, tracked against the deep-dive SAP entries in [`README.md`](README.md). **All 684 of 684 drugs now have a full SAP-depth entry — the census is 100% complete** across all 13 therapeutic areas (Oncology 203/203, Cardiovascular/Metabolic 61/61, Infectious Disease 83/83, Neurology/Psychiatry 75/75, Rare Disease/Genetic/Metabolic-genetic 63/63, Immunology/Rheumatology/Dermatology 53/53, Other/Misc 45/45, Hematology 37/37, Gastroenterology 20/20, Endocrine 20/20, Ophthalmology 18/18, Respiratory 6/6) — see the **Status** column, where every row now reads "Done — see README entry #N".

## Scope and sourcing notes

- **What's counted**: FDA's own "novel drug approvals" definition — CDER NMEs and new biologics, sourced primarily from FDA's official bulk compilation, "Compilation of CDER NME Drug and New Biologic Approvals" (`fda.gov/media/177921`), cross-checked against FDA's per-year "Novel Drug Approvals" summary pages and Drugs@FDA bulk data (Applications.txt/Products.txt) where the per-year pages were inaccessible to automated fetches.
- **What's excluded**: efficacy supplements, label expansions, new dosage forms/reformulations of already-approved molecules (e.g., olaparib's 2017 tablet reformulation, which is what the README's SOLO-2 entry actually covers, is not its own row here — see the note on that row), generics, and most vaccines/blood products/cellular-and-gene-therapy products for 2020 specifically (FDA tracks those in a separate BLA report that wasn't pulled for this pass — see the 2020 gap note below).
- **Known gaps found and fixed during assembly**: semaglutide (Wegovy), NDA 215256, approved 2021-06-04, was missing from the initial 2021 pull and has been manually added. Given this, treat the list as very likely >99% complete but not guaranteed 100% — spot-check before treating any single year as exhaustive for a specific sub-question.
- **Known unresolved items**: 1 drug approved in 2020 (gallium Ga 68 PSMA-11) has an application number marked `TBD` — sourcing agents could not resolve it via openFDA/web search in this pass. Artesunate, Xeglyze/abametapir, and Pizensy/lactitol, formerly on this list, were resolved to NDA 213036, NDA 206966, and NDA 211281 respectively during deep-dive research. Brepocitinib/Lisraya, formerly marked "pending," was resolved to NDA 220106 during Immunology/Rheumatology/Dermatology deep-dive research.
- **Therapeutic Area** is a fast, keyword-based first-pass classification done by the sourcing agents, not independently verified per drug. Treat it as a useful sort/filter, not ground truth — expect occasional misclassifications (e.g., a drug's indication text getting matched on a misleading substring).
- **Status** "Done" means a full SAP-depth entry exists in `README.md`. Several "Done" rows point to a *different* NDA/supplement number than the row itself, because the README documents a later efficacy supplement (a new pivotal trial added to an already-approved molecule) rather than the molecule's original approval — this is noted individually on each such row.

## Summary statistics

**By year:**

| Year | Count |
|---|---|
| 2011 | 30 |
| 2012 | 39 |
| 2013 | 27 |
| 2014 | 41 |
| 2015 | 45 |
| 2016 | 22 |
| 2017 | 46 |
| 2018 | 59 |
| 2019 | 48 |
| 2020 | 53 |
| 2021 | 51 |
| 2022 | 37 |
| 2023 | 55 |
| 2024 | 47 |
| 2025 | 46 |
| 2026 (YTD, through Sept) | 38 |

**By therapeutic area:**

| Therapeutic Area | Count |
|---|---|
| Oncology | 203 |
| Infectious Disease | 83 |
| Neurology/Psychiatry | 75 |
| Rare Disease/Genetic/Metabolic-genetic | 63 |
| Cardiovascular/Metabolic | 61 |
| Immunology/Rheumatology/Dermatology | 53 |
| Other/Misc | 45 |
| Hematology | 37 |
| Gastroenterology | 20 |
| Endocrine | 20 |
| Ophthalmology | 18 |
| Respiratory | 6 |

## Full index

| Year | Generic Name (Brand) | NDA/BLA # | Approval Date | Sponsor | Indication | Therapeutic Area | Status |
|---|---|---|---|---|---|---|---|
| 2011 | ioflupane I 123 (DaTscan) | NDA 22454 | 2011-01-14 | GE Healthcare | Radiopharmaceutical for striatal dopamine transporter SPECT imaging to assist evaluation of suspected Parkinsonian syndromes | Neurology/Psychiatry | Done — see README entry #1 |
| 2011 | spinosad (Natroba) | NDA 22408 | 2011-01-18 | Parapro | Topical treatment of head lice infestation | Other/Misc | Done — see README entry #1 |
| 2011 | vilazodone hydrochloride (Viibryd) | NDA 22567 | 2011-01-21 | Trovis Pharmaceuticals | Major depressive disorder (MDD) | Neurology/Psychiatry | Done — see README entry #2 |
| 2011 | azilsartan medoxomil (Edarbi) | NDA 200796 | 2011-02-25 | Takeda Pharmaceuticals | Hypertension (ARB) | Cardiovascular/Metabolic | Done — see README entry #6 |
| 2011 | roflumilast (Daliresp) | NDA 22522 | 2011-02-28 | Forest Research Institute | Reduce risk of COPD exacerbations in severe COPD with chronic bronchitis | Respiratory | Done — see README entry #1 |
| 2011 | belimumab (Benlysta) | BLA 125370 | 2011-03-09 | Human Genome Sciences | Active, autoantibody-positive systemic lupus erythematosus (SLE) | Immunology/Rheumatology/Dermatology | Done — see README entry #1 |
| 2011 | gadobutrol (Gadavist) | NDA 201277 | 2011-03-14 | Bayer HealthCare Pharmaceuticals | Gadolinium-based MRI contrast agent | Other/Misc | Done — see README entry #2 |
| 2011 | ipilimumab (Yervoy) | BLA 125377 | 2011-03-25 | Bristol-Myers Squibb | Unresectable metastatic melanoma | Oncology | Done — see README entry #6 |
| 2011 | vandetanib (Caprelsa) | NDA 22405 | 2011-04-06 | AstraZeneca Pharmaceuticals | Symptomatic/progressive medullary thyroid cancer, unresectable/metastatic | Oncology | Done — see README entry #7 |
| 2011 | gabapentin enacarbil (Horizant) | NDA 22399 | 2011-04-06 | GlaxoSmithKline | Moderate-to-severe primary Restless Legs Syndrome | Neurology/Psychiatry | Done — see README entry #3 |
| 2011 | abiraterone acetate (Zytiga) | NDA 202379 | 2011-04-28 | Ortho Biotech Oncology R&D | Metastatic castration-resistant prostate cancer (with prednisone) | Oncology | Done — see README entry #8 |
| 2011 | linagliptin (Tradjenta) | NDA 201280 | 2011-05-02 | Boehringer Ingelheim Pharmaceuticals | Adjunct to diet/exercise for glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — see README entry #7 |
| 2011 | boceprevir (Victrelis) | NDA 202258 | 2011-05-13 | Schering | Chronic hepatitis C genotype 1, with peginterferon alfa/ribavirin | Infectious Disease | Done — see README entry #1 |
| 2011 | rilpivirine (Edurant) | NDA 202022 | 2011-05-20 | Tibotec | HIV-1 infection, combination antiretroviral therapy | Infectious Disease | Done — see README entry #2 |
| 2011 | telaprevir (Incivek) | NDA 201917 | 2011-05-23 | Vertex Pharmaceuticals | Genotype 1 chronic hepatitis C, with peginterferon alfa/ribavirin | Infectious Disease | Done — see README entry #3 |
| 2011 | fidaxomicin (Dificid) | NDA 201699 | 2011-05-27 | Optimer Pharmaceuticals | Clostridioides difficile-associated diarrhea | Infectious Disease | Done — see README entry #4 |
| 2011 | ezogabine (Potiga) | NDA 22345 | 2011-06-10 | Valeant Pharmaceuticals | Adjunctive treatment of partial-onset seizures | Neurology/Psychiatry | Done — see README entry #4 |
| 2011 | belatacept (Nulojix) | BLA 125288 | 2011-06-15 | Bristol-Myers Squibb | Prophylaxis of organ rejection, adult kidney transplant | Immunology/Rheumatology/Dermatology | Done — see README entry #2 |
| 2011 | indacaterol (Arcapta Neohaler) | NDA 22383 | 2011-07-01 | Novartis Pharmaceuticals | Long-term maintenance bronchodilator, COPD | Respiratory | Done — see README entry #2 |
| 2011 | rivaroxaban (Xarelto) | NDA 22406 | 2011-07-01 | Johnson & Johnson | Prophylaxis of DVT/PE (initially hip/knee replacement) | Cardiovascular/Metabolic | Done — see README entry #8 |
| 2011 | ticagrelor (Brilinta) | NDA 22433 | 2011-07-20 | AstraZeneca Pharmaceuticals | Reduce thrombotic CV events in acute coronary syndrome | Cardiovascular/Metabolic | Done — see README entry #9 |
| 2011 | vemurafenib (Zelboraf) | NDA 202429 | 2011-08-17 | Hoffmann-La Roche | Unresectable/metastatic melanoma, BRAF V600E mutation-positive | Oncology | Done — see README entry #9 |
| 2011 | brentuximab vedotin (Adcetris) | BLA 125388 | 2011-08-19 | Seattle Genetics | Hodgkin lymphoma / systemic anaplastic large cell lymphoma | Oncology | Done — see README entry #10 |
| 2011 | icatibant (Firazyr) | NDA 22150 | 2011-08-25 | Shire Orphan Therapies | Acute attacks of hereditary angioedema (HAE) | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #1 |
| 2011 | crizotinib (Xalkori) | NDA 202570 | 2011-08-26 | Pfizer | ALK-positive metastatic NSCLC | Oncology | Done — see README entry #11 |
| 2011 | deferiprone (Ferriprox) | NDA 21825 | 2011-10-14 | ApoPharma | Transfusional iron overload due to thalassemia syndromes | Hematology | Done — see README entry #1 |
| 2011 | clobazam (Onfi) | NDA 202067 | 2011-10-21 | Lundbeck | Adjunctive treatment of seizures in Lennox-Gastaut syndrome | Neurology/Psychiatry | Done — see README entry #5 |
| 2011 | ruxolitinib (Jakafi) | NDA 202192 | 2011-11-16 | Incyte | Intermediate/high-risk myelofibrosis | Oncology | Done — see README entry #12 |
| 2011 | asparaginase Erwinia chrysanthemi (Erwinaze) | BLA 125359 | 2011-11-18 | EUSA Pharma | Component of multi-agent chemo for ALL (E. coli asparaginase hypersensitivity) | Oncology | Done — see README entry #13 |
| 2011 | aflibercept (Eylea) | BLA 125387 | 2011-11-18 | Regeneron Pharmaceuticals | Neovascular (wet) age-related macular degeneration | Ophthalmology | Done — see README entry #1 |
| 2012 | glucarpidase (Voraxaze) | BLA 125327 | 2012-01-17 | BTG International | Toxic plasma methotrexate concentrations (renal dysfunction) | Other/Misc | Done — see README entry #3 |
| 2012 | ingenol mebutate (Picato) | NDA 202833 | 2012-01-23 | Leo Pharma | Topical treatment of actinic keratosis | Immunology/Rheumatology/Dermatology | Done — see README entry #3 |
| 2012 | axitinib (Inlyta) | NDA 202324 | 2012-01-27 | Pfizer | Advanced renal cell carcinoma after prior systemic therapy | Oncology | Done — see README entry #14 |
| 2012 | vismodegib (Erivedge) | NDA 203388 | 2012-01-30 | Genentech | Metastatic/locally advanced basal cell carcinoma | Oncology | Done — see README entry #15 |
| 2012 | ivacaftor (Kalydeco) | NDA 203188 | 2012-01-31 | Vertex Pharmaceuticals | Cystic fibrosis, specific CFTR mutations (CFTR potentiator) | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #2 |
| 2012 | tafluprost (Zioptan) | NDA 202514 | 2012-02-10 | Merck | Elevated intraocular pressure, open-angle glaucoma/ocular hypertension | Ophthalmology | Done — see README entry #2 |
| 2012 | lucinactant (Surfaxin) | NDA 21746 | 2012-03-06 | Discovery Laboratories | Prevention of respiratory distress syndrome in premature infants | Respiratory | Done — see README entry #3 |
| 2012 | peginesatide (Omontys) | NDA 202799 | 2012-03-27 | Affymax | Anemia due to chronic kidney disease, dialysis patients | Hematology | Done — see README entry #2 |
| 2012 | florbetapir F 18 (Amyvid) | NDA 202008 | 2012-04-06 | Avid Radiopharmaceuticals | PET imaging, beta-amyloid neuritic plaque density | Neurology/Psychiatry | Done — see README entry #6 |
| 2012 | avanafil (Stendra) | NDA 202276 | 2012-04-27 | Vivus | Erectile dysfunction (PDE5 inhibitor) | Other/Misc | Done — see README entry #4 |
| 2012 | taliglucerase alfa (Elelyso) | BLA 22458 | 2012-05-01 | Protalix | Type 1 Gaucher disease, enzyme replacement therapy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #3 |
| 2012 | pertuzumab (Perjeta) | BLA 125409 | 2012-06-08 | Genentech | HER2-positive metastatic breast cancer, with trastuzumab/docetaxel | Oncology | Done — see README entry #16 |
| 2012 | lorcaserin hydrochloride (Belviq) | NDA 22529 | 2012-06-27 | Arena Pharmaceuticals | Chronic weight management, adjunct to diet/exercise | Cardiovascular/Metabolic | Done — see README entry #10 |
| 2012 | mirabegron (Myrbetriq) | NDA 202611 | 2012-06-28 | Astellas Pharma | Overactive bladder (beta-3 adrenergic agonist) | Other/Misc | Done — see README entry #5 |
| 2012 | sodium picosulfate/magnesium oxide/citric acid (Prepopik) | NDA 202535 | 2012-07-16 | Ferring Pharmaceuticals | Bowel cleansing prior to colonoscopy | Other/Misc | Done — see README entry #6 |
| 2012 | carfilzomib (Kyprolis) | NDA 202714 | 2012-07-20 | Onyx Pharmaceuticals | Multiple myeloma after ≥2 prior therapies incl. bortezomib | Oncology | Done — see README entry #17 |
| 2012 | aclidinium bromide (Tudorza Pressair) | NDA 202450 | 2012-07-23 | Forest Laboratories | Long-term maintenance treatment of bronchospasm, COPD | Respiratory | Done — see README entry #4 |
| 2012 | ziv-aflibercept (Zaltrap) | BLA 125418 | 2012-08-03 | Sanofi-Aventis | Metastatic colorectal cancer, with FOLFIRI | Oncology | Done — see README entry #18 |
| 2012 | elvitegravir/cobicistat/emtricitabine/tenofovir DF (Stribild) | NDA 203100 | 2012-08-27 | Gilead Sciences | HIV-1 infection, treatment-naive adults (complete regimen) | Infectious Disease | Done — see README entry #5 |
| 2012 | tbo-filgrastim (Granix) | BLA 125294 | 2012-08-29 | Sicor Biotech | Reduce duration of severe neutropenia, myelosuppressive chemo | Oncology | Done — see README entry #19 |
| 2012 | linaclotide (Linzess) | NDA 202811 | 2012-08-30 | Forest Laboratories | Irritable bowel syndrome with constipation / chronic idiopathic constipation | Gastroenterology | Done — see README entry #1 |
| 2012 | enzalutamide (Xtandi) | NDA 203415 | 2012-08-31 | Medivation | Metastatic castration-resistant prostate cancer, post-docetaxel | Oncology | Done — Enzalutamide/PREVAIL supplement (NDA 203415/S-003, 2014) — see README |
| 2012 | bosutinib (Bosulif) | NDA 203341 | 2012-09-04 | Wyeth Pharmaceuticals | Chronic/accelerated/blast phase Ph+ CML, resistant/intolerant to prior therapy | Oncology | Done — see README entry #20 |
| 2012 | choline C 11 (unbranded) | NDA 203155 | 2012-09-12 | Mayo Clinic | PET imaging, suspected recurrent prostate cancer | Oncology | Done — see README entry #21 |
| 2012 | teriflunomide (Aubagio) | NDA 202992 | 2012-09-12 | Sanofi-Aventis | Relapsing forms of multiple sclerosis | Neurology/Psychiatry | Done — see README entry #7 |
| 2012 | regorafenib (Stivarga) | NDA 203085 | 2012-09-27 | Bayer HealthCare Pharmaceuticals | Metastatic colorectal cancer, previously treated | Oncology | Done — see README entry #22 |
| 2012 | ocriplasmin (Jetrea) | BLA 125422 | 2012-10-17 | ThromboGenics | Symptomatic vitreomacular adhesion | Ophthalmology | Done — see README entry #3 |
| 2012 | perampanel (Fycompa) | NDA 202834 | 2012-10-22 | Eisai | Adjunctive treatment of partial-onset seizures | Neurology/Psychiatry | Done — see README entry #8 |
| 2012 | omacetaxine mepesuccinate (Synribo) | NDA 203585 | 2012-10-26 | Ivax International GmbH | Chronic/accelerated phase CML with resistance/intolerance to ≥2 TKIs | Oncology | Done — see README entry #23 |
| 2012 | tofacitinib (Xeljanz) | NDA 203214 | 2012-11-06 | Pfizer | Moderately-to-severely active rheumatoid arthritis | Immunology/Rheumatology/Dermatology | Done — see README entry #4 |
| 2012 | cabozantinib (Cometriq) | NDA 203756 | 2012-11-29 | Exelixis | Progressive, metastatic medullary thyroid cancer | Oncology | Done — see README entry #24 |
| 2012 | raxibacumab (unbranded) | BLA 125349 | 2012-12-14 | Human Genome Sciences | Inhalational anthrax (adult and pediatric), with antibacterial drugs | Infectious Disease | Done — see README entry #6 |
| 2012 | pasireotide (Signifor) | NDA 200677 | 2012-12-14 | Novartis Pharmaceuticals | Cushing's disease, when pituitary surgery not an option/failed | Endocrine | Done — see README entry #1 |
| 2012 | ponatinib (Iclusig) | NDA 203469 | 2012-12-14 | Ariad Pharmaceuticals | Chronic/accelerated/blast phase CML or Ph+ ALL | Oncology | Done — see README entry #25 |
| 2012 | lomitapide (Juxtapid) | NDA 203858 | 2012-12-21 | Aegerion Pharmaceuticals | Homozygous familial hypercholesterolemia, adjunct to lipid-lowering | Cardiovascular/Metabolic | Done — see README entry #11 |
| 2012 | teduglutide (Gattex) | NDA 203441 | 2012-12-21 | NPS Pharmaceuticals | Short Bowel Syndrome, dependent on parenteral support | Gastroenterology | Done — see README entry #2 |
| 2012 | apixaban (Eliquis) | NDA 202155 | 2012-12-28 | Bristol-Myers Squibb | Reduce risk of stroke/systemic embolism, nonvalvular atrial fibrillation | Cardiovascular/Metabolic | Done — see README entry #12 |
| 2012 | bedaquiline (Sirturo) | NDA 204384 | 2012-12-28 | Janssen Research & Development | Pulmonary multidrug-resistant tuberculosis, combination therapy | Infectious Disease | Done — see README entry #7 |
| 2012 | crofelemer (Fulyzaq) | NDA 202292 | 2012-12-31 | Salix Pharmaceuticals | Non-infectious diarrhea in HIV/AIDS patients on antiretrovirals | Infectious Disease | Done — see README entry #8 |
| 2013 | alogliptin (Nesina) | NDA 22271 | 2013-01-25 | Takeda Pharmaceuticals | Adjunct to diet/exercise for glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — see README entry #13 |
| 2013 | mipomersen sodium (Kynamro) | NDA 203568 | 2013-01-29 | Genzyme | Homozygous familial hypercholesterolemia, adjunct lipid-lowering | Cardiovascular/Metabolic | Done — see README entry #14 |
| 2013 | pomalidomide (Pomalyst) | NDA 204026 | 2013-02-08 | Celgene | Multiple myeloma after ≥2 prior therapies incl. lenalidomide/bortezomib | Oncology | Done — see README entry #26 |
| 2013 | ado-trastuzumab emtansine (Kadcyla) | BLA 125427 | 2013-02-22 | Genentech | HER2-positive metastatic breast cancer, prior trastuzumab/taxane | Oncology | Done — see README entry #27 |
| 2013 | ospemifene (Osphena) | NDA 203505 | 2013-02-26 | Shionogi | Moderate-to-severe dyspareunia due to menopause | Other/Misc | Done — see README entry #7 |
| 2013 | technetium Tc 99m tilmanocept (Lymphoseek) | NDA 202207 | 2013-03-13 | Navidea Biopharmaceuticals | Lymphatic mapping (breast cancer/melanoma) | Oncology | Done — see README entry #28 |
| 2013 | gadoterate meglumine (Dotarem) | NDA 204781 | 2013-03-20 | Guerbet | Gadolinium-based MRI contrast agent | Other/Misc | Done — see README entry #8 |
| 2013 | dimethyl fumarate (Tecfidera) | NDA 204063 | 2013-03-27 | Biogen Idec | Relapsing forms of multiple sclerosis | Neurology/Psychiatry | Done — see README entry #9 |
| 2013 | canagliflozin (Invokana) | NDA 204042 | 2013-03-29 | Janssen Research & Development | Adjunct to diet/exercise for glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — see README entry #15 |
| 2013 | fluticasone furoate/vilanterol (Breo Ellipta) | NDA 204275 | 2013-05-10 | GlaxoSmithKline | Long-term maintenance treatment of airflow obstruction, COPD | Respiratory | Done — see README entry #5 |
| 2013 | radium Ra 223 dichloride (Xofigo) | NDA 203971 | 2013-05-15 | Bayer HealthCare Pharmaceuticals | Castration-resistant prostate cancer, symptomatic bone metastases | Oncology | Done — see README entry #29 |
| 2013 | dabrafenib (Tafinlar) | NDA 202806 | 2013-05-29 | GlaxoSmithKline | Unresectable/metastatic melanoma, BRAF V600E mutation-positive | Oncology | Done — see README entry #30 |
| 2013 | trametinib (Mekinist) | NDA 204114 | 2013-05-29 | GlaxoSmithKline | Unresectable/metastatic melanoma, BRAF V600E/V600K mutation-positive | Oncology | Done — see README entry #31 |
| 2013 | afatinib (Gilotrif) | NDA 201292 | 2013-07-12 | Boehringer Ingelheim Pharmaceuticals | First-line metastatic NSCLC, EGFR exon 19 del/exon 21 L858R | Oncology | Done — see README entry #32 |
| 2013 | dolutegravir (Tivicay) | NDA 204790 | 2013-08-12 | GlaxoSmithKline | HIV-1 infection, combination antiretroviral therapy | Infectious Disease | Done — see README entry #9 |
| 2013 | vortioxetine (Brintellix) | NDA 204447 | 2013-09-30 | Takeda Pharmaceuticals | Major depressive disorder (MDD) | Neurology/Psychiatry | Done — see README entry #10 |
| 2013 | conjugated estrogens/bazedoxifene (Duavee) | NDA 22247 | 2013-10-03 | Wyeth Pharmaceuticals | Moderate-to-severe vasomotor symptoms of menopause; osteoporosis prevention | Other/Misc | Done — see README entry #9 |
| 2013 | riociguat (Adempas) | NDA 204819 | 2013-10-08 | Bayer HealthCare Pharmaceuticals | Chronic thromboembolic pulmonary hypertension (CTEPH) / PAH | Cardiovascular/Metabolic | Done — see README entry #16 |
| 2013 | macitentan (Opsumit) | NDA 204410 | 2013-10-18 | Actelion Pharmaceuticals | Pulmonary arterial hypertension (WHO Group I) | Cardiovascular/Metabolic | Done — see README entry #17 |
| 2013 | flutemetamol F 18 (Vizamyl) | NDA 203137 | 2013-10-25 | GE Healthcare | PET imaging, beta-amyloid neuritic plaque density | Neurology/Psychiatry | Done — see README entry #11 |
| 2013 | obinutuzumab (Gazyva) | BLA 125486 | 2013-11-01 | Genentech | Previously untreated chronic lymphocytic leukemia, with chlorambucil | Oncology | Done — see README entry #33 |
| 2013 | eslicarbazepine acetate (Aptiom) | NDA 22416 | 2013-11-08 | Sunovion Pharmaceuticals | Adjunctive treatment of partial-onset seizures | Neurology/Psychiatry | Done — see README entry #12 |
| 2013 | ibrutinib (Imbruvica) | NDA 205552 | 2013-11-13 | Pharmacyclics | Mantle cell lymphoma, after ≥1 prior therapy | Oncology | Done — see README entry #34 |
| 2013 | luliconazole (Luzu) | NDA 204153 | 2013-11-14 | Medicis Pharmaceutical | Topical treatment of tinea pedis/cruris/corporis | Infectious Disease | Done — see README entry #10 |
| 2013 | simeprevir (Olysio) | NDA 205123 | 2013-11-22 | Janssen Research & Development | Chronic hepatitis C (HCV), combination therapy | Infectious Disease | Done — see README entry #11 |
| 2013 | sofosbuvir (Sovaldi) | NDA 204671 | 2013-12-06 | Gilead Sciences | Chronic hepatitis C (HCV), combination therapy | Infectious Disease | Done — see README entry #12 |
| 2013 | umeclidinium/vilanterol (Anoro Ellipta) | NDA 203975 | 2013-12-18 | GlaxoSmithKline | Long-term maintenance treatment of airflow obstruction, COPD | Respiratory | Done — see README entry #6 |
| 2014 | dapagliflozin (Farxiga) | NDA 202293 | 2014-01-08 | Bristol-Myers Squibb | Glycemic control, type 2 diabetes (SGLT2 inhibitor) | Cardiovascular/Metabolic | Done — Dapagliflozin/DECLARE-TIMI 58 supplement (NDA 202293/S-018, 2019) — see README |
| 2014 | tasimelteon (Hetlioz) | NDA 205677 | 2014-01-31 | Vanda Pharmaceuticals | Non-24-Hour Sleep-Wake Disorder | Other/Misc | Done — see README entry #10 |
| 2014 | elosulfase alfa (Vimizim) | BLA 125460 | 2014-02-14 | BioMarin Pharmaceutical | Mucopolysaccharidosis type IVA (Morquio A syndrome) | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #4 |
| 2014 | droxidopa (Northera) | NDA 203202 | 2014-02-18 | Chelsea Therapeutics | Orthostatic dizziness, neurogenic orthostatic hypotension | Cardiovascular/Metabolic | Done — see README entry #18 |
| 2014 | metreleptin (Myalept) | BLA 125390 | 2014-02-24 | Amylin Pharmaceuticals | Complications of leptin deficiency, generalized lipodystrophy | Cardiovascular/Metabolic | Done — see README entry #19 |
| 2014 | miltefosine (Impavido) | NDA 204684 | 2014-03-19 | Paladin Therapeutics | Visceral, cutaneous, mucosal leishmaniasis | Infectious Disease | Done — see README entry #13 |
| 2014 | florbetaben F 18 (Neuraceq) | NDA 204677 | 2014-03-19 | Piramal Imaging | PET imaging of brain beta-amyloid plaque density | Neurology/Psychiatry | Done — see README entry #13 |
| 2014 | apremilast (Otezla) | NDA 205437 | 2014-03-21 | Celgene | Active psoriatic arthritis | Immunology/Rheumatology/Dermatology | Done — see README entry #5 |
| 2014 | albiglutide (Tanzeum) | BLA 125431 | 2014-04-15 | GlaxoSmithKline | Glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — see README entry #20 |
| 2014 | ramucirumab (Cyramza) | BLA 125477 | 2014-04-21 | Eli Lilly | Advanced/metastatic gastric or GE junction adenocarcinoma | Oncology | Done — see README entry #35 |
| 2014 | siltuximab (Sylvant) | BLA 125496 | 2014-04-23 | Janssen Biotech | Multicentric Castleman's disease (HIV/HHV-8 negative) | Oncology | Done — see README entry #36 |
| 2014 | ceritinib (Zykadia) | NDA 205755 | 2014-04-29 | Novartis Pharmaceuticals | ALK-positive metastatic NSCLC | Oncology | Done — see README entry #37 |
| 2014 | vorapaxar (Zontivity) | NDA 204886 | 2014-05-08 | Merck Sharp & Dohme | Reduction of thrombotic CV events (post-MI/PAD) | Cardiovascular/Metabolic | Done — see README entry #21 |
| 2014 | vedolizumab (Entyvio) | BLA 125476 | 2014-05-20 | Takeda Pharmaceuticals | Ulcerative colitis and Crohn's disease | Gastroenterology | Done — see README entry #3 |
| 2014 | dalbavancin (Dalvance) | NDA 21883 | 2014-05-23 | Durata Therapeutics International | Acute bacterial skin and skin structure infections | Infectious Disease | Done — see README entry #14 |
| 2014 | efinaconazole (Jublia) | NDA 203567 | 2014-06-06 | Dow Pharmaceutical Sciences | Onychomycosis of the toenail | Infectious Disease | Done — see README entry #15 |
| 2014 | tedizolid phosphate (Sivextro) | NDA 205435 | 2014-06-20 | Cubist Pharmaceuticals | Acute bacterial skin and skin structure infections | Infectious Disease | Done — see README entry #16 |
| 2014 | belinostat (Beleodaq) | NDA 206256 | 2014-07-03 | Spectrum Pharmaceuticals | Relapsed/refractory peripheral T-cell lymphoma | Oncology | Done — see README entry #38 |
| 2014 | tavaborole (Kerydin) | NDA 204427 | 2014-07-07 | Anacor Pharmaceuticals | Onychomycosis of the toenails | Infectious Disease | Done — see README entry #17 |
| 2014 | idelalisib (Zydelig) | NDA 206545 | 2014-07-23 | Gilead Sciences | Relapsed CLL / follicular lymphoma / SLL | Oncology | Done — see README entry #39 |
| 2014 | olodaterol (Striverdi Respimat) | NDA 203108 | 2014-07-31 | Boehringer Ingelheim Pharmaceuticals | Maintenance bronchodilator, COPD | Other/Misc | Done — see README entry #11 |
| 2014 | empagliflozin (Jardiance) | NDA 204629 | 2014-08-01 | Boehringer Ingelheim Pharmaceuticals | Glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — Empagliflozin/EMPA-REG OUTCOME supplement (NDA 204629/S-008, 2016) — see README |
| 2014 | oritavancin diphosphate (Orbactiv) | NDA 206334 | 2014-08-06 | The Medicines Company | Acute bacterial skin and skin structure infections | Infectious Disease | Done — see README entry #18 |
| 2014 | suvorexant (Belsomra) | NDA 204569 | 2014-08-13 | Merck | Insomnia | Neurology/Psychiatry | Done — see README entry #14 |
| 2014 | peginterferon beta-1a (Plegridy) | BLA 125499 | 2014-08-15 | Biogen Idec | Relapsing forms of multiple sclerosis | Neurology/Psychiatry | Done — see README entry #15 |
| 2014 | eliglustat (Cerdelga) | NDA 205494 | 2014-08-19 | Genzyme | Gaucher disease type 1 | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #5 |
| 2014 | pembrolizumab (Keytruda) | BLA 125514 | 2014-09-04 | Merck Sharp & Dohme | Unresectable/metastatic melanoma post-ipilimumab | Oncology | Done — Pembrolizumab/KEYNOTE-024 supplement (BLA 125514/S-012, 2016) — see README |
| 2014 | naloxegol (Movantik) | NDA 204760 | 2014-09-16 | AstraZeneca Pharmaceuticals | Opioid-induced constipation, chronic non-cancer pain | Gastroenterology | Done — see README entry #4 |
| 2014 | dulaglutide (Trulicity) | BLA 125469 | 2014-09-18 | Eli Lilly | Glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — see README entry #22 |
| 2014 | netupitant/palonosetron (Akynzeo) | NDA 205718 | 2014-10-10 | Helsinn Healthcare | Prevention of chemotherapy-induced nausea/vomiting | Oncology | Done — see README entry #40 |
| 2014 | sulfur hexafluoride lipid microspheres (Lumason) | NDA 203684 | 2014-10-10 | Bracco Diagnostics | Echocardiography contrast agent | Other/Misc | Done — see README entry #12 |
| 2014 | ledipasvir/sofosbuvir (Harvoni) | NDA 205834 | 2014-10-10 | Gilead Sciences | Chronic hepatitis C genotype 1 | Infectious Disease | Done — see README entry #19 |
| 2014 | pirfenidone (Esbriet) | NDA 22535 | 2014-10-15 | Intermune | Idiopathic pulmonary fibrosis | Other/Misc | Done — see README entry #13 |
| 2014 | nintedanib (Ofev) | NDA 205832 | 2014-10-15 | Boehringer Ingelheim Pharmaceuticals | Idiopathic pulmonary fibrosis | Other/Misc | Done — see README entry #14 |
| 2014 | blinatumomab (Blincyto) | BLA 125557 | 2014-12-03 | Amgen | Ph-negative relapsed/refractory B-cell ALL | Oncology | Done — see README entry #41 |
| 2014 | finafloxacin (Xtoro) | NDA 206307 | 2014-12-17 | Alcon Research | Acute otitis externa | Infectious Disease | Done — see README entry #20 |
| 2014 | olaparib (Lynparza) | NDA 206162 | 2014-12-19 | AstraZeneca Pharmaceuticals | gBRCA-mutated advanced ovarian cancer (maintenance) | Oncology | Done — README covers a different NDA (208558, 2017 tablet reformulation, SOLO-2) for this molecule |
| 2014 | ceftolozane/tazobactam (Zerbaxa) | NDA 206829 | 2014-12-19 | Cubist Pharmaceuticals | Complicated intra-abdominal/UTI infections | Infectious Disease | Done — see README entry #21 |
| 2014 | peramivir (Rapivab) | NDA 206426 | 2014-12-19 | BioCryst Pharmaceuticals | Acute uncomplicated influenza | Infectious Disease | Done — see README entry #22 |
| 2014 | ombitasvir/paritaprevir/ritonavir + dasabuvir (Viekira Pak) | NDA 206619 | 2014-12-19 | AbbVie | Chronic genotype 1 hepatitis C | Infectious Disease | Done — see README entry #23 |
| 2014 | nivolumab (Opdivo) | BLA 125554 | 2014-12-22 | Bristol-Myers Squibb | Unresectable/metastatic melanoma post-ipilimumab | Oncology | Done — see README entry #42 |
| 2015 | edoxaban tosylate (Savaysa) | NDA 206316 | 2015-01-08 | Daiichi Sankyo | Stroke/systemic embolism risk reduction, nonvalvular AFib | Cardiovascular/Metabolic | Done — see README entry #23 |
| 2015 | secukinumab (Cosentyx) | BLA 125504 | 2015-01-21 | Novartis Pharmaceuticals | Moderate-to-severe plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #6 |
| 2015 | parathyroid hormone (Natpara) | BLA 125511 | 2015-01-23 | NPS Pharmaceuticals | Hypocalcemia in hypoparathyroidism | Endocrine | Done — see README entry #2 |
| 2015 | palbociclib (Ibrance) | NDA 207103 | 2015-02-03 | Pfizer | ER+/HER2- metastatic breast cancer, with letrozole | Oncology | Done — see README entry #43 |
| 2015 | lenvatinib (Lenvima) | NDA 206947 | 2015-02-13 | Eisai | Radioactive-iodine-refractory differentiated thyroid cancer | Oncology | Done — see README entry #44 |
| 2015 | panobinostat (Farydak) | NDA 205353 | 2015-02-23 | Novartis Pharmaceuticals | Multiple myeloma, with bortezomib/dexamethasone | Oncology | Done — see README entry #45 |
| 2015 | ceftazidime/avibactam (Avycaz) | NDA 206494 | 2015-02-25 | Forest Research Institute | Complicated intra-abdominal/UTI infections | Infectious Disease | Done — see README entry #24 |
| 2015 | isavuconazonium sulfate (Cresemba) | NDA 207500 | 2015-03-06 | Astellas Pharma | Invasive aspergillosis/mucormycosis | Infectious Disease | Done — see README entry #25 |
| 2015 | dinutuximab (Unituxin) | BLA 125516 | 2015-03-10 | United Therapeutics | High-risk pediatric neuroblastoma | Oncology | Done — see README entry #46 |
| 2015 | cholic acid (Cholbam) | NDA 205750 | 2015-03-17 | Asklepion Pharmaceuticals | Bile acid synthesis disorders | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #6 |
| 2015 | ivabradine (Corlanor) | NDA 206143 | 2015-04-15 | Amgen | Reduce hospitalization risk, stable symptomatic chronic heart failure | Cardiovascular/Metabolic | Done — see README entry #24 |
| 2015 | deoxycholic acid (Kybella) | NDA 206333 | 2015-04-29 | Kythera Biopharmaceuticals | Submental fat (aesthetic) | Other/Misc | Done — see README entry #15 |
| 2015 | eluxadoline (Viberzi) | NDA 206940 | 2015-05-27 | Furiex Pharmaceuticals | Irritable bowel syndrome with diarrhea | Gastroenterology | Done — see README entry #5 |
| 2015 | cangrelor (Kengreal) | NDA 204958 | 2015-06-22 | The Medicines Company | Adjunct to PCI, reduce periprocedural MI/thrombotic events | Cardiovascular/Metabolic | Done — see README entry #25 |
| 2015 | lumacaftor/ivacaftor (Orkambi) | NDA 206038 | 2015-07-02 | Vertex Pharmaceuticals | Cystic fibrosis, F508del homozygous | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #7 |
| 2015 | sacubitril/valsartan (Entresto) | NDA 207620 | 2015-07-07 | Novartis Pharmaceuticals | Reduce CV death/HF hospitalization, chronic HF (NYHA II-IV) | Cardiovascular/Metabolic | Done — Sacubitril/valsartan/PARADIGM-HF (NDA 207620, original approval, 2015) — see README |
| 2015 | brexpiprazole (Rexulti) | NDA 205422 | 2015-07-10 | Otsuka Pharmaceutical | Adjunctive MDD treatment; schizophrenia | Neurology/Psychiatry | Done — see README entry #16 |
| 2015 | sonidegib (Odomzo) | NDA 205266 | 2015-07-24 | Novartis Pharmaceuticals | Locally advanced basal cell carcinoma | Oncology | Done — see README entry #47 |
| 2015 | alirocumab (Praluent) | BLA 125559 | 2015-07-24 | Sanofi-Aventis | Adjunct lipid-lowering, HeFH/ASCVD | Cardiovascular/Metabolic | Done — see README entry #26 |
| 2015 | daclatasvir (Daklinza) | NDA 206843 | 2015-07-24 | Bristol-Myers Squibb | Chronic hepatitis C genotype 3, with sofosbuvir | Infectious Disease | Done — see README entry #26 |
| 2015 | flibanserin (Addyi) | NDA 22526 | 2015-08-18 | Sprout Pharmaceuticals | Premenopausal hypoactive sexual desire disorder | Other/Misc | Done — see README entry #16 |
| 2015 | evolocumab (Repatha) | BLA 125522 | 2015-08-27 | Amgen | Adjunct lipid-lowering, HeFH/ASCVD | Cardiovascular/Metabolic | Done — Evolocumab/FOURIER supplement (BLA 125522/S-013, 2017) — see README |
| 2015 | rolapitant (Varubi) | NDA 206500 | 2015-09-01 | Tesaro | Prevention of delayed chemotherapy-induced nausea/vomiting | Oncology | Done — see README entry #48 |
| 2015 | uridine triacetate (Xuriden) | NDA 208169 | 2015-09-04 | Wellstat Therapeutics | Hereditary orotic aciduria | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #8 |
| 2015 | cariprazine (Vraylar) | NDA 204370 | 2015-09-17 | Forest Laboratories | Schizophrenia; bipolar I manic/mixed episodes | Neurology/Psychiatry | Done — see README entry #17 |
| 2015 | trifluridine/tipiracil (Lonsurf) | NDA 207981 | 2015-09-22 | Taiho Oncology | Metastatic colorectal cancer | Oncology | Done — see README entry #49 |
| 2015 | insulin degludec (Tresiba) | BLA 203314 | 2015-09-25 | Novo Nordisk | Glycemic control in diabetes mellitus | Cardiovascular/Metabolic | Done — see README entry #27 |
| 2015 | aripiprazole lauroxil (Aristada) | NDA 207533 | 2015-10-05 | Alkermes | Schizophrenia | Neurology/Psychiatry | Done — see README entry #18 |
| 2015 | idarucizumab (Praxbind) | BLA 761025 | 2015-10-16 | Boehringer Ingelheim Pharmaceuticals | Reversal of dabigatran anticoagulant effect | Cardiovascular/Metabolic | Done — see README entry #28 |
| 2015 | patiromer (Veltassa) | NDA 205739 | 2015-10-21 | Relypsa | Hyperkalemia | Cardiovascular/Metabolic | Done — see README entry #29 |
| 2015 | asfotase alfa (Strensiq) | BLA 125513 | 2015-10-23 | Alexion Pharmaceuticals | Perinatal/infantile/juvenile-onset hypophosphatasia | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #9 |
| 2015 | trabectedin (Yondelis) | NDA 207953 | 2015-10-23 | Janssen Products | Unresectable/metastatic liposarcoma or leiomyosarcoma | Oncology | Done — see README entry #50 |
| 2015 | mepolizumab (Nucala) | BLA 125526 | 2015-11-04 | GlaxoSmithKline | Severe eosinophilic asthma, add-on maintenance | Immunology/Rheumatology/Dermatology | Done — see README entry #7 |
| 2015 | elvitegravir/cobicistat/emtricitabine/tenofovir alafenamide (Genvoya) | NDA 207561 | 2015-11-05 | Gilead Sciences | HIV-1 infection, complete regimen | Infectious Disease | Done — see README entry #27 |
| 2015 | cobimetinib (Cotellic) | NDA 206192 | 2015-11-10 | Genentech | BRAF V600E/K-mutant unresectable/metastatic melanoma | Oncology | Done — see README entry #51 |
| 2015 | osimertinib (Tagrisso) | NDA 208065 | 2015-11-13 | AstraZeneca Pharmaceuticals | EGFR T790M-mutation-positive metastatic NSCLC | Oncology | Done — Osimertinib/FLAURA supplement (NDA 208065/S-008, 2018) — see README |
| 2015 | daratumumab (Darzalex) | BLA 761036 | 2015-11-16 | Janssen Biotech | Multiple myeloma, >=3 prior lines | Oncology | Done — see README entry #52 |
| 2015 | ixazomib (Ninlaro) | NDA 208462 | 2015-11-20 | Millennium Pharmaceuticals | Multiple myeloma, with lenalidomide/dexamethasone | Oncology | Done — see README entry #53 |
| 2015 | necitumumab (Portrazza) | BLA 125547 | 2015-11-24 | Eli Lilly | First-line metastatic squamous NSCLC | Oncology | Done — see README entry #54 |
| 2015 | elotuzumab (Empliciti) | BLA 761035 | 2015-11-30 | Bristol-Myers Squibb | Multiple myeloma, 1-3 prior lines | Oncology | Done — see README entry #55 |
| 2015 | sebelipase alfa (Kanuma) | BLA 125561 | 2015-12-08 | Alexion Pharmaceuticals | Lysosomal acid lipase deficiency | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #10 |
| 2015 | alectinib (Alecensa) | NDA 208434 | 2015-12-11 | Hoffmann-La Roche | ALK-positive metastatic NSCLC post-crizotinib | Oncology | Done — see README entry #56 |
| 2015 | sugammadex (Bridion) | NDA 22225 | 2015-12-15 | Merck | Reversal of neuromuscular blockade | Other/Misc | Done — see README entry #17 |
| 2015 | selexipag (Uptravi) | NDA 207947 | 2015-12-21 | Actelion Pharmaceuticals | Pulmonary arterial hypertension | Cardiovascular/Metabolic | Done — see README entry #30 |
| 2015 | lesinurad (Zurampic) | NDA 207988 | 2015-12-22 | Ardea Biosciences | Hyperuricemia with gout, with a xanthine oxidase inhibitor | Other/Misc | Done — see README entry #18 |
| 2016 | elbasvir/grazoprevir (Zepatier) | NDA 208261 | 2016-01-28 | Merck | Chronic hepatitis C genotype 1 or 4 | Infectious Disease | Done — see README entry #28 |
| 2016 | brivaracetam (Briviact) | NDA 205836 | 2016-02-18 | UCB | Adjunctive therapy, partial-onset seizures | Neurology/Psychiatry | Done — see README entry #19 |
| 2016 | obiltoxaximab (Anthim) | BLA 125509 | 2016-03-18 | Elusys Therapeutics | Inhalational anthrax, with antibacterials | Infectious Disease | Done — see README entry #29 |
| 2016 | ixekizumab (Taltz) | BLA 125521 | 2016-03-22 | Eli Lilly | Moderate-to-severe plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #8 |
| 2016 | reslizumab (Cinqair) | BLA 761033 | 2016-03-23 | Teva Respiratory | Severe eosinophilic asthma, add-on maintenance | Immunology/Rheumatology/Dermatology | Done — see README entry #9 |
| 2016 | defibrotide sodium (Defitelio) | NDA 208114 | 2016-03-30 | Jazz Pharmaceuticals | Hepatic veno-occlusive disease | Hematology | Done — see README entry #3 |
| 2016 | venetoclax (Venclexta) | NDA 208573 | 2016-04-11 | AbbVie | CLL with 17p deletion, >=1 prior therapy | Oncology | Done — Venetoclax/CLL14 supplement (NDA 208573/S-013, 2019) — see README |
| 2016 | pimavanserin (Nuplazid) | NDA 207318 | 2016-04-29 | Acadia Pharmaceuticals | Hallucinations/delusions of Parkinson's disease psychosis | Neurology/Psychiatry | Done — see README entry #20 |
| 2016 | atezolizumab (Tecentriq) | BLA 761034 | 2016-05-18 | Genentech | Locally advanced/metastatic urothelial carcinoma | Oncology | Done — see README entry #57 |
| 2016 | daclizumab (Zinbryta) | BLA 761029 | 2016-05-27 | Biogen | Relapsing forms of multiple sclerosis | Neurology/Psychiatry | Done — see README entry #21 |
| 2016 | fluciclovine F 18 (Axumin) | NDA 208054 | 2016-05-27 | Blue Earth Diagnostics | PET imaging, suspected recurrent prostate cancer | Oncology | Done — see README entry #58 |
| 2016 | obeticholic acid (Ocaliva) | NDA 207999 | 2016-05-27 | Intercept Pharmaceuticals | Primary biliary cholangitis, with UDCA | Gastroenterology | Done — see README entry #6 |
| 2016 | gallium Ga 68 dotatate (Netspot) | NDA 208547 | 2016-06-01 | Advanced Accelerator Applications | PET imaging, somatostatin-receptor-positive NETs | Oncology | Done — see README entry #59 |
| 2016 | sofosbuvir/velpatasvir (Epclusa) | NDA 208341 | 2016-06-28 | Gilead Sciences | Chronic hepatitis C, genotypes 1-6 | Infectious Disease | Done — see README entry #30 |
| 2016 | lifitegrast (Xiidra) | NDA 208073 | 2016-07-11 | Shire Development | Dry eye disease | Ophthalmology | Done — see README entry #4 |
| 2016 | lixisenatide (Adlyxin) | BLA 208471 | 2016-07-27 | Sanofi | Glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — see README entry #31 |
| 2016 | eteplirsen (Exondys 51) | NDA 206488 | 2016-09-19 | Sarepta Therapeutics | Duchenne muscular dystrophy, exon-51-amenable mutation | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #11 |
| 2016 | olaratumab (Lartruvo) | BLA 761038 | 2016-10-19 | Eli Lilly | Soft tissue sarcoma, with doxorubicin | Oncology | Done — see README entry #60 |
| 2016 | bezlotoxumab (Zinplava) | BLA 761046 | 2016-10-21 | Merck | Reduce recurrence of C. difficile infection | Infectious Disease | Done — see README entry #31 |
| 2016 | crisaborole (Eucrisa) | NDA 207695 | 2016-12-14 | Anacor Pharmaceuticals | Mild-to-moderate atopic dermatitis | Immunology/Rheumatology/Dermatology | Done — see README entry #10 |
| 2016 | rucaparib (Rubraca) | NDA 209115 | 2016-12-19 | Clovis Oncology | BRCA-mutated advanced ovarian cancer | Oncology | Done — see README entry #61 |
| 2016 | nusinersen (Spinraza) | NDA 209531 | 2016-12-23 | Biogen | Spinal muscular atrophy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #12 |
| 2017 | plecanatide (Trulance) | NDA 208745 | 2017-01-19 | Synergy Pharmaceuticals | Chronic idiopathic constipation (CIC) | Gastroenterology | Done — see README entry #7 |
| 2017 | etelcalcetide (Parsabiv) | NDA 208325 | 2017-02-07 | Amgen | Secondary hyperparathyroidism in CKD on hemodialysis | Endocrine | Done — see README entry #3 |
| 2017 | deflazacort (Emflaza) | NDA 208684 | 2017-02-09 | Marathon Pharmaceuticals | Duchenne muscular dystrophy (DMD), age 5+ | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #13 |
| 2017 | brodalumab (Siliq) | BLA 761032 | 2017-02-15 | Valeant Pharmaceuticals | Moderate-to-severe plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #11 |
| 2017 | telotristat ethyl (Xermelo) | NDA 208794 | 2017-02-28 | Lexicon Pharmaceuticals | Carcinoid syndrome diarrhea, with SSA therapy | Oncology | Done — see README entry #62 |
| 2017 | ribociclib (Kisqali) | NDA 209092 | 2017-03-13 | Novartis Pharmaceuticals | HR+/HER2- advanced/metastatic breast cancer, with AI | Oncology | Done — see README entry #63 |
| 2017 | safinamide (Xadago) | NDA 207145 | 2017-03-21 | Newron Pharmaceuticals | Adjunct to levodopa/carbidopa, Parkinson's "off" episodes | Neurology/Psychiatry | Done — see README entry #22 |
| 2017 | avelumab (Bavencio) | BLA 761049 | 2017-03-23 | EMD Serono | Metastatic Merkel cell carcinoma (MCC) | Oncology | Done — see README entry #64 |
| 2017 | naldemedine (Symproic) | NDA 208854 | 2017-03-23 | Shionogi | Opioid-induced constipation (OIC), chronic non-cancer pain | Gastroenterology | Done — see README entry #8 |
| 2017 | niraparib (Zejula) | NDA 208447 | 2017-03-27 | Tesaro | Maintenance, recurrent ovarian/fallopian/peritoneal cancer | Oncology | Done — see README entry #65 |
| 2017 | ocrelizumab (Ocrevus) | BLA 761053 | 2017-03-28 | Genentech | Relapsing or primary progressive multiple sclerosis | Neurology/Psychiatry | Done — see README entry #23 |
| 2017 | dupilumab (Dupixent) | BLA 761055 | 2017-03-28 | Regeneron Pharmaceuticals | Moderate-to-severe atopic dermatitis | Immunology/Rheumatology/Dermatology | Done — see README entry #12 |
| 2017 | deutetrabenazine (Austedo) | NDA 208082 | 2017-04-03 | Teva Pharmaceuticals | Chorea associated with Huntington's disease | Neurology/Psychiatry | Done — see README entry #24 |
| 2017 | valbenazine (Ingrezza) | NDA 209241 | 2017-04-11 | Neurocrine Biosciences | Tardive dyskinesia | Neurology/Psychiatry | Done — see README entry #25 |
| 2017 | cerliponase alfa (Brineura) | BLA 761052 | 2017-04-27 | BioMarin Pharmaceutical | Slow loss of ambulation, CLN2 (late infantile Batten disease) | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #14 |
| 2017 | midostaurin (Rydapt) | NDA 207997 | 2017-04-28 | Novartis Pharmaceuticals | Newly diagnosed FLT3-mutated AML, with chemo | Oncology | Done — see README entry #66 |
| 2017 | abaloparatide (Tymlos) | NDA 208743 | 2017-04-28 | Radius Health | Postmenopausal osteoporosis, high fracture risk | Endocrine | Done — see README entry #4 |
| 2017 | brigatinib (Alunbrig) | NDA 208772 | 2017-04-28 | Ariad Pharmaceuticals | ALK-positive metastatic NSCLC | Oncology | Done — see README entry #67 |
| 2017 | durvalumab (Imfinzi) | BLA 761069 | 2017-05-01 | AstraZeneca UK Limited | Locally advanced/metastatic urothelial carcinoma | Oncology | Done — see README entry #68 |
| 2017 | edaravone (Radicava) | NDA 209176 | 2017-05-05 | Mitsubishi Tanabe Pharma Development | Amyotrophic lateral sclerosis (ALS) | Neurology/Psychiatry | Done — see README entry #26 |
| 2017 | sarilumab (Kevzara) | BLA 761037 | 2017-05-22 | Sanofi | Moderately-to-severely active rheumatoid arthritis | Immunology/Rheumatology/Dermatology | Done — see README entry #13 |
| 2017 | delafloxacin (Baxdela) | NDA 208610 | 2017-06-19 | Melinta Therapeutics | Acute bacterial skin and skin structure infections (ABSSSI) | Infectious Disease | Done — see README entry #32 |
| 2017 | betrixaban (Bevyxxa) | NDA 208383 | 2017-06-23 | Portola Pharmaceuticals | VTE prophylaxis, hospitalized acute medical illness | Cardiovascular/Metabolic | Done — see README entry #32 |
| 2017 | guselkumab (Tremfya) | BLA 761061 | 2017-07-13 | Janssen Biotech | Moderate-to-severe plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #14 |
| 2017 | neratinib (Nerlynx) | NDA 208051 | 2017-07-17 | Puma Biotechnology | Extended adjuvant, early-stage HER2+ breast cancer | Oncology | Done — see README entry #69 |
| 2017 | sofosbuvir/velpatasvir/voxilaprevir (Vosevi) | NDA 209195 | 2017-07-18 | Gilead Sciences | Chronic hepatitis C (HCV) | Infectious Disease | Done — see README entry #33 |
| 2017 | enasidenib (Idhifa) | NDA 209606 | 2017-08-01 | Celgene | Relapsed/refractory AML, IDH2 mutation | Oncology | Done — see README entry #70 |
| 2017 | glecaprevir/pibrentasvir (Mavyret) | NDA 209394 | 2017-08-03 | AbbVie | Chronic hepatitis C (HCV) | Infectious Disease | Done — see README entry #34 |
| 2017 | inotuzumab ozogamicin (Besponsa) | BLA 761040 | 2017-08-17 | Pfizer | Relapsed/refractory B-cell precursor ALL | Oncology | Done — see README entry #71 |
| 2017 | meropenem/vaborbactam (Vabomere) | NDA 209776 | 2017-08-29 | The Medicines Company | Complicated urinary tract infections (cUTI) | Infectious Disease | Done — see README entry #35 |
| 2017 | benznidazole (unbranded) | NDA 209570 | 2017-08-29 | Chemo Research, S.L. | Chagas disease, pediatric 2-12 | Infectious Disease | Done — see README entry #36 |
| 2017 | copanlisib (Aliqopa) | NDA 209936 | 2017-09-14 | Bayer HealthCare Pharmaceuticals | Relapsed follicular lymphoma (FL) | Oncology | Done — see README entry #72 |
| 2017 | secnidazole (Solosec) | NDA 209363 | 2017-09-15 | Symbiomix Therapeutics | Bacterial vaginosis | Infectious Disease | Done — see README entry #37 |
| 2017 | abemaciclib (Verzenio) | NDA 208716 | 2017-09-28 | Eli Lilly | HR+/HER2- advanced/metastatic breast cancer, with fulvestrant | Oncology | Done — see README entry #73 |
| 2017 | acalabrutinib (Calquence) | NDA 210259 | 2017-10-31 | Acerta Pharma B.V. | Mantle cell lymphoma (MCL) | Oncology | Done — see README entry #74 |
| 2017 | latanoprostene bunod (Vyzulta) | NDA 207795 | 2017-11-02 | Bausch & Lomb | Elevated IOP, open-angle glaucoma | Ophthalmology | Done — see README entry #5 |
| 2017 | letermovir (Prevymis) | NDA 209939 | 2017-11-08 | Merck | CMV prophylaxis, CMV-seropositive transplant recipients | Infectious Disease | Done — see README entry #38 |
| 2017 | benralizumab (Fasenra) | BLA 761070 | 2017-11-14 | AstraZeneca Pharmaceuticals | Add-on maintenance, severe eosinophilic asthma | Immunology/Rheumatology/Dermatology | Done — see README entry #15 |
| 2017 | vestronidase alfa-vjbk (Mepsevii) | BLA 761047 | 2017-11-15 | Ultragenyx Pharmaceutical | Mucopolysaccharidosis VII (Sly syndrome) | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #15 |
| 2017 | emicizumab-kxwh (Hemlibra) | BLA 761083 | 2017-11-16 | Genentech | Routine prophylaxis, hemophilia A | Hematology | Done — see README entry #4 |
| 2017 | semaglutide (Ozempic) | NDA 209637 | 2017-12-05 | Novo Nordisk | Glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — see README entry #33 |
| 2017 | ozenoxacin (Xepi) | NDA 208945 | 2017-12-11 | Ferrer Internacional S.A. | Topical treatment of impetigo | Infectious Disease | Done — see README entry #39 |
| 2017 | netarsudil (Rhopressa) | NDA 208254 | 2017-12-18 | Aerie Pharmaceuticals | Elevated IOP, open-angle glaucoma | Ophthalmology | Done — see README entry #6 |
| 2017 | ertugliflozin (Steglatro) | NDA 209803 | 2017-12-19 | Merck Sharp & Dohme | Glycemic control, type 2 diabetes | Cardiovascular/Metabolic | Done — see README entry #34 |
| 2017 | macimorelin (Macrilen) | NDA 205598 | 2017-12-20 | Aeterna Zentaris GmBH | Diagnosis of adult growth hormone deficiency | Endocrine | Done — see README entry #5 |
| 2017 | angiotensin II (Giapreza) | NDA 209360 | 2017-12-21 | La Jolla Pharmaceuticals | Septic/other distributive shock, increase BP | Cardiovascular/Metabolic | Done — see README entry #35 |
| 2018 | lutetium Lu 177 dotatate (Lutathera) | NDA 208700 | 2018-01-26 | Advanced Accelerator Applications | Somatostatin receptor-positive GEP-NETs | Oncology | Done — see README entry #75 |
| 2018 | bictegravir/emtricitabine/tenofovir alafenamide (Biktarvy) | NDA 210251 | 2018-02-07 | Gilead Sciences | HIV-1 infection, complete regimen | Infectious Disease | Done — see README entry #40 |
| 2018 | tezacaftor/ivacaftor; ivacaftor (Symdeko) | NDA 210491 | 2018-02-12 | Vertex Pharmaceuticals | Cystic fibrosis, F508del homozygous, 12+ | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #16 |
| 2018 | apalutamide (Erleada) | NDA 210951 | 2018-02-14 | Janssen Biotech | Non-metastatic castration-resistant prostate cancer | Oncology | Done — see README entry #76 |
| 2018 | ibalizumab-uiyk (Trogarzo) | BLA 761065 | 2018-03-06 | TaiMed Biologics | HIV-1 infection, combination therapy | Infectious Disease | Done — see README entry #41 |
| 2018 | tildrakizumab-asmn (Ilumya) | BLA 761067 | 2018-03-20 | Merck Sharp & Dohme | Moderate-to-severe plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #16 |
| 2018 | burosumab-twza (Crysvita) | BLA 761068 | 2018-04-17 | Ultragenyx Pharmaceutical | X-linked hypophosphatemia (XLH) | Endocrine | Done — see README entry #6 |
| 2018 | fostamatinib disodium hexahydrate (Tavalisse) | NDA 209299 | 2018-04-17 | Rigel Pharmaceuticals | Chronic immune thrombocytopenia (ITP) | Hematology | Done — see README entry #5 |
| 2018 | fosnetupitant/palonosetron (Akynzeo) | NDA 210493 | 2018-04-19 | Helsinn Healthcare | Chemotherapy-associated nausea/vomiting | Oncology | Done — see README entry #77 |
| 2018 | lofexidine (Lucemyra) | NDA 209229 | 2018-05-16 | US World Meds | Mitigation of opioid withdrawal symptoms | Other/Misc | Done — see README entry #19 |
| 2018 | erenumab-aooe (Aimovig) | BLA 761077 | 2018-05-17 | Amgen | Preventive treatment of migraine | Neurology/Psychiatry | Done — see README entry #27 |
| 2018 | sodium zirconium cyclosilicate (Lokelma) | NDA 207078 | 2018-05-18 | AstraZeneca Pharmaceuticals | Hyperkalemia | Cardiovascular/Metabolic | Done — see README entry #36 |
| 2018 | avatrombopag (Doptelet) | NDA 210238 | 2018-05-21 | Dova Pharmaceuticals | Thrombocytopenia, chronic liver disease pre-procedure | Hematology | Done — see README entry #6 |
| 2018 | pegvaliase-pqpz (Palynziq) | BLA 761079 | 2018-05-24 | BioMarin Pharmaceutical | Reduce blood phenylalanine, phenylketonuria (PKU) | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #17 |
| 2018 | baricitinib (Olumiant) | NDA 207924 | 2018-05-31 | Eli Lilly | Moderately-to-severely active rheumatoid arthritis | Immunology/Rheumatology/Dermatology | Done — see README entry #17 |
| 2018 | moxidectin (unbranded) | NDA 210867 | 2018-06-13 | Medicines Development For Global Health | Onchocerciasis, patients 12+ | Infectious Disease | Done — see README entry #42 |
| 2018 | plazomicin (Zemdri) | NDA 210303 | 2018-06-25 | Achaogen | Complicated urinary tract infections (cUTI) | Infectious Disease | Done — see README entry #43 |
| 2018 | cannabidiol (Epidiolex) | NDA 210365 | 2018-06-25 | GW Pharmaceuticals | Seizures, Lennox-Gastaut or Dravet syndrome | Neurology/Psychiatry | Done — see README entry #28 |
| 2018 | encorafenib (Braftovi) | NDA 210496 | 2018-06-27 | Array Biopharma | Unresectable/metastatic BRAF-mutant melanoma, with binimetinib | Oncology | Done — see README entry #78 |
| 2018 | binimetinib (Mektovi) | NDA 210498 | 2018-06-27 | Array Biopharma | Unresectable/metastatic BRAF-mutant melanoma, with encorafenib | Oncology | Done — see README entry #79 |
| 2018 | tecovirimat (Tpoxx) | NDA 208627 | 2018-07-13 | SIGA Technologies | Human smallpox disease | Infectious Disease | Done — see README entry #44 |
| 2018 | tafenoquine (Krintafel) | NDA 210795 | 2018-07-20 | GlaxoSmithKline | Radical cure of Plasmodium vivax malaria | Infectious Disease | Done — see README entry #45 |
| 2018 | ivosidenib (Tibsovo) | NDA 211192 | 2018-07-20 | Agios Pharmaceuticals | Relapsed/refractory AML, IDH1 mutation | Oncology | Done — see README entry #80 |
| 2018 | elagolix (Orilissa) | NDA 210450 | 2018-07-23 | AbbVie | Moderate-severe pain, endometriosis | Gastroenterology | Done — see README entry #9 |
| 2018 | fish oil triglycerides (Omegaven) | NDA 210589 | 2018-07-27 | Fresenius Kabi | Pediatric PN-associated cholestasis, calorie/FA source | Other/Misc | Done — see README entry #20 |
| 2018 | lusutrombopag (Mulpleta) | NDA 210923 | 2018-07-31 | Shionogi | Thrombocytopenia, chronic liver disease pre-procedure | Hematology | Done — see README entry #7 |
| 2018 | mogamulizumab-kpkc (Poteligeo) | BLA 761051 | 2018-08-08 | Kyowa Kirin Pharmaceutical Development | Relapsed/refractory mycosis fungoides/Sézary syndrome | Oncology | Done — see README entry #81 |
| 2018 | migalastat (Galafold) | NDA 208623 | 2018-08-10 | Amicus Therapeutics | Fabry disease, amenable GLA mutation | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #18 |
| 2018 | segesterone acetate/ethinyl estradiol (Annovera) | NDA 209627 | 2018-08-10 | The Population Council | Contraception | Other/Misc | Done — see README entry #21 |
| 2018 | patisiran (Onpattro) | NDA 210922 | 2018-08-10 | Alnylam Pharmaceuticals | Polyneuropathy, hereditary transthyretin amyloidosis | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #19 |
| 2018 | stiripentol (Diacomit) | NDA 206709 | 2018-08-20 | Biocodex SA | Seizures, Dravet syndrome | Neurology/Psychiatry | Done — see README entry #29 |
| 2018 | cenegermin-bkbj (Oxervate) | BLA 761094 | 2018-08-22 | Dompé farmaceutici S.p.A. | Neurotrophic keratitis | Ophthalmology | Done — see README entry #7 |
| 2018 | lanadelumab-flyo (Takhzyro) | BLA 761090 | 2018-08-23 | Dyax Corporation | Prophylaxis of hereditary angioedema (HAE) attacks | Immunology/Rheumatology/Dermatology | Done — see README entry #18 |
| 2018 | eravacycline (Xerava) | NDA 211109 | 2018-08-27 | Tetraphase Pharmaceuticals | Complicated intra-abdominal infections (cIAI) | Infectious Disease | Done — see README entry #46 |
| 2018 | doravirine (Pifeltro) | NDA 210806 | 2018-08-30 | Merck Sharp & Dohme | HIV-1 infection, combination therapy | Infectious Disease | Done — see README entry #47 |
| 2018 | moxetumomab pasudotox-tdfk (Lumoxiti) | BLA 761104 | 2018-09-13 | AstraZeneca Pharmaceuticals | Relapsed/refractory hairy cell leukemia (HCL) | Oncology | Done — see README entry #82 |
| 2018 | fremanezumab-vfrm (Ajovy) | BLA 761089 | 2018-09-14 | Teva Pharmaceuticals | Preventive treatment of migraine | Neurology/Psychiatry | Done — see README entry #30 |
| 2018 | duvelisib (Copiktra) | NDA 211155 | 2018-09-24 | Verastem | Relapsed/refractory CLL/SLL, ≥2 prior therapies | Oncology | Done — see README entry #83 |
| 2018 | galcanezumab-gnlm (Emgality) | BLA 761063 | 2018-09-27 | Eli Lilly | Preventive treatment of migraine | Neurology/Psychiatry | Done — see README entry #31 |
| 2018 | dacomitinib (Vizimpro) | NDA 211288 | 2018-09-27 | Pfizer | First-line metastatic EGFR-mutant NSCLC | Oncology | Done — see README entry #84 |
| 2018 | cemiplimab-rwlc (Libtayo) | BLA 761097 | 2018-09-28 | Regeneron Pharmaceuticals | Metastatic/locally advanced cutaneous SCC | Oncology | Done — see README entry #85 |
| 2018 | sarecycline (Seysara) | NDA 209521 | 2018-10-01 | Allergan | Inflammatory lesions of acne vulgaris | Immunology/Rheumatology/Dermatology | Done — see README entry #19 |
| 2018 | omadacycline (Nuzyra) | NDA 209816 | 2018-10-02 | Paratek Pharmaceuticals | Community-acquired bacterial pneumonia (CABP) | Infectious Disease | Done — see README entry #48 |
| 2018 | elapegademase-lvlr (Revcovi) | BLA 761092 | 2018-10-05 | Leadiant Biosciences | ADA-SCID | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #20 |
| 2018 | inotersen (Tegsedi) | NDA 211172 | 2018-10-05 | Ionis Pharmaceuticals | Polyneuropathy, hereditary transthyretin amyloidosis | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #21 |
| 2018 | talazoparib (Talzenna) | NDA 211651 | 2018-10-16 | Pfizer | gBRCA-mutated HER2-negative breast cancer | Oncology | Done — see README entry #86 |
| 2018 | baloxavir marboxil (Xofluza) | NDA 210854 | 2018-10-24 | Shionogi | Acute uncomplicated influenza | Infectious Disease | Done — see README entry #49 |
| 2018 | lorlatinib (Lorbrena) | NDA 210868 | 2018-11-02 | Pfizer | ALK-positive metastatic NSCLC | Oncology | Done — see README entry #87 |
| 2018 | revefenacin (Yupelri) | NDA 210598 | 2018-11-09 | Theravance Biopharma | Maintenance treatment of COPD | Other/Misc | Done — see README entry #22 |
| 2018 | rifamycin (Aemcolo) | NDA 210910 | 2018-11-16 | Cosmo Technologies | Travelers' diarrhea | Gastroenterology | Done — see README entry #10 |
| 2018 | emapalumab-lzsg (Gamifant) | BLA 761107 | 2018-11-20 | Novimmune S.A. | Primary hemophagocytic lymphohistiocytosis (HLH) | Other/Misc | Done — see README entry #23 |
| 2018 | glasdegib (Daurismo) | NDA 210656 | 2018-11-21 | Pfizer | Newly-diagnosed AML, with low-dose cytarabine | Oncology | Done — see README entry #88 |
| 2018 | larotrectinib (Vitrakvi) | NDA 210861 | 2018-11-26 | Loxo Oncology | Solid tumors with NTRK gene fusion | Oncology | Done — see README entry #89 |
| 2018 | amifampridine (Firdapse) | NDA 208078 | 2018-11-28 | Catalyst Pharmaceuticals | Lambert-Eaton myasthenic syndrome (LEMS) | Neurology/Psychiatry | Done — see README entry #32 |
| 2018 | gilteritinib (Xospata) | NDA 211349 | 2018-11-28 | Astellas Pharma | Relapsed/refractory FLT3-mutated AML | Oncology | Done — see README entry #90 |
| 2018 | prucalopride (Motegrity) | NDA 210166 | 2018-12-14 | Shire Development | Chronic idiopathic constipation (CIC) | Gastroenterology | Done — see README entry #11 |
| 2018 | calaspargase pegol-mknl (Asparlas) | BLA 761102 | 2018-12-20 | Servier Pharmaceuticals | Multi-agent regimen, ALL | Oncology | Done — see README entry #91 |
| 2018 | ravulizumab-cwvz (Ultomiris) | BLA 761108 | 2018-12-21 | Alexion Pharmaceuticals | Paroxysmal nocturnal hemoglobinuria (PNH) | Hematology | Done — see README entry #8 |
| 2018 | tagraxofusp-erzs (Elzonris) | BLA 761116 | 2018-12-21 | Stemline Therapeutics | Blastic plasmacytoid dendritic cell neoplasm (BPDCN) | Oncology | Done — see README entry #92 |
| 2019 | prabotulinumtoxinA-xvfs (Jeuveau) | BLA 761085 | 2019-02-01 | Evolus | Temporary improvement of glabellar lines | Other/Misc | Done — see README entry #24 |
| 2019 | caplacizumab-yhdp (Cablivi) | BLA 761112 | 2019-02-06 | Ablynx NV | Acquired thrombotic thrombocytopenic purpura (aTTP) | Hematology | Done — see README entry #9 |
| 2019 | triclabendazole (Egaten) | NDA 208711 | 2019-02-13 | Novartis Pharmaceuticals | Fascioliasis, patients 6+ | Infectious Disease | Done — see README entry #50 |
| 2019 | brexanolone (Zulresso) | NDA 211371 | 2019-03-19 | Sage Therapeutics | Postpartum depression (PPD) | Neurology/Psychiatry | Done — see README entry #33 |
| 2019 | solriamfetol (Sunosi) | NDA 211230 | 2019-03-20 | Jazz Pharmaceuticals | Excessive daytime sleepiness, narcolepsy or OSA | Neurology/Psychiatry | Done — see README entry #34 |
| 2019 | siponimod (Mayzent) | NDA 209884 | 2019-03-26 | Novartis Pharmaceuticals | Relapsing forms of multiple sclerosis (MS) | Neurology/Psychiatry | Done — see README entry #35 |
| 2019 | romosozumab-aqqg (Evenity) | BLA 761062 | 2019-04-09 | Amgen | Postmenopausal osteoporosis, high fracture risk | Endocrine | Done — see README entry #7 |
| 2019 | erdafitinib (Balversa) | NDA 212018 | 2019-04-12 | Janssen Biotech | Locally advanced/metastatic urothelial carcinoma, FGFR alterations | Oncology | Done — see README entry #93 |
| 2019 | risankizumab-rzaa (Skyrizi) | BLA 761105 | 2019-04-23 | AbbVie | Moderate-to-severe plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #20 |
| 2019 | tafamidis meglumine (Vyndaqel) | NDA 211996 | 2019-05-03 | Pfizer | Cardiomyopathy of transthyretin amyloidosis (ATTR-CM) | Cardiovascular/Metabolic | Done — see README entry #37 |
| 2019 | alpelisib (Piqray) | NDA 212526 | 2019-05-24 | Novartis Pharmaceuticals | PIK3CA-mutated HR+/HER2- breast cancer, with fulvestrant | Oncology | Done — see README entry #94 |
| 2019 | polatuzumab vedotin-piiq (Polivy) | BLA 761121 | 2019-06-10 | Genentech | Relapsed/refractory diffuse large B-cell lymphoma, with BR | Oncology | Done — see README entry #95 |
| 2019 | bremelanotide (Vyleesi) | NDA 210557 | 2019-06-21 | AMAG Pharmaceuticals | Hypoactive sexual desire disorder (HSDD), premenopausal | Other/Misc | Done — see README entry #25 |
| 2019 | selinexor (Xpovio) | NDA 212306 | 2019-07-03 | Karyopharm Therapeutics | Relapsed/refractory multiple myeloma, with dex | Oncology | Done — see README entry #96 |
| 2019 | imipenem/cilastatin/relebactam (Recarbrio) | NDA 212819 | 2019-07-16 | Merck Sharp & Dohme | Complicated UTI/intra-abdominal infections, limited options | Infectious Disease | Done — see README entry #51 |
| 2019 | ferric maltol (Accrufer) | NDA 212320 | 2019-07-25 | Shield Therapeutics | Iron deficiency | Hematology | Done — see README entry #10 |
| 2019 | darolutamide (Nubeqa) | NDA 212099 | 2019-07-30 | Bayer HealthCare Pharmaceuticals | Non-metastatic castration-resistant prostate cancer (nmCRPC) | Oncology | Done — see README entry #97 |
| 2019 | pexidartinib (Turalio) | NDA 211810 | 2019-08-02 | Daiichi Sankyo | Symptomatic tenosynovial giant cell tumor (TGCT) | Oncology | Done — see README entry #98 |
| 2019 | pitolisant (Wakix) | NDA 211150 | 2019-08-14 | Bioprojet Pharma | Excessive daytime sleepiness, narcolepsy | Neurology/Psychiatry | Done — see README entry #36 |
| 2019 | pretomanid (unbranded) | NDA 212862 | 2019-08-14 | Global Alliance for TB Drug Development | Combination regimen, drug-resistant pulmonary TB | Infectious Disease | Done — see README entry #52 |
| 2019 | entrectinib (Rozlytrek) | NDA 212725 | 2019-08-15 | Genentech | ROS1-positive metastatic NSCLC, NTRK fusion solid tumors | Oncology | Done — see README entry #99 |
| 2019 | fedratinib (Inrebic) | NDA 212327 | 2019-08-16 | Celgene | Intermediate/high-risk myelofibrosis | Hematology | Done — see README entry #11 |
| 2019 | upadacitinib (Rinvoq) | NDA 211675 | 2019-08-16 | AbbVie | Moderately-to-severely active rheumatoid arthritis | Immunology/Rheumatology/Dermatology | Done — see README entry #21 |
| 2019 | lefamulin (Xenleta) | NDA 211672 | 2019-08-19 | Nabriva Therapeutics | Community-acquired bacterial pneumonia (CABP) | Infectious Disease | Done — see README entry #53 |
| 2019 | Ga 68 DOTATOC (unbranded) | NDA 210828 | 2019-08-21 | University of Iowa Health Care | PET localization, somatostatin receptor-positive tumors | Oncology | Done — see README entry #100 |
| 2019 | istradefylline (Nourianz) | NDA 022075 | 2019-08-27 | Kyowa Kirin | Adjunct to levodopa/carbidopa, Parkinson's disease | Neurology/Psychiatry | Done — see README entry #37 |
| 2019 | tenapanor (Ibsrela) | NDA 211801 | 2019-09-12 | Ardelyx | Irritable bowel syndrome with constipation (IBS-C) | Gastroenterology | Done — see README entry #12 |
| 2019 | trifarotene (Aklief) | NDA 211527 | 2019-10-04 | Galderma Research and Development | Topical treatment of acne vulgaris, patients 9+ | Immunology/Rheumatology/Dermatology | Done — see README entry #22 |
| 2019 | brolucizumab-dbll (Beovu) | BLA 761125 | 2019-10-07 | Novartis Pharmaceuticals | Neovascular (wet) AMD | Ophthalmology | Done — see README entry #8 |
| 2019 | afamelanotide (Scenesse) | NDA 210797 | 2019-10-08 | Clinuvel | Increase pain-free light exposure, erythropoietic protoporphyria | Hematology | Done — see README entry #12 |
| 2019 | fluorodopa F 18 (unbranded) | NDA 200655 | 2019-10-10 | Feinstein Institute | PET visualization of dopaminergic nerve terminals, Parkinsonian syndromes | Neurology/Psychiatry | Done — see README entry #38 |
| 2019 | lasmiditan (Reyvow) | NDA 211280 | 2019-10-11 | Eli Lilly | Acute treatment of migraine | Neurology/Psychiatry | Done — see README entry #39 |
| 2019 | elexacaftor/ivacaftor/tezacaftor; ivacaftor (Trikafta) | NDA 212273 | 2019-10-21 | Vertex Pharmaceuticals | Cystic fibrosis, patients 12+, ≥1 F508del allele | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #22 |
| 2019 | air polymer-type A (ExEm Foam) | NDA 212279 | 2019-11-07 | Giskit B.V. | Sonohysterosalpingography, fallopian tube patency | Other/Misc | Done — see README entry #26 |
| 2019 | luspatercept-aamt (Reblozyl) | BLA 761136 | 2019-11-08 | Celgene | Anemia in beta thalassemia requiring RBC transfusions | Hematology | Done — see README entry #13 |
| 2019 | zanubrutinib (Brukinsa) | NDA 213217 | 2019-11-14 | BeiGene USA | Mantle cell lymphoma (MCL) | Oncology | Done — see README entry #101 |
| 2019 | cefiderocol (Fetroja) | NDA 209445 | 2019-11-14 | Shionogi | Complicated UTI, limited/no alternative options | Infectious Disease | Done — see README entry #54 |
| 2019 | crizanlizumab-tmca (Adakveo) | BLA 761128 | 2019-11-15 | Novartis Pharmaceuticals | Reduce vaso-occlusive crises, sickle cell disease | Hematology | Done — see README entry #14 |
| 2019 | givosiran (Givlaari) | NDA 212194 | 2019-11-20 | Alnylam Pharmaceuticals | Acute hepatic porphyria (AHP) | Hematology | Done — see README entry #15 |
| 2019 | cenobamate (Xcopri) | NDA 212839 | 2019-11-21 | SK Life Science | Partial-onset seizures | Neurology/Psychiatry | Done — see README entry #40 |
| 2019 | voxelotor (Oxbryta) | NDA 213137 | 2019-11-25 | Global Blood Therapeutics | Sickle cell disease (SCD) | Hematology | Done — see README entry #16 |
| 2019 | golodirsen (Vyondys 53) | NDA 211970 | 2019-12-12 | Sarepta Therapeutics | Duchenne muscular dystrophy, exon 53 skip-amenable | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #23 |
| 2019 | enfortumab vedotin-ejfv (Padcev) | BLA 761137 | 2019-12-18 | Astellas Pharma | Locally advanced/metastatic urothelial cancer | Oncology | Done — see README entry #102 |
| 2019 | lumateperone (Caplyta) | NDA 209500 | 2019-12-20 | Intra-Cellular Therapies | Schizophrenia | Neurology/Psychiatry | Done — see README entry #41 |
| 2019 | fam-trastuzumab deruxtecan-nxki (Enhertu) | BLA 761139 | 2019-12-20 | Daiichi Sankyo | Unresectable/metastatic HER2-positive breast cancer | Oncology | Done — see README entry #103 |
| 2019 | Brilliant Blue G (TissueBlue) | NDA 209569 | 2019-12-20 | D.O.R.C International b.v | Staining internal limiting membrane, ophthalmic surgery | Ophthalmology | Done — see README entry #9 |
| 2019 | lemborexant (Dayvigo) | NDA 212028 | 2019-12-20 | Eisai | Insomnia | Neurology/Psychiatry | Done — see README entry #42 |
| 2019 | ubrogepant (Ubrelvy) | NDA 211765 | 2019-12-23 | Allergan | Acute treatment of migraine | Neurology/Psychiatry | Done — see README entry #43 |
| 2020 | avapritinib (Ayvakit) | NDA 212608 | 2020-01-09 | Blueprint Medicines | GIST (PDGFRA exon 18) | Oncology | Done — see README entry #104 |
| 2020 | teprotumumab-trbw (Tepezza) | BLA 761143 | 2020-01-21 | Horizon Therapeutics | Thyroid eye disease | Immunology/Rheumatology/Dermatology | Done — see README entry #23 |
| 2020 | tazemetostat (Tazverik) | NDA 211723 | 2020-01-23 | Epizyme | Epithelioid sarcoma | Oncology | Done — see README entry #105 |
| 2020 | lactitol (Pizensy) | NDA 211281 | 2020-02-12 | Braintree Labs/Sebela | Chronic idiopathic constipation | Gastroenterology | Done — see README entry #13 |
| 2020 | eptinezumab-jjmr (Vyepti) | BLA 761119 | 2020-02-21 | Lundbeck Seattle BioPharms | Migraine prevention | Neurology/Psychiatry | Done — see README entry #44 |
| 2020 | bempedoic acid (Nexletol) | NDA 211616 | 2020-02-21 | Esperion | ASCVD, additional LDL-C lowering | Cardiovascular/Metabolic | Done — see README entry #38 |
| 2020 | amisulpride (Barhemsys) | NDA 209510 | 2020-02-26 | Acacia Pharma | Postop nausea/vomiting prevention | Other/Misc | Done — see README entry #27 |
| 2020 | rimegepant (Nurtec ODT) | NDA 212728 | 2020-02-27 | Biohaven Pharmaceuticals | Migraine | Neurology/Psychiatry | Done — see README entry #45 |
| 2020 | isatuximab-irfc (Sarclisa) | BLA 761113 | 2020-03-02 | Sanofi Aventis US | Relapsed/refractory multiple myeloma | Oncology | Done — see README entry #106 |
| 2020 | osilodrostat (Isturisa) | NDA 212801 | 2020-03-06 | Recordati Rare Diseases | Cushing's disease | Endocrine | Done — see README entry #8 |
| 2020 | ozanimod (Zeposia) | NDA 209899 | 2020-03-25 | Bristol-Myers Squibb | Relapsing multiple sclerosis | Neurology/Psychiatry | Done — see README entry #46 |
| 2020 | selumetinib (Koselugo) | NDA 213756 | 2020-04-10 | AstraZeneca | Neurofibromatosis type 1 | Oncology | Done — see README entry #107 |
| 2020 | pemigatinib (Pemazyre) | NDA 213736 | 2020-04-17 | Incyte | Cholangiocarcinoma | Oncology | Done — see README entry #108 |
| 2020 | tucatinib (Tukysa) | NDA 213411 | 2020-04-17 | Seagen | HER2+ breast cancer | Oncology | Done — see README entry #109 |
| 2020 | sacituzumab govitecan-hziy (Trodelvy) | BLA 761115 | 2020-04-22 | Immunomedics | Metastatic triple-negative breast cancer | Oncology | Done — see README entry #110 |
| 2020 | opicapone (Ongentys) | NDA 212489 | 2020-04-24 | Neurocrine/BIAL | Parkinson's disease "off" episodes | Neurology/Psychiatry | Done — see README entry #47 |
| 2020 | capmatinib (Tabrecta) | NDA 213591 | 2020-05-06 | Novartis Pharmaceuticals | NSCLC, METex14 skipping | Oncology | Done — see README entry #111 |
| 2020 | selpercatinib (Retevmo) | NDA 213246 | 2020-05-08 | Eli Lilly | NSCLC/thyroid cancer, RET-altered | Oncology | Done — see README entry #112 |
| 2020 | ripretinib (Qinlock) | NDA 213973 | 2020-05-15 | Deciphera Pharmaceuticals | Advanced GIST | Oncology | Done — see README entry #113 |
| 2020 | fluoroestradiol F18 (Cerianna) | NDA 212155 | 2020-05-20 | GE Healthcare | Breast cancer PET imaging | Oncology | Done — see README entry #114 |
| 2020 | artesunate (unbranded) | NDA 213036 | 2020-05-26 | Amivas LLC | Severe malaria | Infectious Disease | Done — see README entry #55 |
| 2020 | flortaucipir F18 (Tauvid) | NDA 212123 | 2020-05-28 | Avid Radiopharmaceuticals | Alzheimer's diagnostic PET imaging | Neurology/Psychiatry | Done — see README entry #48 |
| 2020 | inebilizumab-cdon (Uplizna) | BLA 761142 | 2020-06-11 | Viela Bio | Neuromyelitis optica spectrum disorder | Neurology/Psychiatry | Done — see README entry #49 |
| 2020 | lurbinectedin (Zepzelca) | NDA 213702 | 2020-06-15 | Jazz Pharmaceuticals | Metastatic small cell lung cancer | Oncology | Done — see README entry #115 |
| 2020 | triheptanoin (Dojolvi) | NDA 213687 | 2020-06-30 | Ultragenyx Pharmaceutical | Long-chain fatty acid oxidation disorders | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #24 |
| 2020 | remimazolam (Byfavo) | NDA 212295 | 2020-07-02 | Acacia Pharma | Procedural sedation | Other/Misc | Done — see README entry #28 |
| 2020 | fostemsavir (Rukobia) | NDA 212950 | 2020-07-02 | ViiV Healthcare | HIV-1 infection | Infectious Disease | Done — see README entry #56 |
| 2020 | decitabine/cedazuridine (Inqovi) | NDA 212576 | 2020-07-07 | Taiho Oncology | Myelodysplastic syndromes | Oncology | Done — see README entry #116 |
| 2020 | abametapir (Xeglyze) | NDA 206966 | 2020-07-24 | Hatchtech Pty | Head lice | Infectious Disease | Done — see README entry #57 |
| 2020 | tafasitamab-cxix (Monjuvi) | BLA 761163 | 2020-07-31 | MorphoSys US | Relapsed/refractory DLBCL | Oncology | Done — see README entry #117 |
| 2020 | belantamab mafodotin-blmf (Blenrep) | BLA 761158 (orig.) / 761440 (2025 re-approval) | 2020-08-05 | GlaxoSmithKline | Relapsed/refractory multiple myeloma | Oncology | Done — see README entry #118 |
| 2020 | nifurtimox (Lampit) | NDA 213464 | 2020-08-06 | Bayer HealthCare | Chagas disease, pediatric | Infectious Disease | Done — see README entry #58 |
| 2020 | oliceridine (Olinvyk) | NDA 210730 | 2020-08-07 | Trevena | Severe acute pain | Other/Misc | Done — see README entry #29 |
| 2020 | risdiplam (Evrysdi) | NDA 213535 | 2020-08-07 | Genentech | Spinal muscular atrophy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #25 |
| 2020 | viltolarsen (Viltepso) | NDA 212154 | 2020-08-12 | Nippon Shinyaku | Duchenne muscular dystrophy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #26 |
| 2020 | satralizumab-mwge (Enspryng) | BLA 761149 | 2020-08-14 | Genentech | Neuromyelitis optica spectrum disorder | Neurology/Psychiatry | Done — see README entry #50 |
| 2020 | clascoterone (Winlevi) | NDA 213433 | 2020-08-26 | Sun Pharmaceutical | Acne vulgaris | Immunology/Rheumatology/Dermatology | Done — see README entry #24 |
| 2020 | somapacitan-beco (Sogroya) | BLA 761156 | 2020-08-28 | Novo Nordisk | Growth hormone deficiency | Endocrine | Done — see README entry #9 |
| 2020 | copper Cu 64 dotatate (Detectnet) | NDA 213227 | 2020-09-03 | Curium US | Neuroendocrine tumor PET imaging | Oncology | Done — see README entry #119 |
| 2020 | pralsetinib (Gavreto) | NDA 213721 | 2020-09-04 | Blueprint Medicines (Rigel) | NSCLC, RET fusion-positive | Oncology | Done — see README entry #120 |
| 2020 | atoltivimab/maftivimab/odesivimab-ebgn (Inmazeb) | BLA 761169 | 2020-10-14 | Regeneron Pharmaceuticals | Ebola virus | Infectious Disease | Done — see README entry #59 |
| 2020 | remdesivir (Veklury) | NDA 214787 | 2020-10-22 | Gilead Sciences | COVID-19 | Infectious Disease | Done — see README entry #60 |
| 2020 | lonafarnib (Zokinvy) | NDA 213969 | 2020-11-20 | Sentynl Therapeutics | Hutchinson-Gilford progeria syndrome | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #27 |
| 2020 | lumasiran (Oxlumo) | NDA 214103 | 2020-11-23 | Alnylam Pharmaceuticals | Primary hyperoxaluria type 1 | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #28 |
| 2020 | setmelanotide (Imcivree) | NDA 213793 | 2020-11-25 | Rhythm Pharmaceuticals | POMC/LEPR-deficiency obesity | Endocrine | Done — see README entry #10 |
| 2020 | naxitamab-gqgk (Danyelza) | BLA 761171 | 2020-11-25 | Y-mAbs Therapeutics | Relapsed/refractory neuroblastoma | Oncology | Done — see README entry #121 |
| 2020 | gallium Ga 68 PSMA-11 (unbranded) | NDA 212642/212643 (resolved; UCLA/UCSF) | 2020-12-01 | UCSF / UCLA | Prostate cancer PSMA PET imaging | Oncology | Done — see README entry #122 |
| 2020 | berotralstat (Orladeyo) | NDA 214094 | 2020-12-03 | BioCryst Pharmaceuticals | Hereditary angioedema prophylaxis | Immunology/Rheumatology/Dermatology | Done — see README entry #25 |
| 2020 | tirbanibulin (Klisyri) | NDA 213189 | 2020-12-14 | Almirall | Actinic keratosis | Immunology/Rheumatology/Dermatology | Done — see README entry #26 |
| 2020 | margetuximab-cmkb (Margenza) | BLA 761150 | 2020-12-16 | MacroGenics | HER2+ metastatic breast cancer | Oncology | Done — see README entry #123 |
| 2020 | relugolix (Orgovyx) | NDA 214621 | 2020-12-18 | Sumitomo Pharma America (Myovant) | Advanced prostate cancer | Oncology | Done — see README entry #124 |
| 2020 | ansuvimab-zykl (Ebanga) | BLA 761172 | 2020-12-21 | Ridgeback Biotherapeutics | Ebola virus | Infectious Disease | Done — see README entry #61 |
| 2020 | vibegron (Gemtesa) | NDA 213006 | 2020-12-23 | Urovant Sciences | Overactive bladder | Other/Misc | Done — see README entry #30 |
| 2021 | vericiguat (Verquvo) | NDA 214377 | 2021-01-19 | Merck Sharp & Dohme | CV death/HF hospitalization risk reduction | Cardiovascular/Metabolic | Done — see README entry #39 |
| 2021 | cabotegravir/rilpivirine (Cabenuva) | NDA 212888 | 2021-01-21 | ViiV Healthcare | HIV-1 infection | Infectious Disease | Done — see README entry #62 |
| 2021 | voclosporin (Lupkynis) | NDA 213716 | 2021-01-22 | Aurinia Pharmaceuticals | Lupus nephritis | Immunology/Rheumatology/Dermatology | Done — see README entry #27 |
| 2021 | tepotinib (Tepmetko) | NDA 214096 | 2021-02-03 | EMD Serono | NSCLC, METex14 skipping | Oncology | Done — see README entry #125 |
| 2021 | umbralisib (Ukoniq) | NDA 213176 | 2021-02-05 | TG Therapeutics | Marginal zone/follicular lymphoma | Oncology | Done — see README entry #126 |
| 2021 | evinacumab-dgnb (Evkeeza) | BLA 761181 | 2021-02-11 | Regeneron Pharmaceuticals | Homozygous familial hypercholesterolemia | Cardiovascular/Metabolic | Done — see README entry #40 |
| 2021 | trilaciclib (Cosela) | NDA 214200 | 2021-02-12 | G1 Therapeutics | Chemo-induced myelosuppression mitigation | Oncology | Done — see README entry #127 |
| 2021 | casimersen (Amondys 45) | NDA 213026 | 2021-02-25 | Sarepta Therapeutics | Duchenne muscular dystrophy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #29 |
| 2021 | fosdenopterin (Nulibry) | NDA 214018 | 2021-02-26 | Sentynl Therapeutics | Molybdenum cofactor deficiency type A | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #30 |
| 2021 | melphalan flufenamide (Pepaxto) | NDA 214383 | 2021-02-26 | Oncopeptides | Relapsed/refractory multiple myeloma | Oncology | Done — see README entry #128 |
| 2021 | serdexmethylphenidate/dexmethylphenidate (Azstarys) | NDA 212994 | 2021-03-02 | Corium | ADHD | Neurology/Psychiatry | Done — see README entry #51 |
| 2021 | tivozanib (Fotivda) | NDA 212904 | 2021-03-10 | Aveo Pharmaceuticals | Renal cell carcinoma | Oncology | Done — see README entry #129 |
| 2021 | ponesimod (Ponvory) | NDA 213498 | 2021-03-18 | Janssen (Actelion) | Relapsing multiple sclerosis | Neurology/Psychiatry | Done — see README entry #52 |
| 2021 | dasiglucagon (Zegalogue) | NDA 214231 | 2021-03-22 | Zealand Pharma | Severe hypoglycemia | Cardiovascular/Metabolic | Done — see README entry #41 |
| 2021 | viloxazine (Qelbree) | NDA 211964 | 2021-04-02 | Supernus Pharmaceuticals | ADHD | Neurology/Psychiatry | Done — see README entry #53 |
| 2021 | drospirenone/estetrol (Nextstellis) | NDA 214154 | 2021-04-15 | Mayne Pharma | Contraception | Other/Misc | Done — see README entry #31 |
| 2021 | dostarlimab-gxly (Jemperli) | BLA 761174 | 2021-04-22 | GlaxoSmithKline | Endometrial cancer | Oncology | Done — see README entry #130 |
| 2021 | loncastuximab tesirine-lpyl (Zynlonta) | BLA 761196 | 2021-04-23 | ADC Therapeutics | Relapsed/refractory large B-cell lymphoma | Oncology | Done — see README entry #131 |
| 2021 | pegcetacoplan (Empaveli) | NDA 215014 | 2021-05-14 | Apellis Pharmaceuticals | Paroxysmal nocturnal hemoglobinuria | Hematology | Done — see README entry #17 |
| 2021 | amivantamab-vmjw (Rybrevant) | BLA 761210 | 2021-05-21 | Janssen Biotech | NSCLC, EGFR exon 20 insertion | Oncology | Done — see README entry #132 |
| 2021 | piflufolastat F18 (Pylarify) | NDA 214793 | 2021-05-26 | Progenics (Lantheus) | Prostate cancer PSMA PET imaging | Oncology | Done — see README entry #133 |
| 2021 | sotorasib (Lumakras) | NDA 214665 | 2021-05-28 | Amgen | NSCLC, KRAS G12C | Oncology | Done — see README entry #134 |
| 2021 | infigratinib (Truseltiq) | NDA 214622 | 2021-05-28 | BridgeBio Pharma | Cholangiocarcinoma, FGFR2 fusion | Oncology | Done — see README entry #135 |
| 2021 | olanzapine/samidorphan (Lybalvi) | NDA 213378 | 2021-05-28 | Alkermes | Schizophrenia, bipolar I | Neurology/Psychiatry | Done — see README entry #54 |
| 2021 | ibrexafungerp (Brexafemme) | NDA 214900 | 2021-06-01 | Scynexis | Vulvovaginal candidiasis | Infectious Disease | Done — see README entry #63 |
| 2021 | semaglutide (Wegovy) | NDA 215256 | 2021-06-04 | Novo Nordisk | Chronic weight management, adjunct to diet/exercise | Cardiovascular/Metabolic | Done — Semaglutide (Wegovy)/SELECT supplement (NDA 215256/S-011, 2024) — see README |
| 2021 | aducanumab-avwa (Aduhelm) | BLA 761178 | 2021-06-07 | Biogen | Alzheimer's disease | Neurology/Psychiatry | Done — see README entry #55 |
| 2021 | asparaginase erwinia chrysanthemi (recombinant)-rywn (Rylaze) | BLA 761179 | 2021-06-30 | Jazz Pharmaceuticals | ALL / lymphoblastic lymphoma | Oncology | Done — see README entry #136 |
| 2021 | finerenone (Kerendia) | NDA 215341 | 2021-07-09 | Bayer HealthCare | CKD + T2D complication risk reduction | Cardiovascular/Metabolic | Done — see README entry #42 |
| 2021 | fexinidazole (unbranded) | NDA 214429 | 2021-07-16 | Sanofi (with DNDi) | Human African trypanosomiasis | Infectious Disease | Done — see README entry #64 |
| 2021 | belumosudil (Rezurock) | NDA 214783 | 2021-07-16 | Kadmon (Sanofi) | Chronic graft-versus-host disease | Hematology | Done — see README entry #18 |
| 2021 | odevixibat (Bylvay) | NDA 215498 | 2021-07-20 | Ipsen | Cholestatic pruritus, Alagille syndrome | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #31 |
| 2021 | anifrolumab-fnia (Saphnelo) | BLA 761123 | 2021-07-30 | AstraZeneca | Systemic lupus erythematosus | Immunology/Rheumatology/Dermatology | Done — see README entry #28 |
| 2021 | avalglucosidase alfa-ngpt (Nexviazyme) | BLA 761194 | 2021-08-06 | Genzyme | Late-onset Pompe disease | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #32 |
| 2021 | belzutifan (Welireg) | NDA 215383 | 2021-08-13 | Merck | Von Hippel-Lindau disease | Oncology | Done — see README entry #137 |
| 2021 | difelikefalin (Korsuva) | NDA 214916 | 2021-08-23 | Vifor International | CKD-associated pruritus | Other/Misc | Done — see README entry #32 |
| 2021 | lonapegsomatropin-tcgd (Skytrofa) | BLA 761177 | 2021-08-25 | Ascendis Pharma | Growth hormone deficiency | Endocrine | Done — see README entry #11 |
| 2021 | mobocertinib (Exkivity) | NDA 215310 | 2021-09-15 | Takeda | NSCLC, EGFR exon 20 insertion | Oncology | Done — see README entry #138 |
| 2021 | tisotumab vedotin-tftv (Tivdak) | BLA 761208 | 2021-09-20 | Seagen | Recurrent/metastatic cervical cancer | Oncology | Done — see README entry #139 |
| 2021 | atogepant (Qulipta) | NDA 215206 | 2021-09-28 | AbbVie | Episodic migraine prevention | Neurology/Psychiatry | Done — see README entry #56 |
| 2021 | maralixibat (Livmarli) | NDA 214662 | 2021-09-29 | Mirum Pharmaceuticals | Cholestatic pruritus, Alagille syndrome | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #33 |
| 2021 | avacopan (Tavneos) | NDA 214487 | 2021-10-07 | ChemoCentryx | ANCA-associated vasculitis | Immunology/Rheumatology/Dermatology | Done — see README entry #29 |
| 2021 | asciminib (Scemblix) | NDA 215358 | 2021-10-29 | Novartis Pharmaceuticals | Philadelphia chromosome-positive CML | Oncology | Done — see README entry #140 |
| 2021 | ropeginterferon alfa-2b-njft (Besremi) | BLA 761166 | 2021-11-12 | PharmaEssentia | Polycythemia vera | Hematology | Done — see README entry #19 |
| 2021 | vosoritide (Voxzogo) | NDA 214938 | 2021-11-19 | BioMarin Pharmaceutical | Achondroplasia | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #34 |
| 2021 | maribavir (Livtencity) | NDA 215596 | 2021-11-23 | Takeda | Resistant post-transplant CMV | Infectious Disease | Done — see README entry #65 |
| 2021 | pafolacianine (Cytalux) | NDA 214907 | 2021-11-29 | On Target Laboratories | Ovarian cancer lesion imaging | Oncology | Done — see README entry #141 |
| 2021 | tezepelumab-ekko (Tezspire) | BLA 761224 | 2021-12-17 | AstraZeneca | Severe asthma, add-on maintenance | Immunology/Rheumatology/Dermatology | Done — see README entry #30 |
| 2021 | efgartigimod alfa-fcab (Vyvgart) | BLA 761195 | 2021-12-17 | argenx | Generalized myasthenia gravis | Neurology/Psychiatry | Done — see README entry #57 |
| 2021 | inclisiran (Leqvio) | NDA 214012 | 2021-12-22 | Novartis Pharmaceuticals | Hypercholesterolemia/ASCVD | Cardiovascular/Metabolic | Done — see README entry #43 |
| 2021 | tralokinumab-ldrm (Adbry) | BLA 761180 | 2021-12-27 | LEO Pharma | Moderate-to-severe atopic dermatitis | Immunology/Rheumatology/Dermatology | Done — see README entry #31 |
| 2022 | daridorexant (Quviviq) | NDA 214985 | 2022-01-07 | Idorsia | Insomnia | Neurology/Psychiatry | Done — see README entry #58 |
| 2022 | abrocitinib (Cibinqo) | NDA 213871 | 2022-01-14 | Pfizer | Refractory moderate-to-severe atopic dermatitis | Immunology/Rheumatology/Dermatology | Done — see README entry #32 |
| 2022 | tebentafusp-tebn (Kimmtrak) | BLA 761228 | 2022-01-25 | Immunocore | Unresectable/metastatic uveal melanoma | Oncology | Done — see README entry #142 |
| 2022 | faricimab-svoa (Vabysmo) | BLA 761235 | 2022-01-28 | Genentech | Wet AMD, diabetic macular edema | Ophthalmology | Done — see README entry #10 |
| 2022 | sutimlimab-jome (Enjaymo) | BLA 761164 | 2022-02-04 | Recordati Rare Diseases | Cold agglutinin disease hemolysis | Hematology | Done — see README entry #20 |
| 2022 | mitapivat (Pyrukynd) | NDA 216196 | 2022-02-17 | Agios Pharmaceuticals | Pyruvate kinase deficiency hemolytic anemia | Hematology | Done — see README entry #21 |
| 2022 | pacritinib (Vonjo) | NDA 208712 | 2022-02-28 | CTI BioPharma (Sobi) | Myelofibrosis, low platelets | Oncology | Done — see README entry #143 |
| 2022 | ganaxolone (Ztalmy) | NDA 215904 | 2022-03-18 | Marinus Pharmaceuticals | CDKL5 deficiency disorder seizures | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #35 |
| 2022 | nivolumab/relatlimab-rmbw (Opdualag) | BLA 761234 | 2022-03-18 | Bristol Myers Squibb | Unresectable/metastatic melanoma | Oncology | Done — see README entry #144 |
| 2022 | lutetium Lu 177 vipivotide tetraxetan (Pluvicto) | NDA 215833 | 2022-03-23 | Novartis Pharmaceuticals | PSMA+ metastatic castration-resistant prostate cancer | Oncology | Done — see README entry #145 |
| 2022 | oteseconazole (Vivjoa) | NDA 215888 | 2022-04-26 | Mycovia Pharmaceuticals | Recurrent vulvovaginal candidiasis | Infectious Disease | Done — see README entry #66 |
| 2022 | mavacamten (Camzyos) | NDA 214998 | 2022-04-28 | MyoKardia (Bristol Myers Squibb) | Obstructive hypertrophic cardiomyopathy | Cardiovascular/Metabolic | Done — see README entry #44 |
| 2022 | vonoprazan/amoxicillin/clarithromycin (Voquezna) | NDA 215151/215152/215153 | 2022-05-03 | Phathom Pharmaceuticals | H. pylori infection | Gastroenterology | Done — see README entry #14 |
| 2022 | tirzepatide (Mounjaro) | NDA 215866 | 2022-05-13 | Eli Lilly | Type 2 diabetes, glycemic control | Cardiovascular/Metabolic | Done — see README entry #45 |
| 2022 | tapinarof (Vtama) | NDA 215272 | 2022-05-23 | Dermavant Sciences | Plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #33 |
| 2022 | vutrisiran (Amvuttra) | NDA 215515 | 2022-06-13 | Alnylam Pharmaceuticals | hATTR amyloidosis polyneuropathy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #36 |
| 2022 | olipudase alfa (Xenpozyme) | BLA 761261 | 2022-08-31 | Genzyme | Acid sphingomyelinase deficiency | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #37 |
| 2022 | spesolimab-sbzo (Spevigo) | BLA 761244 | 2022-09-01 | Boehringer Ingelheim | Generalized pustular psoriasis flares | Immunology/Rheumatology/Dermatology | Done — see README entry #34 |
| 2022 | daxibotulinumtoxinA-lanm (Daxxify) | BLA 761127 | 2022-09-07 | Revance Therapeutics | Glabellar lines | Other/Misc | Done — see README entry #33 |
| 2022 | deucravacitinib (Sotyktu) | NDA 214958 | 2022-09-09 | Bristol Myers Squibb | Moderate-to-severe plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #35 |
| 2022 | eflapegrastim (Rolvedon) | BLA 761148 | 2022-09-09 | Spectrum Pharmaceuticals | Chemo-induced neutropenia risk reduction | Oncology | Done — see README entry #146 |
| 2022 | terlipressin (Terlivaz) | NDA 022231 | 2022-09-14 | Mallinckrodt | Hepatorenal syndrome | Gastroenterology | Done — see README entry #15 |
| 2022 | gadopiclenol (Elucirem) | NDA 216986 | 2022-09-21 | Guerbet | MRI contrast agent | Other/Misc | Done — see README entry #34 |
| 2022 | omidenepag isopropyl (Omlonti) | NDA 215092 | 2022-09-22 | Santen | Open-angle glaucoma, elevated IOP | Ophthalmology | Done — see README entry #11 |
| 2022 | sodium phenylbutyrate/taurursodiol (Relyvrio) | NDA 216660 | 2022-09-29 | Amylyx Pharmaceuticals | Amyotrophic lateral sclerosis | Neurology/Psychiatry | Done — see README entry #59 |
| 2022 | futibatinib (Lytgobi) | NDA 214801 | 2022-09-30 | Taiho Oncology | Intrahepatic cholangiocarcinoma, FGFR2 | Oncology | Done — see README entry #147 |
| 2022 | tremelimumab (Imjudo) | BLA 761289 | 2022-10-21 | AstraZeneca | Unresectable hepatocellular carcinoma | Oncology | Done — see README entry #148 |
| 2022 | teclistamab-cqyv (Tecvayli) | BLA 761291 | 2022-10-25 | Janssen Biotech | Relapsed/refractory multiple myeloma | Oncology | Done — see README entry #149 |
| 2022 | mirvetuximab soravtansine-gynx (Elahere) | BLA 761310 | 2022-11-14 | ImmunoGen | Platinum-resistant recurrent ovarian cancer | Oncology | Done — see README entry #150 |
| 2022 | teplizumab-mzwv (Tzield) | BLA 761183 | 2022-11-18 | Provention Bio | Delay stage 3 type 1 diabetes onset | Endocrine | Done — see README entry #12 |
| 2022 | olutasidenib (Rezlidhia) | NDA 215814 | 2022-12-01 | Rigel Pharmaceuticals | Relapsed/refractory AML, IDH1-mutant | Oncology | Done — see README entry #151 |
| 2022 | adagrasib (Krazati) | NDA 216340 | 2022-12-12 | Mirati Therapeutics | NSCLC, KRAS G12C | Oncology | Done — see README entry #152 |
| 2022 | lenacapavir (Sunlenca) | NDA 215973/215974 | 2022-12-22 | Gilead Sciences | Multidrug-resistant HIV | Infectious Disease | Done — see README entry #67 |
| 2022 | mosunetuzumab-axgb (Lunsumio) | BLA 761263 | 2022-12-22 | Genentech | Relapsed/refractory follicular lymphoma | Oncology | Done — see README entry #153 |
| 2022 | hyperpolarized Xe-129 (Xenoview) | NDA 214375 | 2022-12-23 | Polarean | Pulmonary function/imaging | Other/Misc | Done — see README entry #35 |
| 2022 | ublituximab-xiiy (Briumvi) | BLA 761238 | 2022-12-28 | TG Therapeutics | Relapsing forms of multiple sclerosis | Neurology/Psychiatry | Done — see README entry #60 |
| 2022 | anacaulase-bcdb (NexoBrid) | BLA 761192 | 2022-12-28 | MediWound | Eschar removal, deep partial/full-thickness thermal burns | Other/Misc | Done — see README entry #36 |
| 2023 | lecanemab-irmb (Leqembi) | 761269 | 2023-01-06 | Eisai Inc | Alzheimer's disease | Neurology/Psychiatry | Done — see README entry #61 |
| 2023 | bexagliflozin (Brenzavvy) | 214373 | 2023-01-20 | Theracosbio | Type 2 diabetes (SGLT2i) | Cardiovascular/Metabolic | Done — see README entry #46 |
| 2023 | pirtobrutinib (Jaypirca) | 216059 | 2023-01-27 | Loxo Oncology (Lilly) | Mantle cell lymphoma (BTK inhibitor) | Oncology | Done — see README entry #154 |
| 2023 | elacestrant (Orserdu) | 217639 | 2023-01-27 | Stemline Therapeutics | ER+/HER2- breast cancer | Oncology | Done — see README entry #155 |
| 2023 | daprodustat (Jesduvroq) | 216951 | 2023-02-01 | GlaxoSmithKline | Anemia of CKD (HIF-PHI) | Hematology | Done — see README entry #22 |
| 2023 | velmanase alfa-tycv (Lamzede) | 761278 | 2023-02-16 | Chiesi Farmaceutici | Alpha-mannosidosis | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #38 |
| 2023 | sparsentan (Filspari) | 216403 | 2023-02-17 | Travere Therapeutics | IgA nephropathy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #39 |
| 2023 | omaveloxolone (Skyclarys) | 216718 | 2023-02-28 | Biogen (orig. Reata) | Friedreich's ataxia | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #40 |
| 2023 | zavegepant (Zavzpret) | 216386 | 2023-03-09 | Pfizer | Migraine | Neurology/Psychiatry | Done — see README entry #62 |
| 2023 | trofinetide (Daybue) | 217026 | 2023-03-10 | Acadia Pharmaceuticals | Rett syndrome | Neurology/Psychiatry | Done — see README entry #63 |
| 2023 | retifanlimab-dlwr (Zynyz) | 761334 | 2023-03-22 | Incyte Corp | Merkel cell carcinoma | Oncology | Done — see README entry #156 |
| 2023 | rezafungin (Rezzayo) | 217417 | 2023-03-22 | Mundipharma/Cidara | Invasive candidiasis/candidemia | Infectious Disease | Done — see README entry #68 |
| 2023 | leniolisib (Joenja) | 217759 | 2023-03-24 | Pharming | Activated PI3K-delta syndrome (APDS) | Immunology/Rheumatology/Dermatology | Done — see README entry #36 |
| 2023 | tofersen (Qalsody) | 215887 | 2023-04-25 | Biogen MA | SOD1-ALS | Neurology/Psychiatry | Done — see README entry #64 |
| 2023 | pegunigalsidase alfa-iwxj (Elfabrio) | 761161 | 2023-05-09 | Chiesi Farmaceutici | Fabry disease | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #41 |
| 2023 | fezolinetant (Veozah) | 216578 | 2023-05-12 | Astellas | Vasomotor symptoms of menopause | Endocrine | Done — see README entry #13 |
| 2023 | perfluorhexyloctane (Miebo) | 216675 | 2023-05-18 | Bausch + Lomb | Dry eye disease | Ophthalmology | Done — see README entry #12 |
| 2023 | epcoritamab-bysp (Epkinly) | 761324 | 2023-05-19 | Genmab/AbbVie | Diffuse large B-cell lymphoma | Oncology | Done — see README entry #157 |
| 2023 | sulbactam/durlobactam (Xacduro) | 216974 | 2023-05-23 | Entasis Therapeutics | Acinetobacter infections | Infectious Disease | Done — see README entry #69 |
| 2023 | nirmatrelvir/ritonavir (Paxlovid) | 217188 | 2023-05-25 | Pfizer | COVID-19 | Infectious Disease | Done — see README entry #70 |
| 2023 | flotufolastat F 18 (Posluma) | 216023 | 2023-05-25 | Blue Earth Diagnostics | PSMA PET imaging, prostate cancer | Oncology | Done — see README entry #158 |
| 2023 | sotagliflozin (Inpefa) | 216203 | 2023-05-26 | Lexicon Pharmaceuticals | Heart failure (SGLT1/2i) | Cardiovascular/Metabolic | Done — see README entry #47 |
| 2023 | glofitamab-gxbm (Columvi) | 761309 | 2023-06-15 | Genentech | Diffuse large B-cell lymphoma | Oncology | Done — see README entry #159 |
| 2023 | ritlecitinib (Litfulo) | 215830 | 2023-06-23 | Pfizer | Alopecia areata | Immunology/Rheumatology/Dermatology | Done — see README entry #37 |
| 2023 | rozanolixizumab-noli (Rystiggo) | 761286 | 2023-06-26 | UCB Inc | Generalized myasthenia gravis | Neurology/Psychiatry | Done — see README entry #65 |
| 2023 | somatrogon-ghla (Ngenla) | 761184 | 2023-06-27 | Pfizer | Pediatric growth hormone deficiency | Endocrine | Done — see README entry #14 |
| 2023 | nirsevimab-alip (Beyfortus) | 761328 | 2023-07-17 | AstraZeneca/Sanofi | RSV prevention in infants | Infectious Disease | Done — see README entry #71 |
| 2023 | quizartinib (Vanflyta) | 216993 | 2023-07-20 | Daiichi Sankyo | FLT3-ITD+ AML | Oncology | Done — see README entry #160 |
| 2023 | lotilaner (Xdemvy) | 217603 | 2023-07-25 | Tarsus Pharmaceuticals | Demodex blepharitis | Ophthalmology | Done — see README entry #13 |
| 2023 | zuranolone (Zurzuvae) | 217369 | 2023-08-04 | Biogen/Sage | Postpartum depression | Neurology/Psychiatry | Done — see README entry #66 |
| 2023 | avacincaptad pegol (Izervay) | 217225 | 2023-08-04 | Astellas (Iveric Bio) | Geographic atrophy (AMD) | Ophthalmology | Done — see README entry #14 |
| 2023 | talquetamab-tgvs (Talvey) | 761342 | 2023-08-09 | Janssen Biotech | Multiple myeloma | Oncology | Done — see README entry #161 |
| 2023 | elranatamab-bcmm (Elrexfio) | 761345 | 2023-08-14 | Pfizer | Multiple myeloma | Oncology | Done — see README entry #162 |
| 2023 | palovarotene (Sohonos) | 215559 | 2023-08-16 | Ipsen | Fibrodysplasia ossificans progressiva | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #42 |
| 2023 | pozelimab-bbfg (Veopoz) | 761339 | 2023-08-18 | Regeneron | CHAPLE disease | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #43 |
| 2023 | motixafortide (Aphexda) | 217159 | 2023-09-08 | Ayrmid Pharma (BioLineRx) | Stem cell mobilization, multiple myeloma | Hematology | Done — see README entry #23 |
| 2023 | momelotinib (Ojjaara) | 216873 | 2023-09-15 | GlaxoSmithKline | Myelofibrosis | Hematology | Done — see README entry #24 |
| 2023 | gepirone (Exxua) | 021164 | 2023-09-22 | Fabre-Kramer | Major depressive disorder | Neurology/Psychiatry | Done — see README entry #67 |
| 2023 | cipaglucosidase alfa-atga (Pombiliti) | 761204 | 2023-09-28 | Amicus Therapeutics | Pompe disease | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #44 |
| 2023 | nedosiran (Rivfloza) | 215842 | 2023-09-29 | Novo Nordisk | Primary hyperoxaluria type 1 | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #45 |
| 2023 | etrasimod (Velsipity) | 216956 | 2023-10-12 | Pfizer | Ulcerative colitis | Gastroenterology | Done — see README entry #16 |
| 2023 | zilucoplan (Zilbrysq) | 216834 | 2023-10-17 | UCB Inc | Generalized myasthenia gravis | Neurology/Psychiatry | Done — see README entry #68 |
| 2023 | bimekizumab (Bimzelx) | 761151 | 2023-10-17 | UCB Inc | Plaque psoriasis | Immunology/Rheumatology/Dermatology | Done — see README entry #38 |
| 2023 | vamorolone (Agamree) | 215239 | 2023-10-26 | Catalyst Pharmaceuticals | Duchenne muscular dystrophy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #46 |
| 2023 | mirikizumab-mrkz (Omvoh) | 761279 | 2023-10-26 | Eli Lilly | Ulcerative colitis | Gastroenterology | Done — see README entry #17 |
| 2023 | toripalimab-tpzi (Loqtorzi) | 761240 | 2023-10-27 | Coherus/Junshi | Nasopharyngeal carcinoma | Oncology | Done — see README entry #163 |
| 2023 | fruquintinib (Fruzaqla) | 217564 | 2023-11-08 | Takeda | Metastatic colorectal cancer | Oncology | Done — see README entry #164 |
| 2023 | taurolidine/heparin (Defencath) | 214520 | 2023-11-15 | CorMedix | Catheter-related bloodstream infection prevention | Infectious Disease | Done — see README entry #72 |
| 2023 | repotrectinib (Augtyro) | 218213 | 2023-11-15 | Bristol Myers Squibb | ROS1+ NSCLC | Oncology | Done — see README entry #165 |
| 2023 | efbemalenograstim alfa-vuxw (Ryzneuta) | 761134 | 2023-11-16 | Evive Biotechnology | Chemo-induced neutropenia | Hematology | Done — see README entry #25 |
| 2023 | capivasertib (Truqap) | 218197 | 2023-11-16 | AstraZeneca | Breast cancer (AKT inhibitor) | Oncology | Done — see README entry #166 |
| 2023 | nirogacestat (Ogsiveo) | 217677 | 2023-11-27 | SpringWorks Therapeutics | Desmoid tumors | Oncology | Done — see README entry #167 |
| 2023 | iptacopan (Fabhalta) | 218276 | 2023-12-05 | Novartis | Paroxysmal nocturnal hemoglobinuria | Hematology | Done — see README entry #26 |
| 2023 | birch triterpenes (Filsuvez) | 215064 | 2023-12-18 | Chiesi | Epidermolysis bullosa wound care | Immunology/Rheumatology/Dermatology | Done — see README entry #39 |
| 2023 | eplontersen (Wainua) | 217388 | 2023-12-21 | AstraZeneca | Hereditary transthyretin amyloidosis polyneuropathy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #47 |
| 2024 | berdazimer (Zelsuvmi) | 217424 | 2024-01-05 | LNHC (Novan) | Molluscum contagiosum | Immunology/Rheumatology/Dermatology | Done — see README entry #40 |
| 2024 | cefepime/enmetazobactam (Exblifep) | 216165 | 2024-02-22 | Orchid Pharma | Complicated UTI | Infectious Disease | Done — see README entry #73 |
| 2024 | letibotulinumtoxinA-wlbg (Letybo) | 761225 | 2024-02-29 | Hugel Inc | Glabellar lines (cosmetic) | Immunology/Rheumatology/Dermatology | Done — see README entry #41 |
| 2024 | tislelizumab-jsgr (Tevimbra) | 761232 | 2024-03-13 | BeiGene | Esophageal squamous cell carcinoma | Oncology | Done — see README entry #168 |
| 2024 | resmetirom (Rezdiffra) | 217785 | 2024-03-14 | Madrigal Pharmaceuticals | MASH/NASH with fibrosis | Gastroenterology | Done — see README entry #18 |
| 2024 | aprocitentan (Tryvio) | 217686 | 2024-03-19 | Idorsia | Resistant hypertension | Cardiovascular/Metabolic | Done — see README entry #48 |
| 2024 | givinostat (Duvyzat) | 217865 | 2024-03-21 | Italfarmaco | Duchenne muscular dystrophy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #48 |
| 2024 | sotatercept-csrk (Winrevair) | 761363 | 2024-03-26 | Merck Sharp & Dohme | Pulmonary arterial hypertension | Cardiovascular/Metabolic | Done — see README entry #49 |
| 2024 | vadadustat (Vafseo) | 215192 | 2024-03-27 | Akebia Therapeutics | Anemia of CKD | Hematology | Done — see README entry #27 |
| 2024 | danicopan (Voydeya) | 218037 | 2024-03-29 | Alexion Pharmaceuticals | PNH (add-on therapy) | Hematology | Done — see README entry #28 |
| 2024 | ceftobiprole medocaril (Zevtera) | 218275 | 2024-04-03 | Basilea (ISTX) | Bacteremia, skin/soft-tissue infections | Infectious Disease | Done — see README entry #74 |
| 2024 | pegulicianine (Lumisight) | 214511 | 2024-04-17 | Lumicell | Breast cancer surgical imaging | Oncology | Done — see README entry #169 |
| 2024 | nogapendekin alfa inbakicept-pmln (Anktiva) | 761336 | 2024-04-22 | ImmunityBio (Altor Bioscience) | BCG-unresponsive bladder cancer | Oncology | Done — see README entry #170 |
| 2024 | tovorafenib (Ojemda) | 218033 | 2024-04-23 | Day One Biopharmaceuticals | Pediatric low-grade glioma | Oncology | Done — see README entry #171 |
| 2024 | mavorixafor (Xolremdi) | 218709 | 2024-04-26 | X4 Pharmaceuticals | WHIM syndrome | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #49 |
| 2024 | tarlatamab-dlle (Imdelltra) | 761344 | 2024-05-16 | Amgen | Small cell lung cancer | Oncology | Done — see README entry #172 |
| 2024 | imetelstat (Rytelo) | 217779 | 2024-06-06 | Geron | Myelodysplastic syndromes | Hematology | Done — see README entry #29 |
| 2024 | elafibranor (Iqirvo) | 218860 | 2024-06-10 | Ipsen | Primary biliary cholangitis | Gastroenterology | Done — see README entry #19 |
| 2024 | sofpironium (Sofdra) | 217347 | 2024-06-18 | Botanix (Kaken) | Primary axillary hyperhidrosis | Immunology/Rheumatology/Dermatology | Done — see README entry #42 |
| 2024 | crovalimab-akkz (Piasky) | 761388 | 2024-06-20 | Genentech | Paroxysmal nocturnal hemoglobinuria | Hematology | Done — see README entry #30 |
| 2024 | ensifentrine (Ohtuvayre) | 217389 | 2024-06-26 | MSD (Verona Pharma) | COPD | Other/Misc | Done — see README entry #37 |
| 2024 | donanemab-azbt (Kisunla) | 761248 | 2024-07-02 | Eli Lilly | Alzheimer's disease | Neurology/Psychiatry | Done — see README entry #69 |
| 2024 | deuruxolitinib (Leqselvi) | 217900 | 2024-07-25 | Sun Pharmaceutical | Alopecia areata | Immunology/Rheumatology/Dermatology | Done — see README entry #43 |
| 2024 | vorasidenib (Voranigo) | 218784 | 2024-08-06 | Servier | IDH-mutant diffuse glioma | Oncology | Done — see README entry #173 |
| 2024 | palopegteriparatide (Yorvipath) | 216490 | 2024-08-09 | Ascendis Pharma | Hypoparathyroidism | Endocrine | Done — see README entry #15 |
| 2024 | nemolizumab-ilto (Nemluvio) | 761390 | 2024-08-13 | Galderma | Prurigo nodularis (orig.); atopic dermatitis added 2025 | Immunology/Rheumatology/Dermatology | Done — see README entry #44. Corrected: original row conflated this with lebrikizumab-lbkz (Ebglyss, BLA 761306, Eli Lilly), a different IL-13 antagonist drug — added as its own row below. |
| 2024 | lebrikizumab-lbkz (Ebglyss) | 761306 | 2024-09-13 | Eli Lilly | Moderate-to-severe atopic dermatitis | Immunology/Rheumatology/Dermatology | Done — see README entry #45. (Newly added — discovered missing from the index during Immunology deep-dive research, previously conflated with the nemolizumab row above.) |
| 2024 | arimoclomol (Miplyffa) | 214927 | 2024-09-20 | Zevra Denmark | Niemann-Pick disease type C | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #50 |
| 2024 | levacetylleucine (Aqneursa) | 219132 | 2024-09-24 | Zevra Denmark | Niemann-Pick disease type C | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #51 |
| 2024 | xanomeline/trospium chloride (Cobenfy) | 216158 | 2024-09-26 | Bristol Myers Squibb | Schizophrenia | Neurology/Psychiatry | Done — see README entry #70 |
| 2024 | flurpiridaz F 18 (Flyrcado) | 215168 | 2024-09-27 | GE Healthcare | Cardiac PET perfusion imaging | Cardiovascular/Metabolic | Done — see README entry #50 |
| 2024 | inavolisib (Itovebi) | 219249 | 2024-10-10 | Genentech | PIK3CA-mutant breast cancer | Oncology | Done — see README entry #174 |
| 2024 | marstacimab-hncq (Hympavzi) | 761369 | 2024-10-11 | Pfizer | Hemophilia A/B | Hematology | Done — see README entry #31 |
| 2024 | zolbetuximab-clzb (Vyloy) | 761365 | 2024-10-18 | Astellas | CLDN18.2+ gastric/GEJ cancer | Oncology | Done — see README entry #175 |
| 2024 | sulopenem etzadroxil/probenecid (Orlynvah) | 213972 | 2024-10-25 | Iterum Therapeutics | Uncomplicated UTI | Infectious Disease | Done — see README entry #75 |
| 2024 | revumenib (Revuforj) | 218944 | 2024-11-15 | Syndax Pharmaceuticals | KMT2A-rearranged acute leukemia | Oncology | Done — see README entry #176 |
| 2024 | zanidatamab-hrii (Ziihera) | 761416 | 2024-11-20 | Jazz Pharmaceuticals | HER2+ biliary tract cancer | Oncology | Done — see README entry #177 |
| 2024 | acoramidis (Attruby) | 216540 | 2024-11-22 | BridgeBio Pharma | Transthyretin amyloid cardiomyopathy | Cardiovascular/Metabolic | Done — see README entry #51 |
| 2024 | landiolol (Rapiblyk) | 217202 | 2024-11-22 | AOP Health | Supraventricular tachycardia/atrial fibrillation | Cardiovascular/Metabolic | Done — see README entry #52 |
| 2024 | iomeprol (Iomervu) | 216017 | 2024-11-27 | Bracco | Contrast imaging agent | Other/Misc | Done — see README entry #38 |
| 2024 | zenocutuzumab-zbco (Bizengri) | 761352 | 2024-12-04 | Merus N.V. | NRG1 fusion+ NSCLC/pancreatic cancer | Oncology | Done — see README entry #178 |
| 2024 | cosibelimab-ipdl (Unloxcyt) | 761297 | 2024-12-13 | Checkpoint Therapeutics | Cutaneous squamous cell carcinoma | Oncology | Done — see README entry #179 |
| 2024 | crinecerfont (Crenessity) | 218808, 218820 | 2024-12-13 | Neurocrine Biosciences | Congenital adrenal hyperplasia | Endocrine | Done — see README entry #16 |
| 2024 | ensartinib (Ensacove) | 218171 | 2024-12-18 | Xcovery | ALK+ NSCLC | Oncology | Done — see README entry #180 |
| 2024 | olezarsen (Tryngolza) | 218614 | 2024-12-19 | Ionis Pharmaceuticals | Familial chylomicronemia syndrome | Cardiovascular/Metabolic | Done — see README entry #53 |
| 2024 | vanzacaftor/tezacaftor/deutivacaftor (Alyftrek) | 218730 | 2024-12-20 | Vertex Pharmaceuticals | Cystic fibrosis | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #52 |
| 2024 | concizumab-mtci (Alhemo) | 761315 | 2024-12-20 | Novo Nordisk | Hemophilia A/B with inhibitors | Hematology | Done — see README entry #32 |
| 2025 | datopotamab deruxtecan-dlnk (Datroway) | 761394 | 2025-01-17 | Daiichi Sankyo | HR+/HER2- breast cancer | Oncology | Done — see README entry #181 |
| 2025 | treosulfan (Grafapex) | 214759 | 2025-01-21 | Medexus Pharma | HSCT preparative regimen | Hematology | Done — see README entry #33 |
| 2025 | suzetrigine (Journavx) | 219209 | 2025-01-30 | Vertex Pharmaceuticals | Moderate-to-severe acute pain (non-opioid) | Other/Misc | Done — see README entry #39 |
| 2025 | mirdametinib (Gomekli) | 219379 | 2025-02-11 | SpringWorks Therapeutics | NF1 plexiform neurofibromas | Oncology | Done — see README entry #182 |
| 2025 | vimseltinib (Romvimza) | 219304 | 2025-02-14 | Deciphera Pharmaceuticals | Tenosynovial giant cell tumor | Oncology | Done — see README entry #183 |
| 2025 | gepotidacin (Blujepa) | 218230 | 2025-03-25 | GlaxoSmithKline | Uncomplicated UTI | Infectious Disease | Done — see README entry #76 |
| 2025 | fitusiran (Qfitlia) | 219019 | 2025-03-28 | Genzyme (Sanofi) | Hemophilia A/B | Hematology | Done — see README entry #34 |
| 2025 | atrasentan (Vanrafia) | 219208 | 2025-04-02 | Novartis | IgA nephropathy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #53 |
| 2025 | penpulimab-kcqx (unbranded) | 761258 | 2025-04-23 | Akeso Biopharma | Recurrent/metastatic nasopharyngeal carcinoma | Oncology | Done — see README entry #184 |
| 2025 | nipocalimab-aahu (Imaavy) | 761430 | 2025-04-29 | Janssen Biotech | Generalized myasthenia gravis | Neurology/Psychiatry | Done — see README entry #71 |
| 2025 | avutometinib/defactinib (Avmapki/Fakzynja) | 219616 | 2025-05-08 | Verastem Inc | KRAS-mutant low-grade serous ovarian cancer | Oncology | Done — see README entry #185 |
| 2025 | telisotuzumab vedotin-tllv (Emrelis) | 761384 | 2025-05-14 | AbbVie | c-Met overexpressed NSCLC | Oncology | Done — see README entry #186 |
| 2025 | acoltremon (Tryptyr) | 217370 | 2025-05-28 | Alcon Laboratories | Dry eye disease | Ophthalmology | Done — see README entry #15 |
| 2025 | clesrovimab-cfor (Enflonsia) | 761432 | 2025-06-09 | Merck Sharp & Dohme | RSV lower respiratory disease prevention | Infectious Disease | Done — see README entry #77 |
| 2025 | taletrectinib (Ibtrozi) | 219713 | 2025-06-11 | Nuvation Bio | ROS1+ NSCLC | Oncology | Done — see README entry #187 |
| 2025 | garadacimab-gxii (Andembry) | 761367 | 2025-06-16 | CSL Behring | Hereditary angioedema prevention | Immunology/Rheumatology/Dermatology | Done — see README entry #46 |
| 2025 | linvoseltamab-gcpt (Lynozyfic) | 761400 | 2025-07-02 | Regeneron | Relapsed/refractory multiple myeloma | Oncology | Done — see README entry #188 |
| 2025 | sunvozertinib (Zegfrovy) | 219839 | 2025-07-02 | Dizal Pharmaceutical | EGFR exon 20 insertion+ NSCLC | Oncology | Done — see README entry #189 |
| 2025 | sebetralstat (Ekterly) | 219301 | 2025-07-03 | KalVista Pharmaceuticals | Hereditary angioedema, acute attacks | Immunology/Rheumatology/Dermatology | Done — see README entry #47 |
| 2025 | delgocitinib (Anzupgo) | 219155 | 2025-07-23 | LEO Pharma | Chronic hand eczema | Immunology/Rheumatology/Dermatology | Done — see README entry #48 |
| 2025 | sepiapterin (Sephience) | 219666 | 2025-07-28 | PTC Therapeutics | Sepiapterin-responsive phenylketonuria | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #54 |
| 2025 | aceclidine (Vizz) | 218585 | 2025-07-31 | LENZ Therapeutics | Presbyopia | Ophthalmology | Done — see README entry #16 |
| 2025 | dordaviprone (Modeyso) | 219876 | 2025-08-06 | Chimerix | H3 K27M-mutant diffuse midline glioma | Oncology | Done — see README entry #190 |
| 2025 | zongertinib (Hernexeos) | 219042 | 2025-08-08 | Boehringer Ingelheim | HER2-mutant NSCLC | Oncology | Done — see README entry #191 |
| 2025 | brensocatib (Brinsupri) | 217673 | 2025-08-12 | Insmed | Non-cystic fibrosis bronchiectasis | Other/Misc | Done — see README entry #40 |
| 2025 | donidalorsen (Dawnzera) | 219407 | 2025-08-21 | Ionis Pharmaceuticals | Hereditary angioedema prevention | Immunology/Rheumatology/Dermatology | Done — see README entry #49 |
| 2025 | rilzabrutinib (Wayrilz) | 219685 | 2025-08-29 | Genzyme (Sanofi) | Immune thrombocytopenia | Hematology | Done — see README entry #35 |
| 2025 | pembrolizumab/berahyaluronidase alfa-pmph (Keytruda Qlex) | 761467 | 2025-09-19 | Merck Sharp & Dohme | Solid tumor indications (subcutaneous pembrolizumab) | Oncology | Done — see README entry #192 |
| 2025 | elamipretide (Forzinity) | 215244 | 2025-09-19 | Stealth BioTherapeutics | Barth syndrome, muscle strength | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #55 |
| 2025 | imlunestrant (Inluriyo) | 218881 | 2025-09-25 | Eli Lilly | ER+/HER2- breast cancer | Oncology | Done — see README entry #193 |
| 2025 | paltusotine (Palsonify) | 219070 | 2025-09-25 | Crinetics Pharmaceuticals | Acromegaly | Endocrine | Done — see README entry #17 |
| 2025 | remibrutinib (Rhapsido) | 218436 | 2025-09-30 | Novartis | Chronic spontaneous urticaria | Immunology/Rheumatology/Dermatology | Done — see README entry #50 |
| 2025 | nerandomilast (Jascayd) | 218764 | 2025-10-07 | Boehringer Ingelheim | Idiopathic pulmonary fibrosis | Other/Misc | Done — see README entry #41 |
| 2025 | elinzanetant (Lynkuet) | 219469 | 2025-10-24 | Bayer HealthCare | Moderate-to-severe menopausal vasomotor symptoms | Endocrine | Done — see README entry #18 |
| 2025 | doxecitine/doxribtimine (Kygevvi) | 219792 | 2025-11-03 | UCB Inc | Thymidine kinase 2 deficiency | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #56 |
| 2025 | ziftomenib (Komzifti) | 220305 | 2025-11-13 | Kura Oncology | NPM1-mutated relapsed/refractory AML | Oncology | Done — see README entry #194 |
| 2025 | plozasiran (Redemplo) | 219947 | 2025-11-18 | Arrowhead Pharmaceuticals | Familial chylomicronemia syndrome | Cardiovascular/Metabolic | Done — see README entry #54 |
| 2025 | sevabertinib (Hyrnuo) | 219972 | 2025-11-19 | Bayer HealthCare | HER2-mutated non-squamous NSCLC | Oncology | Done — see README entry #195 |
| 2025 | sibeprenlimab-szsi (Voyxact) | 761434 | 2025-11-25 | Otsuka Pharmaceutical | IgA nephropathy, proteinuria reduction | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #57 |
| 2025 | lerodalcibep-liga (Lerochol) | 761427 | 2025-12-12 | LIB Therapeutics | LDL cholesterol reduction | Cardiovascular/Metabolic | Done — see README entry #55 |
| 2025 | zoliflodacin (Nuzolvence) | 219491 | 2025-12-12 | Entasis Therapeutics | Uncomplicated urogenital gonorrhea | Infectious Disease | Done — see README entry #78 |
| 2025 | etripamil (Cardamyst) | 218571 | 2025-12-12 | Milestone Pharmaceuticals | Paroxysmal supraventricular tachycardia | Cardiovascular/Metabolic | Done — see README entry #56 |
| 2025 | depemokimab-ulaa (Exdensur) | 761458 | 2025-12-16 | GlaxoSmithKline | Severe eosinophilic asthma, add-on therapy | Other/Misc | Done — see README entry #42 |
| 2025 | aficamten (Myqorzo) | 219083 | 2025-12-19 | Cytokinetics | Symptomatic obstructive hypertrophic cardiomyopathy | Cardiovascular/Metabolic | Done — see README entry #57 |
| 2025 | narsoplimab-wuug (Yartemlea) | 761152 | 2025-12-23 | Omeros Corp | HSCT-associated thrombotic microangiopathy | Hematology | Done — see README entry #36 |
| 2025 | tradipitant (Nereus) | 220152 | 2025-12-30 | Vanda Pharmaceuticals | Motion sickness vomiting | Other/Misc | Done — see README entry #43 |
| 2026 | copper histidinate (Zycubo) | 211241 | 2026-01-12 | Sentynl Therapeutics | Menkes disease | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #58 |
| 2026 | difamilast (Adquey) | 219474 | 2026-02-12 | Acrotech Biopharma | Atopic dermatitis | Immunology/Rheumatology/Dermatology | Done — see README entry #51 |
| 2026 | milsaperidone (Bysanti) | 220358 | 2026-02-20 | Vanda Pharmaceuticals | Schizophrenia | Neurology/Psychiatry | Done — see README entry #72 |
| 2026 | pegzilarginase-nbln (Loargys) | 761211 | 2026-02-23 | Immedica Pharma | Arginase 1 deficiency | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #59 |
| 2026 | navepegritide (Yuviwel) | 219164 | 2026-02-27 | Ascendis Pharma | Growth hormone deficiency | Endocrine | Done — see README entry #19 |
| 2026 | linerixibat (Lynavoy) | 220295 | 2026-03-17 | Intercept (Alfasigma) | Cholestatic pruritus, primary biliary cholangitis | Gastroenterology | Done — see README entry #20 |
| 2026 | icotrokinra (Icotyde) | 220149 | 2026-03-17 | Janssen Biotech | Plaque psoriasis (oral IL-23 peptide) | Immunology/Rheumatology/Dermatology | Done — see README entry #52 |
| 2026 | tividenofusp alfa-eknm (Avlayah) | 761485 | 2026-03-24 | Denali Therapeutics | Hunter syndrome (MPS II), brain-penetrant enzyme | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #60 |
| 2026 | relacorilant (Lifyorli) | 220641 | 2026-03-25 | Corcept Therapeutics | Cushing's syndrome | Endocrine | Done — see README entry #20. Note: the actual approved indication is platinum-resistant ovarian cancer (+ nab-paclitaxel, ROSELLA trial), not Cushing's syndrome — this row's indication/category reflects the original master-scaffold assumption, not the verified approval; see the README entry for the corrected indication. |
| 2026 | insulin icodec-abae (Awiqli) | 761326 | 2026-03-26 | Novo Nordisk | Type 2 diabetes (once-weekly basal insulin) | Cardiovascular/Metabolic | Done — see README entry #58 |
| 2026 | orforglipron (Foundayo) | 220934 | 2026-04-01 | Eli Lilly | Type 2 diabetes/obesity (oral GLP-1) | Cardiovascular/Metabolic | Done — see README entry #59 |
| 2026 | doravirine/islatravir (Idvynso) | 216964 | 2026-04-20 | Merck Sharp & Dohme | HIV-1 infection | Infectious Disease | Done — see README entry #79 |
| 2026 | vepdegestrant (Veppanu) | 219835 | 2026-05-01 | Arvinas/Pfizer | ER+ breast cancer | Oncology | Done — see README entry #196 |
| 2026 | sonrotoclax (Beqalzi) | 220711 | 2026-05-13 | BeOne Medicines (BeiGene) | Relapsed/refractory mantle cell lymphoma (BCL2 inhibitor) — corrected from an initial CLL misclassification, per README entry #197 | Oncology | Done — see README entry #197 |
| 2026 | baxdrostat (Baxfendy) | 219878 | 2026-05-15 | AstraZeneca | Resistant hypertension | Cardiovascular/Metabolic | Done — see README entry #60 |
| 2026 | bulevirtide-gmod (Hepcludex) | 761468 | 2026-05-22 | Gilead Sciences | Chronic hepatitis D | Infectious Disease | Done — see README entry #80 |
| 2026 | pivekimab sunirine-pvzy (Decnupaz) | 761460 | 2026-05-27 | AbbVie | Blastic plasmacytoid dendritic cell neoplasm | Oncology | Done — see README entry #198 |
| 2026 | cefepime/zidebactam (Zaynich) | 220787 | 2026-05-29 | Wockhardt Bio | Complicated UTI / gram-negative infections | Infectious Disease | Done — see README entry #81 |
| 2026 | ensitrelvir (Xocova) | 220442 | 2026-05-29 | Shionogi | COVID-19 | Infectious Disease | Done — see README entry #82 |
| 2026 | cipepofol (Cypsedo) | 220482 | 2026-05-29 | Haisco Pharmaceutical | Procedural sedation/anesthesia | Other/Misc | Done — see README entry #44 |
| 2026 | gadoquatrane (Ambelvist) | 219627 | 2026-06-12 | Bayer HealthCare | MRI contrast agent | Other/Misc | Done — see README entry #45 |
| 2026 | tebipenem pivoxil (Utebzi) | 215960 | 2026-06-17 | GlaxoSmithKline | Complicated UTI | Infectious Disease | Done — see README entry #83 |
| 2026 | veligrotug-vvze (Lumvoa) | 761530 | 2026-06-26 | Viridian Therapeutics | Thyroid eye disease | Ophthalmology | Done — see README entry #17 |
| 2026 | atacicept-vymj (Trutakna) | 761486 | 2026-07-07 | Vera Therapeutics | IgA nephropathy | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #61 |
| 2026 | gedatolisib (Revtorpyk) | 219908 | 2026-07-14 | Celcuity | Breast cancer (PI3K/mTOR inhibitor) | Oncology | Done — see README entry #199 |
| 2026 | enlicitide decanoate (Lipfendra) | 220848 | 2026-07-15 | Merck Sharp & Dohme | Hypercholesterolemia (oral PCSK9 inhibitor) | Cardiovascular/Metabolic | Done — see README entry #61 |
| 2026 | zidesamtinib (Jideytro) | 220185 | 2026-07-22 | Nuvalent | ROS1+ NSCLC | Oncology | Done — see README entry #200 |
| 2026 | bevacizumab-vikg (Lytenava) | 761320 | 2026-07-24 | Outlook Therapeutics | Wet age-related macular degeneration | Ophthalmology | Done — see README entry #18 |
| 2026 | centanafadine (Simtriyo) | 218145 | 2026-07-24 | Otsuka Pharmaceutical | ADHD | Neurology/Psychiatry | Done — see README entry #73 |
| 2026 | oveporexton (Orzeyful) | 220860 | 2026-08-05 | Takeda Pharmaceuticals | Narcolepsy type 1 | Neurology/Psychiatry | Done — see README entry #74 |
| 2026 | florquinitau F-18 (Tauklarify) | 220496 | 2026-08-13 | Cerveau/Lantheus | Tau PET imaging (Alzheimer's disease) | Neurology/Psychiatry | Done — see README entry #75 |
| 2026 | iberdomide (Zenbexus) | 221075 | 2026-08-13 | Bristol Myers Squibb | Multiple myeloma | Oncology | Done — see README entry #201 |
| 2026 | garetosmab-grts (Pasatru) | 761508 | 2026-08-19 | Regeneron | Fibrodysplasia ossificans progressiva | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #62 |
| 2026 | daraxonrasib (Rasonque) | 220910 | 2026-08-26 | Revolution Medicines | RAS-mutant pancreatic cancer | Oncology | Done — see README entry #202 |
| 2026 | brepocitinib (Lisraya) | NDA 220106 | 2026-08-27 | Priovant Therapeutics (Roivant) | Dermatomyositis | Immunology/Rheumatology/Dermatology | Done — see README entry #53 |
| 2026 | rusfertide (Mimrylo) | 220605 | 2026-08-28 | Takeda Pharmaceuticals | Polycythemia vera | Hematology | Done — see README entry #37 |
| 2026 | zilganersen (Zanvastro) | 220210 | 2026-09-03 | Ionis Pharmaceuticals | Alexander disease | Rare Disease/Genetic/Metabolic-genetic | Done — see README entry #63 |
| 2026 | camizestrant (Etcamah) | 220359 | 2026-09-04 | AstraZeneca | ER+/HER2- breast cancer | Oncology | Done — see README entry #203 |
