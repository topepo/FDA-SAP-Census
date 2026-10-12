# FDA SAP Census

A census of the statistical analysis plans (SAPs) behind FDA novel drug approvals from 2011 to 2026 (684 drugs), and analyses of the statistical methods used in them.

- `census/`: the census. One entry per drug, covering trial design, the SAP (verbatim where public, otherwise reconstructed) and FDA's review.
- `analysis/`: analyses built on the census, numbered in the order they were created. Each folder holds its outputs and the code or agent instructions used to produce them, where available.
- `R/`: code shared across analyses.
- `plans/`: project plans.
