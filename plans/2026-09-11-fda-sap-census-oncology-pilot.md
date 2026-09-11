# FDA Phase III SAP Census — Project Plan

**Status as of 2026-09-11:** pilot stage, version 0.1.0. 10 submissions documented across 2 therapeutic areas (5 oncology, 5 cardiovascular/metabolic). This file was originally written to scope a 3-5 drug oncology-only pilot; it has been rewritten to reflect what the project actually is now, so a collaborator can pick up work without reconstructing context from chat history.

## Context

The goal is a reference census of FDA Phase III drug submissions from the last ~15 years, capturing the statistical analysis plan (SAP) actually used, the trial design/outcomes needed to understand it, and how FDA reviewed it — ultimately to catalog the range of statistical methods used in submissions and see how those plans held up under FDA review. A full census (~600-900 novel drug approvals since 2011) is too large to build in one pass; the project proceeds therapeutic-area by therapeutic-area, a handful of submissions at a time.

Key constraint discovered during the oncology pilot and confirmed in the cardiovascular pilot: **sponsors' actual SAP documents are rarely published by FDA.** What's publicly available, per submission, is some subset of:

- FDA's own **Statistical Review** (in the Multi-Discipline Review package on Drugs@FDA) — usually the richest public source of real statistical methodology detail, and sometimes includes reviewer commentary documenting where the sponsor deviated from the agreed analysis plan
- FDA **Clinical/Medical Review** and **Summary Review**
- The approved **package insert / label** (mirrors trial results, sometimes states the analysis method in a table footnote)
- **ClinicalTrials.gov**'s Documents tab for the pivotal trial — some trials (especially larger/more recent ones, or ones run by sponsors with an established data-transparency policy) have the sponsor's actual protocol and/or SAP posted as PDFs
- The pivotal trial's **journal publication** (NEJM/Lancet/JCO/etc.)

Where the true sponsor SAP text isn't public, the census **reverse-engineers the SAP** from the package insert and documented results (infer the testing procedure, multiplicity handling, and analysis population from reported endpoints, p-values/CIs, hazard ratios, censoring rules, and subgroup analyses) rather than just noting a gap. Every reconstructed passage is clearly labeled as inferred and distinguished from genuine verbatim SAP/protocol/FDA-review text.

## Repository layout

- `README.md` — the census itself, organized by therapeutic area (`## Oncology`, `## Cardiovascular / Metabolic`, ...), one `###` entry per drug submission
- `Keyword_Taxonomy.md` — controlled vocabulary (7 categories: trial design, endpoint/outcome type, primary analysis method, multiplicity control, interim monitoring/alpha-spending, missing data/censoring/bias handling, regulatory process tags) that every entry's `**Keywords:**` line draws from
- `plans/` — archived plans, date-prefixed (this file)

## Per-entry template (as actually used — follow this exactly for new entries)

```markdown
### N. Generic name (Brand name) — NDA/BLA #

**Sponsor:** ...

**Indication approved:** ...

**Approval date:** ...

**Pivotal trial:** trial name, NCT#######

**Keywords:**

- *Design:* ... (terms from Keyword_Taxonomy.md § Trial design)
- *Endpoints:* ...
- *Primary analysis:* ...
- *Multiplicity:* ... (omit if nothing notable)
- *Interim/alpha-spending:* ... (omit if nothing notable)
- *Missing data/bias:* ... (omit if nothing notable)
- *Regulatory:* ... (omit if nothing notable)

**Trial design & endpoints**

- design, population/eligibility, randomization/stratification factors, arms
- primary endpoint(s) and exact definition
- secondary endpoints
- sample size / power assumptions, interim analysis plan
- statistical methods used (test type, multiplicity control, alpha-spending, censoring)

**Documents**

- FDA Approval Letter — link
- Package Insert / Label — link
- FDA Statistical Review / Clinical Review / combined Multi-Discipline Review package — link (see sourcing playbook below for how to find these even when Drugs@FDA's overview page doesn't show them)
- ClinicalTrials.gov record — link
- Protocol / SAP (if posted) — link
- Pivotal publication: full citation. [DOI](https://doi.org/...), [PubMed](https://pubmed.ncbi.nlm.nih.gov/PMID/), [Google Scholar](https://scholar.google.com/scholar?q=URL-encoded-title)

**Other resources**

- IPD/dataset access notes (Vivli, YODA Project, Project Data Sphere) — state plainly if trial-specific availability wasn't individually confirmed
- Advisory committee meeting, if one was held

**SAP — exact text / key excerpts**

- Verbatim quoted passages, each prefixed with *[verbatim, source + section/page]*
- Where genuine SAP/protocol text isn't public: a **Reverse-engineered SAP** subsection, each point prefixed *[inferred]* and traced to the specific reported result it's inferred from
```

Formatting rules that matter for correct GitHub rendering (learned the hard way — see conversation history if you need the "why"):

- **No hard-wrapped lines.** Every paragraph, bullet item, and blockquote paragraph is written as a single long line, not manually wrapped at ~80-100 characters.
- **Blank line between every consecutive bold metadata line** (Sponsor / Indication approved / Approval date / Pivotal trial / Keywords). Without a blank line between them, GitHub's renderer collapses them into one run-on paragraph.
- **Keywords is a bulleted list**, not one dense `·`-separated line — one bullet per category.
- **Citation links use the compact form** `[DOI](...), [PubMed](...), [Google Scholar](...)`, not spelled-out "PubMed: https://... · Google Scholar: https://...".
- A DOI containing literal parentheses (e.g., some Lancet/Cell Press DOIs like `S1470-2045(17)30469-2`) must be wrapped in angle brackets in the link destination — `[DOI](<https://doi.org/10.1016/S1470-2045(17)30469-2>)` — or the unescaped parens break markdown link parsing.

## Sourcing playbook (what actually works, learned across 10 entries)

1. **Identify the submission**: NDA/BLA number, supplement number, approval date, sponsor, pivotal trial NCT number — WebSearch is usually enough.
2. **Check ClinicalTrials.gov for a genuine posted SAP/protocol first** — this is the best-case source when it exists:
   - Search `site:cdn.clinicaltrials.gov <NCT>` or `<trial name> NCT###### statistical analysis plan clinicaltrials.gov`.
   - Files typically live at `https://cdn.clinicaltrials.gov/large-docs/<XX>/<NCT>/SAP_00X.pdf` or `Prot_SAP_000.pdf`.
   - Quick existence check without guessing filenames: `https://clinicaltrials.gov/api/v2/studies/<NCT>` (JSON) — look for a `documentSection` field.
   - Download with `curl` (not WebFetch) and extract with `pdftotext -layout` locally — far more reliable and cheaper on context than asking WebFetch to parse a 100+ page PDF.
   - **Known failure mode**: at least one sponsor (Novo Nordisk, confirmed on the SELECT trial) posts documents through a redaction pipeline that strips inter-word spacing from the PDF's text layer (every character individually positioned). Text is recoverable by collapsing single spaces and treating double-spaces as word boundaries, then manually re-segmenting words — but label anything reconstructed this way as such, not as verbatim.
3. **Pull Drugs@FDA documents**:
   - `curl` requests to `accessdata.fda.gov` are blocked by Akamai bot-detection ("abuse detection" apology page) **unless you set a browser-like `User-Agent` header** — e.g. `-A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0 Safari/537.36"`.
   - Drugs@FDA's per-supplement overview page (`accessdata.fda.gov/scripts/cder/daf/index.cfm?event=overview.process&ApplNo=<N>`) sometimes lists only a label and approval letter for an efficacy supplement, even when a full review package exists. **Try the direct pattern anyway**: `accessdata.fda.gov/drugsatfda_docs/nda/<year>/<ApplNo>Orig1s<supp>.pdf` — FDA appears to have retroactively posted full combined review packages for at least some older supplements under later year-folders (2021 was the pattern seen for two 2016/2019 supplements in this project) that aren't linked from the overview page and don't surface via ordinary web search on the supplement number.
   - Same download-then-`pdftotext -layout` approach as above.
4. **Pull the pivotal publication**: identify it via WebSearch, then get authoritative identifiers — **don't guess PMIDs or DOIs from memory**:
   - PubMed E-utilities, no API key needed: `esearch.fcgi?db=pubmed&term=<DOI>[aid]` (if DOI known) or `term="<Journal>"[ta] AND <year>[dp] AND <volume>[vi] AND <first page>[pg]` (precise citation match, avoids fuzzy title-text false positives).
   - Then `esummary.fcgi?db=pubmed&id=<PMID>&retmode=json` to confirm author/title/journal match, and to pull the DOI from the `articleids` array (`idtype: doi`).
   - Google Scholar has no stable per-article URL without a cluster ID you don't have — use a search-query URL instead: `https://scholar.google.com/scholar?q=<url-encoded exact title>`.
5. **Check for public/IPD datasets**: Vivli, YODA Project, Project Data Sphere (oncology-specific). State the sponsor's general participation in these programs plainly rather than asserting trial-specific availability unless actually confirmed.
6. **Write the entry** following the template above, citing every claim to its source with a link.

## Coverage so far

**Oncology** (5): pembrolizumab/KEYNOTE-024, osimertinib/FLAURA, olaparib/SOLO-2, enzalutamide/PREVAIL (reverse-engineered — no public SAP/protocol found), venetoclax/CLL14.

**Cardiovascular / metabolic** (5): empagliflozin/EMPA-REG OUTCOME, sacubitril-valsartan/PARADIGM-HF, dapagliflozin/DECLARE-TIMI 58, evolocumab/FOURIER (reverse-engineered — no public SAP/protocol found), semaglutide/SELECT.

## Next steps for a collaborator

- **Add a third therapeutic area.** Neurology/psychiatry was discussed as the next candidate (recent high-profile approvals with notable statistical scrutiny, e.g. Alzheimer's disease drugs) but not yet started — open choice.
- Alternatively, deepen an existing area with more submissions rather than branching to a new one.
- When adding entries: reuse existing `Keyword_Taxonomy.md` terms wherever the method genuinely matches; only add a new row when a submission uses something not already listed, and write it in the same `Keyword | Definition | Seen in` format.
- Bump the `**Last updated:**` / `**Version:**` line at the top of `README.md` when you add a meaningful batch of work.
- Update this plan file's "Coverage so far" and "Next steps" sections as work progresses, so it stays useful as an onboarding doc rather than drifting back out of date.

## Verification checklist

- Every document link resolves (spot-check with `curl -s -o /dev/null -w "%{http_code}"`, remembering the User-Agent requirement for accessdata.fda.gov).
- Each entry's "SAP — exact text" section is traceable to a specific cited source — no fabricated or paraphrased-as-verbatim text passed off as a direct quote.
- Any "Reverse-engineered SAP" content is clearly labeled `[inferred]` and traced to the specific reported result it's derived from.
- New therapeutic-area sections follow the same heading structure (`## Area Name` → `### N. Drug ...`) so the file stays navigable as it grows.
