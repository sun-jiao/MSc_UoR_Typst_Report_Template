#import "../template.typ": algorithm

= Methodology <ch:method>

We mentioned in @ch:into that a project report's structure could follow a particular paradigm. Hence, the organization of a report (effectively the Table of Contents of a report) can vary depending on the type of project you are doing. Check which of the given examples suit your project. Alternatively, follow your supervisor's advice.

== Examples of the sections of a methodology chapter
A general report structure is summarised (suggested) in @tab:gen_template. @tab:gen_template describes that, in general, a typical report structure has three main parts: (1) front matter, (2) main text, and (3) end matter. The structure of the front matter and end matter will remain the same for all the undergraduate final year project reports. However, the main text varies as per the project's needs.

#figure(
  caption: [Undergraduate report template structure],
  table(
    columns: (100pt, 90pt, 1fr),
    stroke: none,
    table.hline(stroke: 1.2pt),
    table.cell(rowspan: 7)[*Frontmatter*], [], [Title Page],
    [], [Abstract],
    [], [Acknowledgements],
    [], [Table of Contents],
    [], [List of Figures],
    [], [List of Tables],
    [], [List of Abbreviations],
    table.hline(stroke: 0.5pt),
    table.cell(rowspan: 7)[*Main text*], [Chapter 1], [Introduction],
    [Chapter 2], [Literature Review],
    [Chapter 3], [Methodology],
    [Chapter 4], [Results],
    [Chapter 5], [Discussion and Analysis],
    [Chapter 6], [Conclusions and Future Work],
    [Chapter 7], [Reflection],
    table.hline(stroke: 0.5pt),
    table.cell(rowspan: 3)[*End matter*], [], [References],
    [], [Appendices (Optional)],
    [], [Index (Optional)],
    table.hline(stroke: 1.2pt),
  )
) <tab:gen_template>

=== Example of a software/Web development main text structure <subsec:se_chpters>
Notice that the "methodology" Chapter of Software/Web development in @tab:soft_eng_temp takes a standard software engineering paradigm (approach). Alternatively, these suggested sections can be chapters of their own. Also, notice that "Chapter 5" in @tab:soft_eng_temp is "Testing and Validation" which is different from the general report template mentioned in @tab:gen_template. Check with your supervisor if in doubt.

#figure(
  caption: [Example of a software engineering-type report structure],
  table(
    columns: (110pt, 1fr),
    stroke: none,
    table.hline(stroke: 1.2pt),
    [Chapter 1], [Introduction],
    [Chapter 2], [Literature Review],
    [Chapter 3], [Methodology],
    [], [Requirements specifications],
    [], [Analysis],
    [], [Design],
    [], [Implementations],
    [Chapter 4], [Testing and Validation],
    [Chapter 5], [Results and Discussion],
    [Chapter 6], [Conclusions and Future Work],
    [Chapter 7], [Reflection],
    table.hline(stroke: 1.2pt),
  )
) <tab:soft_eng_temp>

=== Example of an algorithm analysis main text structure
Some projects might involve the implementation of a state-of-the-art algorithm and its performance analysis and comparison with other algorithms. In that case, the suggestion in @tab:algo_temp may suit you best.

#figure(
  caption: [Example of an algorithm analysis type report structure],
  table(
    columns: (110pt, 1fr),
    stroke: none,
    table.hline(stroke: 1.2pt),
    [Chapter 1], [Introduction],
    [Chapter 2], [Literature Review],
    [Chapter 3], [Methodology],
    [], [Algorithms descriptions],
    [], [Implementations],
    [], [Experiments design],
    [Chapter 4], [Results],
    [Chapter 5], [Discussion and Analysis],
    [Chapter 6], [Conclusion and Future Work],
    [Chapter 7], [Reflection],
    table.hline(stroke: 1.2pt),
  )
) <tab:algo_temp>

=== Example of an application type main text structure
If you are applying some algorithms/tools/technologies on some problems/datasets/etc., you may use the methodology section prescribed in @tab:app_temp.

#figure(
  caption: [Example of an application type report structure],
  table(
    columns: (110pt, 1fr),
    stroke: none,
    table.hline(stroke: 1.2pt),
    [Chapter 1], [Introduction],
    [Chapter 2], [Literature Review],
    [Chapter 3], [Methodology],
    [], [Problems (tasks) descriptions],
    [], [Algorithms/tools/technologies/etc. descriptions],
    [], [Implementations],
    [], [Experiments design and setup],
    [Chapter 4], [Results],
    [Chapter 5], [Discussion and Analysis],
    [Chapter 6], [Conclusion and Future Work],
    [Chapter 7], [Reflection],
    table.hline(stroke: 1.2pt),
  )
) <tab:app_temp>

=== Example of a science lab-type main text structure
If you are doing a science lab experiment type of project, you may use the methodology section suggested in @tab:lab_temp. In this kind of project, you may refer to the "Methodology" section as "Materials and Methods."

#figure(
  caption: [Example of a science lab experiment-type report structure],
  table(
    columns: (110pt, 1fr),
    stroke: none,
    table.hline(stroke: 1.2pt),
    [Chapter 1], [Introduction],
    [Chapter 2], [Literature Review],
    [Chapter 3], [Materials and Methods],
    [], [Problems (tasks) description],
    [], [Materials],
    [], [Procedures],
    [], [Implementations],
    [], [Experiment set-up],
    [Chapter 4], [Results],
    [Chapter 5], [Discussion and Analysis],
    [Chapter 6], [Conclusion and Future Work],
    [Chapter 7], [Reflection],
    table.hline(stroke: 1.2pt),
  )
) <tab:lab_temp>

=== Ethical considerations
This section addresses ethical aspects of your project. This may include: informed consent, describing how participants will be informed about the study's purpose, procedures, risks, and benefits. You should detail the process used for obtaining consent and ensuring participants understand their rights.

- *Informed Consent*: If data was collected from participants, detail the process for obtaining consent and ensuring participants understand their rights.
- *Confidentiality and Privacy*: Explain measures taken to protect participants' data and maintain confidentiality. Discuss how data is stored, who will have access, and how anonymity will be preserved.
- *Risk Assessment*: Identify potential risks to participants and outline strategies to minimize them.
- *Vulnerable Populations*: If applicable, address how you will protect vulnerable groups (e.g., children, elderly, or marginalized communities) involved in your project.
- *Research Integrity*: Highlight your commitment to honesty and transparency in research. Discuss how you will avoid plagiarism, fabrication, and falsification of data.
- *Compliance with Regulations*: Mention relevant ethical guidelines and regulations that your project will adhere to.
- *Impact on Society*: Reflect on the broader implications of your project. Discuss how the outcomes may affect communities, stakeholders, or the environment, and how you plan to address any potential negative consequences.
- *Feedback Mechanisms*: Describe how you incorporate feedback from participants and stakeholders to improve the ethical conduct of the project throughout its duration.

== Example of an Equation in Typst
@eq:eq_example [note that this is an example of an equation's in-text citation] is an example of an equation in Typst. In @eq:eq_example, $s$ is the mean of elements $x_i in bold(x)$:

$ s = 1/N sum_(i = 1)^(N) x_i. $ <eq:eq_example>

Have you noticed that all the variables of the equation are defined using the *in-text* math syntax `$..$`, and @eq:eq_example is treated as a part of the sentence with proper punctuation? Always treat an equation or expression as a part of the sentence.

== Example of a Figure in Typst
@fig:chart_a is an example of a figure in Typst. For more details, check the link:
#link("https://typst.app/docs/reference/model/figure/")[typst.app/docs/reference/model/figure].

Keep your artwork (graphics, figures, illustrations) clean and readable. At least 300dpi is a good resolution of a PNG format artwork. However, an SVG format artwork saved as a PDF will produce the best quality graphics. There are numerous tools out there that can produce vector graphics and let you save that as an SVG file and/or as a PDF file. One example of such a tool is the "Flow algorithm software". Here is the link for that: #link("http://www.flowgorithm.org/download/")[flowgorithm.org].

#figure(
  image("../figures/chart.svg", width: 60%),
  caption: [Example figure in Typst.],
) <fig:chart_a>

#pagebreak()

== Example of an algorithm in Typst
@algo:algo_example is a good example of an algorithm in Typst.

#algorithm(
  caption: [Example caption: sum of all even numbers],
  input: [$bold(x) = x_1, x_2, dots, x_N$],
  output: [$"EvenSum"$ (Sum of even numbers in $bold(x)$)],
  [
    #set text(font: ("Liberation Mono", "DejaVu Sans Mono", "Courier New"), size: 9.5pt)
    #grid(
      columns: (22pt, 1fr),
      row-gutter: 0.6em,
      [1:], [*function* EvenSummation($bold(x)$)],
      [2:], [  $"EvenSum" arrow.l 0$],
      [3:], [  $N arrow.l "length"(bold(x))$],
      [4:], [  *for* $i arrow.l 1$ *to* $N$ *do*],
      [5:], [    *if* $x_i space "mod" space 2 == 0$ *then* #h(1fr) $triangle.stroked.r$ Check whether a number is even.],
      [6:], [      $"EvenSum" arrow.l "EvenSum" + x_i$],
      [7:], [    *end if*],
      [8:], [  *end for*],
      [9:], [  *return* $"EvenSum"$],
      [10:], [*end function*],
    )
  ]
) <algo:algo_example>

== Example of code snippet in Typst
@list:python_code_ex is a good example of including a code snippet in a report. While using code snippets, take care of the following:
- do not paste your entire code (implementation) or everything you have coded. Add code snippets only.
- The algorithm shown in @algo:algo_example is usually preferred over code snippets in a technical/scientific report.
- Make sure the entire code snippet or algorithm stays on a single page and does not overflow to another page(s).

Here are three examples of code snippets for three different languages (Python, Java, and CPP) illustrated in @list:python_code_ex, @list:java_code_ex, and @list:cpp_code_ex respectively.

#figure(
  ```python
  import numpy as np

  x = [0, 1, 2, 3, 4, 5]  # assign values to an array
  evenSum = evenSummation(x)  # call a function

  def evenSummation(x):
      evenSum = 0
      n = len(x)
      for i in range(n):
          if np.mod(x[i], 2) == 0:  # check if a number is even?
              evenSum = evenSum + x[i]
      return evenSum
  ```,
  caption: [Code snippet in Typst and this is a Python code example],
) <list:python_code_ex>

Here we used `#pagebreak()` and forced-out the second listing example onto the next page.
#pagebreak()

#figure(
  ```java
  public class EvenSum { 
      public static int evenSummation(int[] x) {
          int evenSum = 0;
          int n = x.length;
          for (int i = 0; i < n; i++) {
              if (x[i] % 2 == 0) { // check if a number is even?
                  evenSum = evenSum + x[i];
              }
          }
          return evenSum;     
      }
      public static void main(String[] args) { 
          int[] x = {0, 1, 2, 3, 4, 5}; // assign values to an array
          int evenSum = evenSummation(x);
          System.out.println(evenSum);
      } 
  }
  ```,
  caption: [Code snippet in Typst and this is a Java code example],
) <list:java_code_ex>

#figure(
  ```cpp
  int evenSummation(int x[]) {
      int evenSum = 0;
      int n = sizeof(x);
      for (int i = 0; i < n; i++) {
          if (x[i] % 2 == 0) { // check if a number is even?
              evenSum = evenSum + x[i];
          }
      }
      return evenSum;     
  }

  int main() {
      int x[] = {0, 1, 2, 3, 4, 5}; // assign values to an array
      int evenSum = evenSummation(x);
      cout << evenSum;
      return 0;
  }
  ```,
  caption: [Code snippet in Typst and this is a C/C++ code example],
) <list:cpp_code_ex>

== Example of in-text citation style
=== Example of the equations and illustrations placement and reference in the text
Make sure whenever you refer to equations, tables, figures, algorithms, and listings for the first time, they also appear (placed) somewhere on the same page or in the following page(s). Always make sure to refer to the equations, tables and figures used in the report. Do not leave them without an *in-text citation*. You can refer to equations, tables and figures more than once.

=== Example of the equations and illustrations style
Use `@eq:eq_example` to refer to an equation, `@tab:gen_template` to refer to a table, `@fig:chart_a` to refer to a figure, `@algo:algo_example` to refer to an algorithm, and `@list:python_code_ex` to refer to listings (code snippets). Note that we do not use the articles "a," "an," and "the" before the words Eq., Figure, Table, and Listing.

For example, the sentence "A report structure is shown in *the* @tab:gen_template" should be written as "A report structure is shown *in* @tab:gen_template."

=== Tools for In-text Referencing <subsec:reftools>
You will have noticed that there are linked references within the text to specific items in this document (e.g., equations, figures, tables, chapters, sections, etc.). In Typst, this is achieved effortlessly by attaching labels `<label>` to elements and referencing them with `@label`. Typst automatically manages prefixes, link colors, and numbers for chapters, sections, figures, tables, and equations.

== Summary
Write a summary of this chapter.

#v(3em)
*Note:* In the case of a *software engineering* project, a Chapter "*Testing and Validation*" should precede the "Results" chapter. See @subsec:se_chpters for report organization of such a project.
