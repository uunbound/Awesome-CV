# Peyman Shojaei — CV & Resume

LaTeX-based CV and resume built on the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template.

## Structure

```
├── cv.tex              # Full curriculum vitae (3 pages)
├── resume.tex          # Focused resume (2 pages)
├── cv/                 # CV section files
│   ├── experience.tex
│   ├── skills.tex
│   ├── education.tex
│   ├── honors.tex
│   ├── presentation.tex
│   └── patents.tex
├── resume/             # Resume section files
│   ├── summary.tex
│   ├── experience.tex
│   ├── skills.tex
│   ├── education.tex
│   └── honors.tex
├── awesome-cv.cls      # Template class file
├── fontawesome.sty     # FontAwesome icon bindings
├── fonts/              # Bundled fonts (Roboto, FontAwesome)
├── profile.jpg         # Profile photo
└── justfile            # Build recipes
```

## Requirements

A full TeX distribution with XeLaTeX. [TeX Live](https://www.tug.org/texlive/) is recommended.

- **macOS:** `brew install --cask mactex`
- **Ubuntu/Debian:** `sudo apt-get install texlive-full`
- **[just](https://github.com/casey/just)** task runner (optional): `brew install just`

## Usage

```bash
# Build both CV and resume
just

# Build individually
just cv
just resume

# Clean build artifacts
just clean
```

Or directly with XeLaTeX:

```bash
xelatex cv.tex
xelatex resume.tex
```

## Editing

- **Personal info** is set in the header of `cv.tex` and `resume.tex`
- **Section content** lives in `cv/` (full version) and `resume/` (condensed version)
- The CV includes all roles; the resume groups early-career positions and trims bullet points

## Credits

Based on [Awesome-CV](https://github.com/posquit0/Awesome-CV) by Claud D. Park, licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
