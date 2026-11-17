# LAVi LaTeX project

- Main document: `main.tex`.
- Compiler: pdfLaTeX; bibliography: BibTeX with `main.bib` and `ieeenat_fullname.bst`.
- Run `latexmk main.tex` from this repository root. `.latexmkrc` places outputs in `build/`.
- Paper sections use the numbered files in `sec/`: `0_abstract.tex` through `7_llm_usage.tex`.
- Figures are versioned PDF assets in `figures/`. Do not ignore all PDF files.
- Preserve paper text and figures unless the user requests changes.
- This repository starts from the author's `UranFly (1).zip`. `SOURCE_ARCHIVE.json` records the original file hashes.
- Local or hosted Git changes are not automatically synchronized with Overleaf. Obtain the latest Overleaf sources before reconciling concurrent edits.
- Do not commit build products, credentials, or local archive backups.
