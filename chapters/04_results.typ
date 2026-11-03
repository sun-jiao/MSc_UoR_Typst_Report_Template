= Results <ch:results>

The results chapter tells a reader about your findings based on the methodology you have used to solve the investigated problem. For example:
- If your project aims to develop a software/web application, the results may be the developed software/system/performance of the system, etc., obtained using a relevant methodological approach in software engineering.
- If your project aims to implement an algorithm for its analysis, the results may be the performance of the algorithm obtained using a relevant experiment design.
- If your project aims to solve some problems/research questions over a collected dataset, the results may be the findings obtained using the applied tools/algorithms/etc.

Arrange your results and findings in a logical sequence.

== A section
...

#pagebreak()
== Example of a Table in Typst
@tab:_ex_tab is an example of a table created using clean booktabs styling. A table should be clean and readable. Unnecessary horizontal lines and vertical lines in tables make them unreadable and messy. The example in @tab:_ex_tab uses a minimum number of lines (only necessary ones). Make sure that the top rule and bottom rule (top and bottom horizontal lines) of a table are present.

#figure(
  caption: [Example of a table in Typst],
  table(
    columns: (80pt, 80pt, 80pt),
    stroke: none,
    table.hline(stroke: 1.2pt),
    table.cell(colspan: 2, align: center)[Bike], [],
    table.hline(start: 0, end: 2, stroke: 0.5pt),
    [Type], [Color], [Price (£)],
    table.hline(stroke: 0.5pt),
    [Electric], [black], [700],
    [Hybrid], [blue], [500],
    [Road], [blue], [300],
    [Mountain], [red], [300],
    [Folding], [black], [500],
    table.hline(stroke: 1.2pt),
  )
) <tab:_ex_tab>

== Example of captions style
- The *caption of a Figure (artwork) goes below* the artwork (Figure/Graphics/illustration). See example artwork in @fig:chart_a.
- The *caption of a Table goes above* the table. See the example in @tab:_ex_tab.
- The *caption of an Algorithm goes above* the algorithm. See the example in @algo:algo_example.
- The *caption of a Listing goes below* the Listing (Code snippet). See example listing in @list:python_code_ex.

== Summary
Write a summary of this chapter.
