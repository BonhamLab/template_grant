#import "/assets/grants_common/lib.typ": *
#show: nih-format

// includes the aims and strategy for references,
// but doesn't show them
#place(hide[
#include "aims.typ"
#include "strategy.typ"
])

#bibliography("refs.bib", style: "apa")
