# FDA Phase III SAP Census — Oncology Pilot

## Context

The user wants to build a reference census of FDA Phase III drug submissions from
the last 15 years, capturing the statistical analysis plan (SAP), trial design,
outcomes, and FDA review documents for each — ultimately to catalog the range of
statistical methods used in submissions and see how those plans held up under FDA
review. A full census (~600-900 novel drug approvals since 2011) is too large to
build in one pass, so this plan covers a pilot: **3-5 oncology submissions**,
fully worked out, to validate the format and sourcing approach before scaling to
other therapeutic areas.

Key constraint discovered during scoping: **sponsors' actual SAP documents are
rarely published by FDA.** What's publicly available, per submission, is some
subset of:
- FDA's own **Statistical Review** (written by FDA statisticians, in the
  Multi-Disciplinary Review package on Drugs@FDA) — usually the richest public
  source of real statistical methodology detail
- FDA **Clinical/Medical Review** and **Summary Review**
- The approved **package insert / label** (also mirrors trial results)
- **ClinicalTrials.gov** record for the pivotal trial — some trials (especially
  larger, more recent ones) have the sponsor's actual protocol and/or SAP posted
  as PDFs under the "Documents" tab
- The pivotal trial's **journal publication** (NEJM/Lancet/JCO/etc.), whose
  supplementary appendix often includes a detailed statistical methods section
  and sometimes the full SAP

Per user decision: use whatever combination of these is genuinely available for
each drug. Where the true sponsor SAP text isn't public, **reverse-engineer the
SAP** from the package insert and documented results (e.g., infer the testing
procedure, multiplicity handling, and analysis population from the reported
endpoints, p-values/CIs, hazard ratios, censoring rules, and subgroup analyses
in the label, FDA review, and publication) rather than just noting a gap. Any
reconstructed passage must be clearly labeled as inferred/reverse-engineered
and distinguished from genuine verbatim SAP/protocol/FDA-review text.

## Output

Single file: `/Users/max/Documents/fda-sap-census/FDA_SAP_Census.md`, organized as:

```
# FDA Phase III SAP Census

## Oncology
### <Drug 1>
### <Drug 2>
...
```

Each drug entry follows this template:

```markdown
### <Generic name> (<Brand name>) — NDA/BLA #, Approved <date>

**Sponsor:** ...
**Indication:** ...
**Pivotal trial:** <trial name>, NCT#######

**Trial design & endpoints**
- Design (randomization, blinding, arms, ratio, population, key eligibility)
- Primary endpoint(s) and definition
- Secondary endpoint(s)
- Sample size / power assumptions, interim analysis plan
- Statistical methods used (test type, multiplicity control, alpha-spending,
  handling of missing data / censoring)

**Documents**
- FDA Approval Letter — link
- FDA Statistical Review — link
- FDA Clinical/Medical Review — link
- FDA Summary Review — link
- Package Insert / Label — link
- ClinicalTrials.gov record — link
- Protocol / SAP (if posted) — link
- Pivotal publication — citation + link

**Other resources**
- Public/IPD datasets (Project Data Sphere, Vivli, YODA Project) if available
- FDA Oncologic Drugs Advisory Committee (ODAC) materials, if applicable

**SAP — exact text / key excerpts**
- Verbatim quoted passages (with source + section/page cited) covering endpoint
  definitions, hypothesis testing procedure, multiplicity adjustment, interim/
  futility rules, missing-data handling
- Where genuine SAP/protocol text isn't public: a clearly labeled
  **"Reverse-engineered SAP"** subsection reconstructing the likely analysis
  methodology from the package insert and documented results (reported
  statistics, censoring approach, subgroup/multiplicity patterns, analysis
  population definitions), with each inferred point traced to the result(s)
  it's inferred from
```

## Candidate drugs for the pilot

Chosen to span different statistical designs (event-driven survival endpoints,
biomarker-stratified populations, accelerated-approval surrogate endpoints,
non-inferiority) and to bias toward trials likely to have posted
protocol/SAP documents:

1. **Pembrolizumab (Keytruda)** — KEYNOTE-024 (1L NSCLC, PD-L1 ≥50%) — OS/PFS
   with hierarchical/alpha-splitting testing
2. **Osimertinib (Tagrisso)** — FLAURA (1L EGFR-mutant NSCLC) — PFS primary,
   OS secondary, biomarker-selected population
3. **Olaparib (Lynparza)** — SOLO-2 or SOLO-1 (BRCA-mutant ovarian) — PARP
   inhibitor, biomarker-driven, PFS primary with maintenance design
4. **Enzalutamide (Xtandi)** — PREVAIL (prostate cancer) — event-driven,
   co-primary endpoints (OS + rPFS)
5. **Venetoclax (Venclexta)** — MURANO or CLL14 (CLL) — combination regimen,
   MRD as exploratory/secondary endpoint

Final list may shift by 1-2 drugs if research turns up that a candidate lacks
enough public detail (e.g., no posted SAP/protocol, thin FDA statistical
review) — will swap in a comparable alternative rather than force a thin entry.

## Execution approach

Research is done directly (not delegated to subagents) given the pilot is only
3-5 drugs and precision in verbatim-quoting SAP text requires close control.
For each drug:

1. **Identify the submission**: confirm NDA/BLA number, approval date, sponsor,
   and pivotal trial NCT number via WebSearch.
2. **Pull Drugs@FDA documents**: locate the Multi-Disciplinary Review /
   approval package on `accessdata.fda.gov` (via WebSearch + WebFetch), extract
   the Statistical Review and Clinical Review sections relevant to trial design,
   endpoints, and analysis methodology.
3. **Pull the ClinicalTrials.gov record**: check the Documents tab for a posted
   protocol/SAP PDF; if present, fetch and quote directly.
4. **Pull the pivotal publication**: identify the NEJM/Lancet/JCO paper, note
   its statistical methods section and supplementary appendix if accessible.
5. **Check for public datasets**: search Project Data Sphere, Vivli, and the
   YODA Project for the specific trial's individual patient data availability.
6. **Write the entry** into `FDA_SAP_Census.md` following the template above,
   citing every claim to its source document with a link, and quoting SAP-
   relevant text verbatim (not paraphrased) with clear attribution of which
   document it came from.

Tools needed at execution time (currently deferred, will load via ToolSearch):
`WebSearch`, `WebFetch`.

## Verification

- Every document link in the file resolves (spot-check by refetching a sample).
- Each entry's "SAP — exact text" section is traceable to a specific cited
  source (Statistical Review page/section, ClinicalTrials.gov document, or
  publication section) — no fabricated or paraphrased-as-verbatim text passed
  off as a direct quote.
- Any "Reverse-engineered SAP" content is clearly labeled as inferred and each
  inferred point cites the specific reported result it's derived from.
- Confirm therapeutic-area heading structure supports appending future areas
  (cardiology, neurology, etc.) without restructuring the oncology section.
