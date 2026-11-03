#import "../template.typ": citep, citet

= Literature Review <ch:lit_rev>

A literature review chapter can be organized in a few sections with appropriate titles. A literature review chapter might contain the following:
+ A review of the state-of-the-art (include theories and solutions) of the field of research.
+ A description of the project in the context of existing literature and products/systems.
+ An analysis of how the review is relevant to the intended application/system/problem.
+ A critique of existing work compared with the intended work.

Note that your literature review should demonstrate the significance of the project.

== Example of in-text citation of references in Typst
The references in a report relate your content with the relevant sources, papers, and the works of others. To include references in a report, we _cite_ them in the texts. In Typst, references are managed through standard `.bib` (BibTeX) or `.yml` files, which are compiled cleanly into Harvard style using standard citation syntax `@key`, `#cite(<key>)` or `#citep(<key>)` and `#citet(<key>)`.

These are the examples of how to _cite_ external sources, seminal works, and research papers. In this template, BibTeX entries are stored in the `references.bib` file, and formatted according to the *Harvard style* recommended by the Department:
- #citet(<typst_guide_latex_users>) has written a comprehensive guide on technical writing [Example of `#cite(form: "prose", ...)` or `#citet(<key>)`].
- If technical tools are used efficiently and effectively, it helps in writing a very high-quality project report #citep(<typst_reference>) [Example of `@key`, `#cite(<key>)` or `#citep(<key>)`].
- `#citep(<key>)` and `#citet(<key>)` are custom citation commands defined in the `template.typ` file. You can use them to cite references in your report. They are not standard Typst commands, if you want to use standard Typst commands, you can use `#cite(<key>)` or `#key` and `#cite(form: "prose", <key>)` accordingly. 
- A detailed APA, Harvard, and Chicago referencing style guide are available in #citep(<uor_refernce_style>).

This is an example of how to construct a numbered list, including in-text, named and parenthetical citations:
+ #citet(<typst_tutorial>) has written a comprehensive guide on typesetting.
+ If technical typesetting is used efficiently and effectively, it helps in writing a very high-quality project report #citep(<typst_reference>).

=== Reference Resources <subsec:reflinks>
You can find additional referencing resources from the University Library:
- #link("https://libguides.reading.ac.uk/computer-science")[libguides.reading.ac.uk/computer-science]
- #link("https://libguides.reading.ac.uk/citing-references/citationexamples")[libguides.reading.ac.uk/citing-references/citationexamples]

=== Changing Bibliography Styles
While this report uses name and date formatting in the Harvard style (`harvard-cite-them-right`), you might also wish to use a numbered style like that from IEEE. To enable this change in Typst, simply adjust the `style` parameter in the bibliography call in `template.typ`:

```typst
// IEEE, Numbered Style
bibliography("references.bib", style: "ieee", title: "References")
```

== Avoiding unintentional plagiarism
Using other sources, ideas, and material always brings with it a risk of unintentional plagiarism.

#text(fill: red, weight: "bold")[MUST]: do read the university guidelines on the definition of plagiarism as well as the guidelines on how to avoid plagiarism #citep(<uor_plagiarism>).

== Critique of the review
Describe your main findings and evaluation of the literature.

== Summary
Write a summary of this chapter.
