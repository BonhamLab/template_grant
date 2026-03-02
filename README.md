# Grant Template

[![Build](https://github.com/YOUR-USERNAME/YOUR-REPO/actions/workflows/release.yml/badge.svg)](https://github.com/YOUR-USERNAME/YOUR-REPO/actions/workflows/release.yml)
[![Latest PDF](https://img.shields.io/github/v/release/YOUR-USERNAME/YOUR-REPO?label=latest%20PDF&logo=adobeacrobatreader)](https://github.com/YOUR-USERNAME/YOUR-REPO/releases/latest/download/grant.pdf)

Typst template for NIH-style grant documents. Uses [Liberation Serif](https://github.com/liberationfonts/liberation-fonts) and enforces NIH formatting rules (US Letter, 0.5″ margins, 11 pt, justified text, heading styles).

## Using this template

1. Click **Use this template → Create a new repository** on GitHub.
2. Clone your new repo and initialize the formatting submodule:

   ```bash
   git clone --recurse-submodules git@github.com:YOUR-USERNAME/YOUR-REPO
   ```

   Or if already cloned:

   ```bash
   git submodule update --init --recursive
   ```

3. Update the two badge URLs at the top of this README to use your username and repo name.
4. Copy the CI workflow into place:

   ```bash
   mkdir -p .github/workflows
   cp assets/grants_common/github_workflows/release.yml .github/workflows/release.yml
   ```

## Writing the grant

Edit the `.typ` files directly. Each section is a separate file:

| File | Section |
|---|---|
| `main.typ` | Entry point — imports sections and applies NIH formatting |
| `aims.typ` | Specific Aims |
| `approach.typ` | Research Strategy / Approach |
| `facillities.typ` | Facilities & Resources |

`main.typ` should import the NIH template and each section file:

```typst
#import "/assets/grants_common/lib.typ": *
#show: nih-format

#include "aims.typ"
#include "approach.typ"
#include "facillities.typ"
```

Within a section file, use standard Typst markup:

```typst
= Specific Aims

Paragraph text goes here. *Bold*, _italic_, and @citation are supported.

== Aim 1: Short title

Description of the aim.

- Hypothesis: ...
- Approach: ...
```

Heading levels follow NIH rules automatically: `=` → bold, `==` → bold italic, `===` → italic.

## Exporting individual sections

NIH submissions often require sections uploaded as separate PDFs. Compile any section on its own by passing that file as the entry point — the NIH formatting still applies because each section file sets it directly:

```bash
# Specific Aims only (1-page limit)
typst compile --root . aims.typ aims.pdf

# Research Strategy only
typst compile --root . approach.typ approach.pdf
```

For this to work, each section file must apply the format itself rather than relying on `main.typ`:

```typst
// aims.typ
#import "/assets/grants_common/lib.typ": *
#show: nih-format

= Specific Aims
...
```

If you need a different page limit or margin for a specific section, override just that file:

```typst
#show: nih-format.with(page: (margin: (all: 0.75in)))
```

## Building locally

Requires [Typst](https://typst.app/) 0.14 and Liberation Serif (`sudo apt-get install fonts-liberation` or equivalent).

```bash
# Compile once
typst compile --root . main.typ grant.pdf

# Watch for changes
typst watch --root . main.typ grant.pdf
```

## Releases and PDF builds

Creating a GitHub release triggers the CI workflow to compile `main.typ` and attach `grant.pdf` to the release. The **Latest PDF** badge above links directly to the most recent compiled PDF.

To create a release:

```bash
git tag v1.0 -m "submission draft"
git push origin v1.0
# Then create a release from this tag on GitHub
```
