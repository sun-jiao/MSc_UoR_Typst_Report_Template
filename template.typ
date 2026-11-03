// MSc UoR Computer Science Report Typst Template
// Department of Computer Science, University of Reading

#let is-mainmatter = state("is-mainmatter", false)
#let is-appendix = state("is-appendix", false)

// Helper citation functions (for users used to LaTeX natbib)
#let citep(key) = cite(key)
#let citet(key) = cite(key, form: "prose")

// Definition and Theorem environments
#let definition-counter = counter("definition")
#let theorem-counter = counter("theorem")

#let definition(title: none, body) = {
  definition-counter.step()
  context {
    let num = definition-counter.get().first()
    block(
      width: 100%,
      stroke: (left: 2pt + rgb("#000080")),
      inset: (left: 10pt, y: 6pt),
      radius: 0pt,
      [
        #text(weight: "bold")[Definition #num#if title != none [ (#title)]:] #body
      ]
    )
  }
}

#let theorem(title: none, body) = {
  theorem-counter.step()
  context {
    let num = theorem-counter.get().first()
    block(
      width: 100%,
      stroke: (left: 2pt + rgb("#000080")),
      inset: (left: 10pt, y: 6pt),
      radius: 0pt,
      [
        #text(weight: "bold")[Theorem #num#if title != none [ (#title)]:] #emph(body)
      ]
    )
  }
}

// Algorithm environment matching LaTeX algorithm + algorithmicx
#let algorithm(
  caption: none,
  input: none,
  output: none,
  body,
) = {
  figure(
    kind: "algorithm",
    supplement: [Algorithm],
    caption: caption,
    [
      #block(
        width: 100%,
        stroke: (top: 1.2pt + black, bottom: 1.2pt + black),
        inset: (y: 6pt),
        [
          #if input != none [
            #text(weight: "bold")[Input:] #input \
          ]
          #if output != none [
            #text(weight: "bold")[Output:] #output \
          ]
          #if input != none or output != none [
            #v(2pt)
            #line(length: 100%, stroke: 0.5pt + black)
            #v(2pt)
          ]
          #align(left)[#body]
        ]
      )
    ]
  )
}

// Main template function
#let report(
  title: "Computer Science Report Template and Report Writing Guide",
  author: "FirstName(s) LastName",
  supervisor: "Supervisor's Name",
  degree: "Master of Science",
  subject: "Data Science and Advanced Computing",
  department: "Department of Computer Science",
  university: "University of Reading",
  date: "March 21, 2025",
  logo: "figures/uorlogo.svg",
  declaration-author: none,
  declaration-date: none,
  abstract: none,
  acknowledgements: none,
  abbreviations: none,
  toc: true,
  lof: true,
  lot: true,
  bib-path: "references.bib",
  appendices: none,
  body,
) = {
  let decl-author = if declaration-author != none { declaration-author } else { author }
  let decl-date = if declaration-date != none { declaration-date } else { date }

  // Document metadata
  set document(title: title, author: author)

  // Page setup
  set page(
    paper: "a4",
    margin: (x: 1.2in, y: 1.2in),
    header: context {
      let cur-page = here().page()
      let h1-on-page = query(heading.where(level: 1)).filter(h => h.location().page() == cur-page)
      // If a level 1 heading starts on this page, LaTeX uses 'plain' pagestyle: no header
      if h1-on-page.len() > 0 {
        none
      } else {
        // Query the most recent heading before this position
        let prev-h1 = query(heading.where(level: 1).before(here()))
        if prev-h1.len() > 0 {
          let last-h = prev-h1.last()
          let loc = last-h.location()
          let in-main = is-mainmatter.at(loc)
          let in-app = is-appendix.at(loc)
          let page-display = counter(page).display()
          
          let head-text = if in-app {
            let num = numbering("A", counter(heading).at(loc).first())
            "APPENDIX " + num + ". " + upper(last-h.body)
          } else if in-main {
            let num = str(counter(heading).at(loc).first())
            "CHAPTER " + num + ". " + upper(last-h.body)
          } else {
            upper(last-h.body)
          }
          
          block(width: 100%, inset: (bottom: 4pt))[
            #grid(
              columns: (1fr, auto),
              align(left)[#text(size: 9pt, style: "italic")[#head-text]],
              align(right)[#text(size: 9pt)[#page-display]]
            )
          ]
        } else {
          none
        }
      }
    },
    footer: context {
      let cur-page = here().page()
      let h1-on-page = query(heading.where(level: 1)).filter(h => h.location().page() == cur-page)
      // Chapter opening pages display page number centered in the footer
      if h1-on-page.len() > 0 {
        align(center)[#text(size: 10pt)[#counter(page).display()]]
      } else {
        none
      }
    }
  )

  // Font setup: Latin Modern Sans (lmss) — exact match to LaTeX template
  // LaTeX uses \usepackage{lmodern} + \renewcommand*\familydefault{\sfdefault}
  // "Latin Modern Sans 12" = standard text optical size (covers 10–12pt range)
  set text(
    font: ("Latin Modern Sans 12", "Source Sans 3", "Liberation Sans"),
    size: 11pt,
    fill: black,
    lang: "en",
  )

  // Paragraph formatting: First line indent, standard line spacing
  set par(
    justify: true,
    leading: 0.65em,
    first-line-indent: (amount: 1.5em, all: false),
    spacing: 0.65em,
  )

  // Caption styling: small font, colon separator
  set figure.caption(separator: [: ])
  show figure.caption: set text(size: 10pt)
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: "algorithm"): set figure.caption(position: top)
  show figure.where(kind: image): set figure.caption(position: bottom)
  show figure.where(kind: raw): set figure.caption(position: bottom)

  // Chapter-based figure and equation numbering
  set figure(numbering: (..nums) => context {
    let ch = counter(heading).get().first()
    let in-app = is-appendix.get()
    let ch-str = if in-app { numbering("A", ch) } else { str(ch) }
    ch-str + "." + str(nums.pos().first())
  })

  set math.equation(numbering: (..nums) => context {
    let ch = counter(heading).get().first()
    let in-app = is-appendix.get()
    let ch-str = if in-app { numbering("A", ch) } else { str(ch) }
    "(" + ch-str + "." + str(nums.pos().first()) + ")"
  })

  // Footnote styling
  show footnote.entry: set text(size: 8.5pt)

  // Link colors: internal links blue (#0000ff), external cyan (#0088cc), cite dark blue (#000080)
  show link: it => {
    if type(it.dest) == str {
      text(fill: rgb("#0088cc"), it)
    } else {
      text(fill: rgb("#0000ff"), it)
    }
  }
  show cite: it => text(fill: rgb("#000080"), it)

  // Cross-reference styling matching LaTeX cleveref
  show ref: it => {
    let el = it.element
    if el != none {
      let loc = el.location()
      let ch = counter(heading).at(loc).first()
      let in-app = is-appendix.at(loc)
      let ch-str = if in-app { numbering("A", ch) } else { str(ch) }
      
      if el.func() == figure {
        let cnt = counter(figure.where(kind: el.kind)).at(loc).first()
        let prefix = if el.kind == table {
          "Table"
        } else if el.kind == raw {
          "Listing"
        } else if el.kind == "algorithm" {
          "Algorithm"
        } else {
          "Figure"
        }
        link(loc)[#text(fill: rgb("#0000ff"))[#prefix #ch-str.#cnt]]
      } else if el.func() == math.equation {
        let cnt = counter(math.equation).at(loc).first()
        link(loc)[#text(fill: rgb("#0000ff"))[Eq. (#ch-str.#cnt)]]
      } else if el.func() == heading {
        let h-num = if el.numbering != none { numbering(el.numbering, ..counter(heading).at(loc)) } else { "" }
        let prefix = if el.level == 1 {
          if in-app { "Appendix" } else { "Chapter" }
        } else {
          "Section"
        }
        link(loc)[#text(fill: rgb("#0000ff"))[#prefix #h-num]]
      } else {
        it
      }
    } else {
      it
    }
  }

  // Code listing styling: numbers on left, light frame/background, monospace font
  show raw.where(block: true): it => {
    set text(font: ("Liberation Mono", "DejaVu Sans Mono", "Courier New"), size: 8.5pt)
    block(
      fill: rgb("#fafafa"),
      inset: (x: 10pt, y: 8pt),
      width: 100%,
      radius: 0pt,
      stroke: 0.5pt + rgb("#e0e0e0"),
      [
        #set par(justify: false, first-line-indent: 0pt, leading: 0.55em)
        #it
      ]
    )
  }

  // Heading styles: LaTeX Book style
  show heading: set text(weight: "bold")
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    // Reset chapter-level counters
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(figure.where(kind: raw)).update(0)
    counter(figure.where(kind: "algorithm")).update(0)
    counter(math.equation).update(0)

    v(2.5em)
    if it.numbering != none {
      context {
        let in-app = is-appendix.get()
        let num = if in-app {
          numbering("A", counter(heading).get().first())
        } else {
          str(counter(heading).get().first())
        }
        let prefix = if in-app { "Appendix " } else { "Chapter " }
        block[
          #text(size: 20pt, weight: "bold")[#prefix#num]
          #v(1.2em)
          #text(size: 24pt, weight: "bold")[#it.body]
        ]
      }
    } else {
      block[
        #text(size: 22pt, weight: "bold")[#it.body]
      ]
    }
    v(1.8em)
  }

  show heading.where(level: 2): it => {
    v(1.4em)
    text(size: 14pt)[#if it.numbering != none { counter(heading).display(it.numbering) + " " }#it.body]
    v(0.8em)
  }

  show heading.where(level: 3): it => {
    v(1.2em)
    text(size: 12pt)[#if it.numbering != none { counter(heading).display(it.numbering) + " " }#it.body]
    v(0.6em)
  }

  show heading.where(level: 4): it => {
    v(1em)
    text(size: 11pt, weight: "bold")[#it.body]
    v(0.4em)
  }

  // Outline customization: LaTeX book style with proper alignment
  show outline.entry: it => {
    let loc = it.element.location()
    let pg = counter(page).at(loc).first()
    let pg-format = if is-mainmatter.at(loc) { str(pg) } else { numbering("i", pg) }
    
    if it.element.func() == heading {
      let lev = it.element.level
      let in-app = is-appendix.at(loc)
      let num = counter(heading).at(loc)
      
      let num-str = if it.element.numbering != none {
        if lev == 1 and in-app {
          numbering("A", num.first())
        } else {
          numbering(it.element.numbering, ..num)
        }
      } else { "" }
      
      let indent = (lev - 1) * 1.5em
      let num-col-w = if it.element.numbering == none {
        0pt
      } else if lev == 1 {
        1.5em
      } else if lev == 2 {
        2.2em
      } else {
        3.2em
      }

      block(width: 100%, spacing: 0.65em)[
        #link(loc)[
          #grid(
            columns: (indent, num-col-w, 1fr, auto),
            [],
            text(fill: rgb("#0000cc"), weight: if lev == 1 { "bold" } else { "regular" })[#num-str],
            [
              #text(fill: rgb("#0000cc"), weight: if lev == 1 { "bold" } else { "regular" })[#it.element.body]
              #box(width: 1fr, it.fill)
            ],
            text(weight: if lev == 1 { "bold" } else { "regular" })[#h(1em)#pg-format]
          )
        ]
      ]
    } else if it.element.func() == figure {
      let ch = counter(heading).at(loc).first()
      let in-app = is-appendix.at(loc)
      let ch-str = if in-app { numbering("A", ch) } else { str(ch) }
      let cnt = counter(figure.where(kind: it.element.kind)).at(loc).first()
      let num-str = ch-str + "." + str(cnt)
      
      block(width: 100%, spacing: 0.65em)[
        #link(loc)[
          #grid(
            columns: (3.2em, 1fr, auto),
            text(fill: rgb("#0000cc"))[#num-str],
            [
              #it.element.caption.body
              #box(width: 1fr, it.fill)
            ],
            [#h(1em)#pg-format]
          )
        ]
      ]
    } else {
      it
    }
  }

  // ==========================================
  // TITLE PAGE
  // ==========================================
  {
    set page(header: none, footer: none)
    align(center)[
      #if logo != none [
        #image(logo, width: 3cm)
        #v(0.5cm)
      ]
      #text(size: 17pt)[#university] \
      #v(0.3cm)
      #text(size: 14pt)[#department] \
      #v(1.8cm)

      #text(size: 24pt, weight: "bold")[#title] \
      #v(1.8cm)

      #text(size: 15pt)[#author] \
      #v(0.8cm)

      #text(size: 12pt)[#emph[Supervisor:] #supervisor] \
      #v(0.8cm)

      #text(size: 12pt)[
        A report submitted in partial fulfilment of the requirements of \
        the #university for the degree of \
        #degree in #emph[#subject]
      ]

      #v(1fr)
      #text(size: 11pt)[#date]
      #v(0.5cm)
    ]
  }

  // ==========================================
  // FRONTMATTER (Roman numerals)
  // ==========================================
  pagebreak()
  counter(page).update(1)
  set page(numbering: "i")

  // Declaration
  {
    set par(first-line-indent: 0pt)
    heading(level: 1, numbering: none, outlined: false)[Declaration]
    
    [
      I, #decl-author, of the #department, #university, confirm that this is my own work and figures, tables, equations, code snippets, artworks, and illustrations in this report are original and have not been taken from any other person's work, except where the works of others have been explicitly acknowledged, quoted, and referenced. I understand that if failing to do so will be considered a case of plagiarism. Plagiarism is a form of academic misconduct and will be penalised accordingly.
      
      #v(1.2em)
      I give consent to a copy of my report being shared with future students as an exemplar.
      
      #v(1.2em)
      I give consent for my work to be made available more widely to members of UoR and public with interest in teaching, learning and research.
      
      #v(2.5cm)
      #align(right)[
        #decl-author \
        #decl-date
      ]
    ]
  }

  // Abstract
  if abstract != none {
    pagebreak()
    set par(first-line-indent: 0pt)
    align(center)[#heading(level: 1, numbering: none, outlined: false)[Abstract]]
    set par(first-line-indent: 1.5em)
    abstract
  }

  // Acknowledgements
  if acknowledgements != none {
    pagebreak()
    set par(first-line-indent: 0pt)
    align(center)[#heading(level: 1, numbering: none, outlined: false)[Acknowledgements]]
    set par(first-line-indent: 1.5em)
    acknowledgements
  }

  // Table of Contents
  if toc {
    outline(title: [Contents], depth: 3)
  }

  // List of Figures (included in TOC like LaTeX tocbibind)
  if lof {
    pagebreak()
    heading(level: 1, numbering: none, outlined: true)[List of Figures]
    outline(title: none, target: figure.where(kind: image))
  }

  // List of Tables (included in TOC like LaTeX tocbibind)
  if lot {
    pagebreak()
    heading(level: 1, numbering: none, outlined: true)[List of Tables]
    outline(title: none, target: figure.where(kind: table))
  }

  // List of Abbreviations
  if abbreviations != none {
    pagebreak()
    heading(level: 1, numbering: none, outlined: false)[List of Abbreviations]
    set par(first-line-indent: 0pt)
    v(1em)
    abbreviations
  }

  // ==========================================
  // MAINMATTER (Arabic numerals)
  // ==========================================
  pagebreak()
  is-mainmatter.update(true)
  counter(page).update(1)
  set page(numbering: "1")
  set heading(numbering: "1.1")

  body

  // ==========================================
  // BIBLIOGRAPHY (Before appendices, as in LaTeX)
  // ==========================================
  if bib-path != none {
    pagebreak()
    bibliography(bib-path, style: "harvard-cite-them-right", title: "References")
  }

  // ==========================================
  // APPENDICES
  // ==========================================
  if appendices != none {
    pagebreak(weak: true)
    is-appendix.update(true)
    counter(heading).update(0)
    set heading(numbering: "A.1")
    
    // Add "Appendices" entry to TOC without generating an empty page
    [
      #show <appendices_anchor>: none
      #heading(level: 1, numbering: none, outlined: true)[Appendices] <appendices_anchor>
    ]
    
    appendices
  }
}
