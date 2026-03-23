# CLAUDE.md

## Project Overview

Personal CV and resume for Peyman Shojaei, built with the Awesome-CV LaTeX template. Two output documents share section files where possible:

- **`cv.tex`** — Full curriculum vitae (all roles, publications, patents)
- **`resume.tex`** — Condensed 2-page resume with profile summary and selected experience

## Build

```bash
just          # build both
just cv       # CV only
just resume   # resume only
just clean    # remove artifacts
```

Requires XeLaTeX (via TeX Live or MacTeX) and the `just` task runner.

## File Layout

- `cv.tex` / `resume.tex` — Main documents (personal info, section imports)
- `cv/` — Full CV section files (experience, skills, education, honors, presentation, patents)
- `resume/` — Resume section files (summary, experience, skills, education, honors)
- `awesome-cv.cls` — Template class (do not edit unless changing template behavior)
- `fontawesome.sty` — FontAwesome icon package (patched to use `Path=fonts/`)
- `fonts/` — Bundled Roboto and FontAwesome font files
- `profile.jpg` / `profile.png` — Profile photo

## Key Conventions

- Content is authored in LaTeX using Awesome-CV macros: `\cventry`, `\cvskill`, `\cvhonor`, `\cvparagraph`
- Personal info (name, email, phone, links) is duplicated in both `cv.tex` and `resume.tex` headers — keep them in sync
- Dates use `Mon. YYYY -- Mon. YYYY` format with en-dashes (`--`)
- The resume groups early-career roles into a single consolidated entry for brevity
- `fontawesome.sty` was patched to include `Path=fonts/` so fonts resolve when compiling from the project root (the original template expected compilation from a subdirectory with symlinks)

## Common Tasks

- **Update experience:** Edit `cv/experience.tex` (full) and `resume/experience.tex` (condensed)
- **Update contact info:** Edit the `\email`, `\mobile`, `\homepage`, `\linkedin` lines in both `cv.tex` and `resume.tex`
- **Add a new section:** Create a `.tex` file in `cv/` or `resume/`, then add `\input{cv/newsection.tex}` to the main document
- **Change accent color:** Modify `\colorlet{awesome}{awesome-red}` in the main `.tex` files
