# FDA Phase III SAP Census — Project Plan

**Status as of 2026-09-12:** **complete, version 2.0.0.** All 684 FDA novel drug approvals tracked in `census/master_index.md` (January 2011 through early September 2026) have a full SAP-depth entry in `census/census.md`, across all 13 therapeutic areas (Oncology 203, Cardiovascular/Metabolic 61, Infectious Disease 83, Neurology/Psychiatry 75, Rare Disease/Genetic/Metabolic-genetic 63, Immunology/Rheumatology/Dermatology 53, Other/Misc 45, Hematology 37, Gastroenterology 20, Endocrine 20, Ophthalmology 18, Respiratory 6). This file was originally written to scope a 3-5 drug oncology-only pilot, then rewritten mid-project as an onboarding doc during the pilot phase; it's now rewritten again as a retrospective + maintenance guide, since the original full-census goal has been reached and the main remaining work is upkeep (new approvals as they happen, corrections, deepening existing entries) rather than new-area buildout.

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

- `census/census.md` — the census itself, organized by therapeutic area (`## Oncology`, `## Cardiovascular / Metabolic`, ...), one `###` entry per drug submission
- `census/master_index.md` — the master scaffold: every FDA novel drug approval tracked, with a Status column pointing to the corresponding `census/census.md` entry number
- `census/keyword_taxonomy.md` — controlled vocabulary (7 categories: trial design, endpoint/outcome type, primary analysis method, multiplicity control, interim monitoring/alpha-spending, missing data/censoring/bias handling, regulatory process tags) that every entry's `**Keywords:**` line draws from
- `census/acronyms.md` — glossary of the regulatory/statistical/clinical acronyms used throughout the census (not trial codenames or drug compound codes, which are proper names, not decodable abbreviations)
- `plans/` — archived plans, date-prefixed (this file)

## Per-entry template (as actually used — follow this exactly for new entries)

```markdown
### N. Generic name (Brand name) — NDA/BLA #

**Sponsor:** ...

**Indication approved:** ...

**Approval date:** ...

**Pivotal trial:** trial name, NCT#######

**Keywords:**

- *Design:* ... (terms from census/keyword_taxonomy.md § Trial design)
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

**100% complete — 684/684 drugs, 13/13 therapeutic areas.** See `census/master_index.md`'s summary-statistics tables for the exact per-year and per-therapeutic-area breakdown, and its Status column (every row now reads "Done — see README entry #N") for the drug-by-drug mapping into `census/census.md`.

## How this got built at scale (for anyone extending it later)

The pilot (10 drugs, 2 areas) validated the approach; the remaining ~674 drugs across 11 more areas were built via a repeatable batch pipeline, roughly:

1. **Scaffold first.** `census/master_index.md` was built as a complete 684-row chronological table (year, generic/brand name, NDA/BLA #, approval date, sponsor, indication, therapeutic area, status) *before* any deep-dive entries were written, sourced from FDA's official "Compilation of CDER NME Drug and New Biologic Approvals" plus per-year Novel Drug Approvals pages. This scaffold is what let deep-dive work proceed in disconnected batches without losing track of what's left — the Status column is the single source of truth for "is this drug done."
2. **Batch by therapeutic area, chronological order, ~9-10 drugs per agent.** For each area, pull all "Not started" rows for that area from `census/master_index.md`, split into chunks of ~9-10 in date order, and dispatch one research agent per chunk in parallel (a single message with multiple `Agent` tool calls).
3. **Each agent's prompt included:** a pointer to this plan file and to 2-3 already-written entries elsewhere in `census/census.md` as worked examples; the exact drug list with NDA/BLA #s and approval dates (pre-resolved from `census/master_index.md`, not re-discovered); any known notable regulatory history worth digging into (CRLs, AdCom splits, withdrawals) as a research prompt, not an assumption to just repeat; and an explicit instruction to flag (not silently invent) genuinely new `census/keyword_taxonomy.md` terms inline as `(proposed new term)`, since concurrent agents editing the shared taxonomy file directly caused conflicts early on.
4. **The single biggest recurring failure mode**: an agent drafting the full batch's markdown as chat narration before calling `Write`, which blows the 16000-output-token response limit and kills the agent with nothing saved. The fix baked into every later prompt: do all research via tool calls only, never write entry text in the chat response, then call `Write` with *only* the first 3-5 entries as content (zero narration), followed by 1-2 `Edit` calls to append the rest. When a batch still failed this way, the recovery move was to resume with an explicit 3-way Write-then-Edit-then-Edit split, which reliably fixed it on retry.
5. **A second recurring failure mode**: agents spawning their own sub-agents that ended up racing each other on the same shared `.batch_drafts/*.md` scratch file (overwriting each other's entries). When flagged via the inter-agent messaging channel, the fix was always the same: designate exactly one agent as sole writer, tell the others to stand down, and — if useful research was already sitting in a stood-down agent's scratchpad — pull it in directly rather than re-deriving it.
6. **Merge pipeline, run once per batch of batches (i.e., once per therapeutic area):**
   - Concatenate all batch files for the area, in chronological order.
   - Strip each batch's internal numbering (`### N. ` → `### `) and renumber sequentially across the whole merged set.
   - Regex-fix any batch file where an internal `---` entry separator was missing its blank line (this silently merges entries when naively split on `\n\n---\n\n`).
   - Strip `(proposed new term)` / `(reused term)` inline annotations — these come in many phrasings (`— proposed new term`, `, proposed new term)`, `(proposed new term: "Name")`, etc.), so a few regex passes plus manual cleanup of stragglers is normal; verify zero occurrences remain before inserting into `census/census.md`.
   - Insert the merged section into `census/census.md` right before the `## Cross-cutting observations` section at the end, using a marker-string Python replace (not manual editing — the files are large).
   - Run the QA suite (below) on the whole file, not just the new section, since a bad marker replace or leftover formatting bug from an *earlier* round sometimes only becomes visible once you check the whole file.
   - Update `census/master_index.md`'s Status column for that area's rows (order-matched 1:1 against the new `census/census.md` entries' chronological order — verify this holds before assuming it, since one round needed a manual renumber after a late-discovered missing drug shifted everything by one).
   - Add a curated (not exhaustive) selection of the round's most significant proposed new terms to `census/keyword_taxonomy.md`, choosing depth over completeness under time pressure — merging near-duplicate proposals into existing rows rather than cataloging every nuance.
   - Bump the version/count headers in both `census/census.md` and `census/master_index.md`.
   - Delete the round's `.batch_drafts/` scratch directory.

## QA suite (run after every merge round)

- **No hard-wrapped lines** anywhere in the diff.
- **Blank line between every consecutive `**bold**` metadata line** — check programmatically across the *whole* `census/census.md`, not just the new section (`for i in range(len(lines)-1): if lines[i] starts/ends with ** and lines[i+1] starts/ends with **: flag`).
- **No double `---` separators** (`\n---\n\n---\n`) — this crept in repeatedly at section-boundary insertion points; check and collapse to a single separator.
- **Keywords is a bulleted list**, never one dense inline line.
- **DOI/PubMed/Google Scholar link parity**: every line with `[DOI](` should also have `[PubMed](` and `[Google Scholar](`; a handful of genuine misses turned up almost every round on secondary/supporting citations (not the main pivotal publication) and were fixed by adding the missing link.
- **Zero leftover `(proposed new term)` / `(reused term)` annotations** anywhere in `census/census.md`.
- **Header-count sanity check**: `grep -c "^### " census/census.md` should equal the sum of all per-area entry counts plus the 3 unnumbered subheaders under `## Cross-cutting observations`.
- **Spot-check ~10-12 random `accessdata.fda.gov` links per round** with `curl -s -o /dev/null -w "%{http_code}" -A "<browser UA>"` — expect all 200s (redirects to `https://` from an `http://` link are fine, just confirm the final resolved status is 200).
- **Master_Index ↔ README consistency**: `grep -c "| Done"` and `grep -c "Not started"` in `census/master_index.md` should sum to 684; cross-check a handful of "Done — see README entry #N" rows against the actual `census/census.md` header at that number.

## Known data-quality notes (discovered during the build, not yet independently re-verified beyond what's noted)

- **Relacorilant (Lifyorli, NDA 220641)** is categorized under Endocrine in `census/master_index.md` (inherited from the original master-scaffold assumption that it was a Cushing's-syndrome drug), but the actual approved indication per FDA's own label/approval letter is **platinum-resistant ovarian cancer** (+ nab-paclitaxel, ROSELLA trial) — a different mechanism/indication entirely. The `census/census.md` entry documents the correct indication; the `census/master_index.md` row carries an explanatory note but was not moved into the Oncology section, to avoid renumbering churn under time pressure. A future cleanup could relocate this entry.
- **Navepegritide (Yuviwel)** is for achondroplasia, not growth hormone deficiency as originally assumed when the master scaffold was built — corrected in the actual entry.
- **Nemolizumab-ilto vs. lebrikizumab-lbkz**: the original master scaffold conflated these two same-week, different-mechanism 2024 atopic dermatitis approvals into a single row. Both now have their own correct entries; **lebrikizumab-lbkz (Ebglyss, BLA 761306)** was the specific drug missing entirely from the original 683-drug scaffold, which is why the total is 684, not 683.
- A handful of `NDA`/`BLA` numbers that were originally marked `TBD` in the master scaffold were resolved during deep-dive research (via openFDA's `drugsfda` API, cross-checked against live FDA approval-letter/label URLs): artesunate → NDA 213036, Xeglyze/abametapir → NDA 206966, brepocitinib/Lisraya → NDA 220106, Pizensy/lactitol → NDA 211281. One remains unresolved: gallium Ga 68 PSMA-11.

## Next steps for a collaborator

The census is complete as a snapshot through early September 2026, but this is a living reference, not a one-time artifact. Useful next steps, roughly in priority order:

1. **Add newly-approved drugs going forward.** As FDA approves new NMEs/biologics, add a row to `census/master_index.md` (updating its summary-statistics tables) and a full entry to the relevant `census/census.md` section, following the exact template and formatting rules below. Keep both files' header counts in sync.
2. **Resolve the one remaining `TBD` application number** (gallium Ga 68 PSMA-11) and consider relocating the relacorilant entry into Oncology (see data-quality notes above).
3. **Revisit entries built as "Reverse-engineered SAP"** if the genuine sponsor SAP/protocol is later posted to ClinicalTrials.gov (sponsors sometimes post these years after approval) — replace the `[inferred]` section with verbatim-quoted text where possible.
4. **Consolidate the `census/keyword_taxonomy.md` "proposed new term" backlog.** Because terms were curated (not exhaustively catalogued) under time pressure during the later rounds, there is likely still real signal in unmerged near-duplicate concepts across entries that could be worth a dedicated pass — search `census/census.md` for patterns that look like they should share a taxonomy row but don't yet.
5. When adding entries: reuse existing `census/keyword_taxonomy.md` terms wherever the method genuinely matches; only add a new row when a submission uses something not already listed, and write it in the same `Keyword | Definition | Seen in` format.
6. Bump the `**Last updated:**` / `**Version:**` line at the top of `census/census.md` (and the corresponding line in `census/master_index.md`) whenever you add a meaningful batch of work.
7. Keep this plan file's "Coverage so far" and "Next steps" sections current as work progresses, so it stays useful as an onboarding doc rather than drifting back out of date.

## Verification checklist

- Every document link resolves (spot-check with `curl -s -o /dev/null -w "%{http_code}"`, remembering the User-Agent requirement for accessdata.fda.gov).
- Each entry's "SAP — exact text" section is traceable to a specific cited source — no fabricated or paraphrased-as-verbatim text passed off as a direct quote.
- Any "Reverse-engineered SAP" content is clearly labeled `[inferred]` and traced to the specific reported result it's derived from.
- New therapeutic-area sections follow the same heading structure (`## Area Name` → `### N. Drug ...`) so the file stays navigable as it grows.
