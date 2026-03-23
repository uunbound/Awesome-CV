# Awesome-CV build recipes

build_dir := ".build"

# Build both CV and resume
default: cv resume

# Build the full CV
cv:
    mkdir -p {{build_dir}}
    xelatex -output-directory={{build_dir}} cv.tex
    cp {{build_dir}}/cv.pdf .

# Build the focused resume
resume:
    mkdir -p {{build_dir}}
    xelatex -output-directory={{build_dir}} resume.tex
    cp {{build_dir}}/resume.pdf .

# Clean build artifacts
clean:
    rm -rf {{build_dir}} cv.pdf resume.pdf
