FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      texlive-xetex \
      texlive-latex-extra \
      texlive-lang-other \
      texlive-fonts-recommended \
      fonts-texgyre \
      fonts-texgyre-math \
      fonts-tlwg-laksaman-otf \
      fonts-tlwg-kinnari-otf \
      latexmk \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /work

# Build main.tex into build/main.pdf
CMD ["latexmk", "main.tex"]
