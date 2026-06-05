#import "/assets/grants_common/lib.typ": *
#show: nih-format.with(
  // uncomment when ready for final submission
  // page-overrides: (numbering: none)
)

#include "strategy.typ"

// Comment out the pagebreak and include the #show rule
// to prevent bibliography from rendering on final submission
// (refs will still be correctly formatted)
#pagebreak()
// #show bibliography: none

#bibliography("refs.bib", title: [bibliography], style: "apa")
