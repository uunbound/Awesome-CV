# CLAUDE.md

## Project Overview

Personal CV and resume for Peyman Shojaei, built with the Awesome-CV LaTeX template. Two output documents share section files where possible:

- **`cv.tex`** — Full curriculum vitae (all roles, publications, patents, 3 pages)
- **`resume.tex`** — Focused 1-page resume with selected experience and core competencies

## Build

```bash
just          # build both
just cv       # CV only
just resume   # resume only
just clean    # remove artifacts
```

Requires XeLaTeX (via TeX Live 2025+ or MacTeX) and the `just` task runner.

## File Layout

- `cv.tex` / `resume.tex` — Main documents (personal info, section imports)
- `cv/` — Full CV section files (experience, skills, education, honors, presentation, patents)
- `resume/` — Resume section files (summary, experience, skills, education)
- `awesome-cv.cls` — Template class (customized from upstream with fixes)
- `fonts/` — Bundled Roboto font files
- `profile.png` — Profile photo

## Key Conventions

- Content is authored in LaTeX using Awesome-CV macros: `\cventry`, `\cvskill`, `\cvhonor`
- Personal info (name, email, phone, links) is duplicated in both `cv.tex` and `resume.tex` headers — keep them in sync
- Dates use `Mon. YYYY -- Mon. YYYY` format with en-dashes (`--`)
- The resume groups early-career roles into a single consolidated entry for brevity
- The resume profile section uses raw font commands instead of `\cvparagraph` to avoid overlap with the section header line
- Icons use FontAwesome 6 via the system-installed `fontawesome6` CTAN package (not bundled)

## Upstream Fixes Applied

The `awesome-cv.cls` includes cherry-picked fixes from [posquit0/Awesome-CV](https://github.com/posquit0/Awesome-CV):

- **Short section names:** Uses `xstring` `\StrSplit` instead of 3-token `\@sectioncolor` macro
- **cvskill overflow:** Uses `tabularx` instead of `tabular*` to prevent long text overflow
- **ATS text layer:** HarfBuzz renderer for better ATS parsing of PDF text
- **FontAwesome 6:** Upgraded from bundled v4 to system `fontawesome6` package
- **cventry spacing:** Uses `\ifstrempty` to skip empty description rows

## Common Tasks

- **Update experience:** Edit `cv/experience.tex` (full) and `resume/experience.tex` (condensed)
- **Update contact info:** Edit the `\email`, `\mobile`, `\homepage`, `\linkedin` lines in both `cv.tex` and `resume.tex`
- **Add a new section:** Create a `.tex` file in `cv/` or `resume/`, then add `\input{cv/newsection.tex}` to the main document
- **Change accent color:** Modify `\colorlet{awesome}{awesome-red}` in the main `.tex` files
