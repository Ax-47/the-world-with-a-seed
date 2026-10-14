# The World with a Seed

LaTeX source (XeLaTeX, Thai + English).

## Build with Docker

```sh
docker compose run --rm pdf      # build once -> build/main.pdf
docker compose up watch          # rebuild automatically on every save
```

Without Compose:

```sh
docker build -t the-world-with-a-seed-latex .
docker run --rm -v "$PWD":/work the-world-with-a-seed-latex
```

## Build without Docker

Needs TeX Live with XeLaTeX, the TLWG Thai fonts (Laksaman, Kinnari) and TeX Gyre Pagella.

```sh
latexmk main.tex
```

## Layout

- `main.tex` — document entry point
- `template.tex` — fonts, page layout, and the `bookquote` / `note` environments
- `chapters/` — content

### Quotes and notes

```latex
\begin{bookquote}{โลกของโซฟี่ หน้าที่ 22}
  ข้อความที่ยกมาจากหนังสือ
\end{bookquote}

\begin{note}[หัวข้อ]   % หัวข้อ optional, default: ข้อสังเกตของผม
  ความเห็นของผู้เขียน
\end{note}
```
