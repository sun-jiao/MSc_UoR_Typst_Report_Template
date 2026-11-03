= Introduction <ch:into>

*Guidance on introduction chapter writing:* Introductions are written in the following parts:
- A brief description of the investigated problem.
- A summary of the scope and context of the project, i.e., what is the background of the topic/problem/application/system/algorithm/experiment/research question/hypothesis/etc. under investigation/implementation/development [whichever is applicable to your project].
- The aims and objectives of the project.
- A description of the problem and the methodological approach adopted to solve the problem.
- A summary of the most significant outcomes and their interpretations.
- Organization of the report.

Consult *your supervisor* to check the content of the introduction chapter. In this template, we only offer basic sections of an introduction chapter. It may not be complete and comprehensive. Writing a report is a subjective matter, and a report's style and structure depend on the "type of project" as well as an individual's preference. This template suits the following project paradigms:
+ software engineering and software/web application development;
+ algorithm implementation, analysis and/or application;
+ science lab (experiment); and
+ pure theoretical development (not mention extensively).

Use only a single *font* for the body text. We recommend using a clean and electronic document friendly font like *Arial* or *Calibri* for MS-word (If you create a report in MS word). If you use this template, DO NOT ALTER the template's default font "amsfont default computer modern". The default LaTeX font "computer modern" is also acceptable.

The recommended body text *font size* is minimum *11pt* and minimum one-half line spacing. The recommended figure/table caption font size is minimum 10pt. The footnote#footnote[Example footnote: footnotes are useful for adding external sources such as links as well as extra information on a topic or word or sentence. In Typst, use `#footnote[...]` to generate a footnote.] font size is minimum 8pt. DO NOT ALTER the font setting of this template.

== Background <sec:into_back>
Describe to a reader the context of your project. That is, what is your project and what its motivation. Briefly explain the major theories, applications, and/or products/systems/algorithms whichever is relevant to your project.

*Cautions:* Do not say you choose this project because of your interest, or your supervisor proposed/suggested this project, or you were assigned this project as your final year project. This all may be true, but it is not meant to be written here.

== Problem statement <sec:intro_prob_art>
This section describes the investigated problem in detail. You can also have a separate chapter on "Problem articulation." For some projects, you may have a section like "Research question(s)" or "Research Hypothesis" instead of a section on "Problem statement."

== Aims and objectives <sec:intro_aims_obj>
Describe the "aims and objectives" of your project.

*Aims:* The aims tell a reader what you want/hope to achieve at the end of the project. The aims define your intent/purpose in general terms.

*Objectives:* The objectives are a set of tasks you would perform in order to achieve the defined aims. The objective statements have to be specific and measurable through the results and outcome of the project.

== Solution approach <sec:intro_sol>
Briefly describe the solution approach and the methodology applied in solving the set aims and objectives.

Depending on the project, you may like to alter the "heading" of this section. Check with you supervisor. Also, check what subsection or any other section that can be added in or removed from this template.

=== A subsection 1 <sec:intro_some_sub1>
You may or may not need subsections here. Depending on your project's needs, add two or more subsection(s). A section takes at least two subsections.

=== A subsection 2 <sec:intro_some_sub2>
Depending on your project's needs, add more section(s) and subsection(s).

==== A subsection 1 of a subsection <sec:intro_some_subsub1>
The command creates a paragraph heading.

==== A subsection 2 of a subsection <sec:intro_some_subsub2>
Write your text here...

== Summary of contributions and achievements <sec:intro_sum_results>
Describe clearly what you have done/created/achieved and what the major results and their implications are.

== Organization of the report <sec:intro_org>
Describe the outline of the rest of the report here. Let the reader know what to expect ahead in the report. Describe how you have organized your report.

*Example: how to refer a chapter, section, subsection.* This report is organised into seven chapters. @ch:lit_rev details the literature review of this project. In @ch:method...

*Note:* Take care of the word like "Chapter," "Section," "Figure" etc. before referencing. With Typst's smart cross-referencing system, referencing `@ch:lit_rev` will automatically produce @ch:lit_rev with the appropriate link and label prefix. For more information on *automated tools* to assist in this work, see @subsec:reftools.
