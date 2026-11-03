# University of Reading MSc Computer Science Report Template (Typst Version)

This project is a **1:1 pixel-perfect Typst recreation** of the University of Reading Department of Computer Science MSc dissertation/report LaTeX template (`MSc_UoR_Computer_Science_Report_Template_and_Guide`).

It preserves all of the visual specifications and typesetting logic of the original LaTeX template, while taking full advantage of Typst's second-level compilation and its simple, intuitive syntax.

---

## 🌟 Template Features

1. **High-fidelity typesetting and layout**
   - **Page setup**: Standard A4 paper with 1.2-inch margins (30.48mm) on all sides.
   - **Typeface**: A cross-platform sans-serif font consistent with the original Latin Modern Sans (Liberation Sans, Arial, DejaVu Sans preferred).
   - **Paragraph specification**: 11pt body text, 1.5em first-line indent, justified alignment.
2. **Strictly aligned header and footer logic** (the `headings` mode of the LaTeX `book` class)
   - **Cover**: No header or footer, and not included in page numbering.
   - **Front matter** (declaration, abstract, acknowledgements, table of contents, list of figures, list of tables, list of abbreviations): lowercase Roman numeral page numbers (`i, ii, iii...`), centred at the bottom of the first page; subsequent pages carry the page number in the top-right and an uppercase chapter title header.
   - **Main chapters** (Chapters 1 to 7): Arabic numerals restarting from `1`; the first page of each chapter uses the Plain style (centred page number at the bottom only, no header); subsequent pages dynamically show uppercase italic `CHAPTER X. TITLE` on the left of the header and the page number on the right, with no footer.
   - **Appendices**: Use uppercase letter numbering (`Appendix A`, `Appendix B`), with the header dynamically showing `APPENDIX A. TITLE`.
3. **Floats and numbering**
   - Figures, tables, equations and code blocks are numbered by chapter (e.g. `Figure 3.1`, `Table 4.1`, `Equation (3.1)`, `Listing 3.1`, `Algorithm 3.1`).
   - Figure and code block captions are placed below; table and algorithm captions are placed above.
   - Includes a three-line table (`booktabs` style) example.
4. **Built-in algorithm pseudocode and code highlighting environments**
   - Provides an `#algorithm(caption: [...], input: [...], output: [...])[...]` pseudocode environment with line-numbered algorithm display.
   - Code blocks automatically integrate a light border and line-number background, supporting Python, Java, C/C++ and many other languages.
5. **Hyperlinks and referencing system**
   - Internal cross-reference links: blue (`#0000ff`).
   - External URL links: cyan-blue (`#0088cc`).
   - Citations: dark blue (`#000080`), defaulting to **Harvard (author–year)** format (`harvard-cite-them-right`), with one-click switching to numbered formats such as IEEE.

---

## 📁 Directory Structure

```text
MSc_UoR_Typst_Report_Template/
├── template.typ                  # Core template functions and style definitions
├── main.typ                      # Master document; configures metadata and includes chapters
├── references.bib                # BibTeX reference database
├── figures/                      # Image assets directory
│   ├── uorlogo.svg               # University of Reading crest logo
│   └── chart.svg                 # Example vector flowchart
├── chapters/                     # Chapter modules
│   ├── 00_abstract.typ           # Abstract and word count notes
│   ├── 00_acknowledgments.typ    # Acknowledgements
│   ├── 00_abbreviations.typ      # List of abbreviations
│   ├── 01_introduction.typ       # Chapter 1: Introduction and writing guide
│   ├── 02_literature.typ         # Chapter 2: Literature review and citation conventions
│   ├── 03_methodology.typ        # Chapter 3: Methodology (equations, figures, tables, algorithms, code)
│   ├── 04_results.typ            # Chapter 4: Experimental results and three-line tables
│   ├── 05_discussion.typ         # Chapter 5: Discussion and analysis
│   ├── 06_conclusions.typ        # Chapter 6: Conclusions and future work
│   ├── 07_reflection.typ         # Chapter 7: Reflection and learning summary
│   ├── appendix_a.typ            # Appendix A
│   └── appendix_b.typ            # Appendix B
├── output.pdf                    # Compiled sample PDF (30 pages)
└── README.md                     # This document
```

---

## 🚀 Getting Started

### 1. Compilation commands

Run the following in the current directory:

```bash
# Compile once to generate a PDF
typst compile main.typ output.pdf

# Watch for changes and refresh the preview automatically
typst watch main.typ output.pdf
```

### 2. Change your personal and project details

Open `main.typ` and fill in your dissertation details in the `#show: report.with(...)` block at the top:

```typst
#show: report.with(
  title: "Your Project Title Here",
  author: "Your Full Name",
  supervisor: "Supervisor's Name",
  degree: "Master of Science",
  subject: "Data Science and Advanced Computing",
  department: "Department of Computer Science",
  university: "University of Reading",
  date: "September 2026",
  declaration-author: "Your Full Name",
  declaration-date: "September 2026",
  ...
)
```

### 3. Edit the body text

Simply edit the corresponding chapter files in the `chapters/` directory.

---

## 💡 Common Typesetting Syntax and LaTeX Comparison

| Typesetting need | LaTeX syntax | Typst syntax |
| :--- | :--- | :--- |
| **Chapter heading** | `\chapter{Title}\label{ch:intro}` | `= Title <ch:intro>` |
| **Section heading** | `\section{Title}\label{sec:bg}` | `== Title <sec:bg>` |
| **Subsection heading** | `\subsection{Title}` | `=== Title` |
| **Cross-reference** | `\ref{ch:intro}` or `\Cref{ch:intro}` | `@ch:intro` |
| **Parenthetical citation** | `\citep{typst_reference}` | `@typst_reference` or `#citep(<typst_reference>)` |
| **Narrative citation** | `\cite{typst_guide_latex_users}` | `#citet(<typst_guide_latex_users>)` |
| **Inline equation** | `$s = \frac{1}{N} x_i$` | `$s = 1/N x_i$` |
| **Display equation** | `\begin{equation}...\end{equation}` | `$ s = 1/N sum_(i=1)^N x_i $ <label>` |
| **Insert image** | `\includegraphics[width=...]{...}` | `#figure(image("..."), caption: [...]) <label>` |
| **Insert table** | `\begin{table}...\end{table}` | `#figure(table(...), caption: [...]) <label>` |
| **Algorithm pseudocode** | `\begin{algorithm}...\end{algorithm}` | `#algorithm(caption: [...], input: [...], output: [...])[...] <label>` |
| **Code block** | `\begin{lstlisting}...\end{lstlisting}` | `#figure(\`\`\`python ... \`\`\`, caption: [...]) <label>` |
