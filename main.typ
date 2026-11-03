#import "template.typ": report

#show: report.with(
  title: "Computer Science Report Template and Report Writing Guide",
  author: "FirstName(s) LastName",
  supervisor: "Supervisor's Name",
  degree: "Master of Science",
  subject: "Data Science and Advanced Computing",
  department: "Department of Computer Science",
  university: "University of Reading",
  date: "March 21, 2025",
  logo: "figures/uorlogo.svg",
  declaration-author: "FirstName(s) LastName",
  declaration-date: "March 21, 2025",
  
  abstract: include "chapters/00_abstract.typ",
  acknowledgements: include "chapters/00_acknowledgments.typ",
  abbreviations: include "chapters/00_abbreviations.typ",
  
  toc: true,
  lof: true,
  lot: true,
  bib-path: "references.bib",

  appendices: [
    #include "chapters/appendix_a.typ"
    #include "chapters/appendix_b.typ"
  ],
)

#include "chapters/01_introduction.typ"
#include "chapters/02_literature.typ"
#include "chapters/03_methodology.typ"
#include "chapters/04_results.typ"
#include "chapters/05_discussion.typ"
#include "chapters/06_conclusions.typ"
#include "chapters/07_reflection.typ"
