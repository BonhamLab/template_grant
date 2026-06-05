#import "@preview/meander:0.4.2"

#show "BI": emph[B. infantis]

#show figure.where(kind: table): set figure.caption(position: top)
#show figure.caption: c=> [
  #set text(8pt)
  #text(weight: "bold", font: "Noto Serif")[
    #smallcaps[
      #c.supplement #c.counter.display(c.numbering)
    ]
  ]
  #c.separator#c.body
]
#set figure(gap: 0.2em)
#show image: it=>{
  block(stroke: 0.5pt+gray, inset:2pt, it)
}

== Significance

// Total 4-5 pages

=== Importance of the Problem to Be Addressed

// half page

=== Rigor of the Scientific Background for the Work

// general content

==== Aim 1

// Aim-1 specific lit and preliminary results

==== Aim 2

// Aim-2 specific lit and preliminary results

==== Aim 3

// Aim-3 specific lit and preliminary results
//
=== Significance of the Expected Research Contribution

Upon successful completion of the proposed research,
our contribution will be
#lorem(30)

_This contribution is expected to be significant because
#lorem(30)_.

The proposed research will deliver tangible benefits
in multiple domains.

== Innovation

// 1/3 - 1/2 page in length
// Part 1: frame the status quo
//   "The status quo as it pertains to... is..."
// Part 2: fully-italicized statement of innovation
//   "_The proposed research is innovative, in our opinion,
//   because it represents a substantive departure from the status quo by..."
// Part 3: How what you are proposing will break down barriers
// that have prevented others from reaching the new horizons
//   Note: this is distinct from tangible benefits in significance.

"The status quo as it pertains to... is..."
_The proposed research is innovative, in our opinion,
because it represents a substantive departure from the status quo
#lorem(15)_
Part 3...

== Approach

// 7-8 pages total

=== Aim 1: Use variables to copy from aims page

#show regex("objectives?"): it=> {underline(emph(it))}
#show regex("working hypothes[ei]s"): it=> {underline(emph(it))}
#show "approach": it=> {underline(emph(it))}
#show "rationale": it=> {underline(emph(it))}
#show regex("expectation\b"): it=> {underline(emph(it))}

==== Introduction

// 6-8 sentences, 1/4 - 1/3 page
// overview of what will be done and why
// key words (objective, working hypothesis, approach, expectations, etc) italicized
// begin with a sentence that justifies why the work under this aim
//    needs to be performed
// "The _objective_ for this aim is to..."
// Working hypothesis (verbatim from aims)
// sentence or two about overall strategy
//    "Our _approach_ will be..."
// Rationale
// Summarize expected outcomes for this aim, "after completion... it is our _expectation_..."

#meander.reflow({
  import meander: *

  container(width: 47%)
  container()

  content[#box(width:100%)[
    #figure(
          rect(fill: teal, width:3.4in, height: 2in),
            caption: [
              Differential lag and growth kinetics of BI strains.
            ]
        )<fig-outline>
      ]
    ]
  colbreak()
  content[
   #lorem(400)
  ]
})

==== Research Design

_Some experiment_. 
Here's what we're doing

_A different experiment_.
We're doing something else.

==== Expected Outcome

Together,
these experiments will establish...

==== Potential Problems and Alternative Approaches

=== Aim 2: Again, we want to match aims page

==== Introduction
// 6-8 sentences, 1/4 - 1/3 page
// overview of what will be done and why
// key words (objective, working hypothesis, approach, expectations, etc) italicized
// begin with a sentence that justifies why the work under this aim
//    needs to be performed
// "The _objective_ for this aim is to..."
// Working hypothesis (verbatim from aims)
// sentence or two about overall strategy
//    "Our _approach_ will be..."
// Rationale
// Summarize expected outcomes for this aim, "after completion... it is our _expectation_...

==== Research Design

==== Expected Outcome

==== Potential Problems and Alternative Approaches

=== Timeline and Benchmarks for Success

Some narrative about the timetable,
mentioning benchmarks and @tab-timetable.

*Benchmark 1.1.*
#lorem(20)

*Benchmark 1.2.*
#lorem(20)

etc...

#figure(
  caption: [
    Timetable and benchmarks for the 5-year project.
    Shaded cells indicate years in which each Specific Aim is active;
    each #sym.times.o marks the year in which the corresponding benchmark is reached.
  ],
  text(8pt, table(
    columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: (left, center, center, center, center, center),
    stroke: 0.4pt + luma(50%),
    inset: 4pt,
    fill: (col, row) =>
      if row == 0 { luma(220) }
      else if row == 1 and col >= 1 and col <= 3 { luma(180) }
      else if row == 5 and col >= 2 and col <= 5 { luma(180) }
      else if row == 10 and col >= 1 and col <= 5 { luma(180) }
      else if row == 1 or row == 5 or row == 10 { luma(240) },
    
    [*Aim / Benchmark*], [*Year 1*], [*Year 2*], [*Year 3*], [*Year 4*], [*Year 5*],
    
    [_Specific Aim 1_], [], [], [], [], [],
    [Benchmark 1.1], [#h(1em)#sym.times.o], [], [], [], [],
    [Benchmark 1.2], [], [#sym.times.o#h(3em)], [], [], [],
    [Benchmark 1.3], [], [], [#sym.times.o#h(3em)], [], [],
    
    [_Specific Aim 2_], [], [], [], [], [],
    [Benchmark 2.1], [], [#sym.times.o#h(3em)], [], [], [],
    [Benchmark 2.2], [], [#h(3em)#sym.times.o], [], [], [],
    [Benchmark 2.3], [], [], [#h(3em)#sym.times.o], [], [],
    [Benchmark 2.4], [], [], [], [#h(3em)#sym.times.o], [],
    
    [_Specific Aim 3_], [], [], [], [], [],
    [Benchmark 3.1], [#sym.times.o], [], [], [], [],
    [Benchmark 3.2], [], [#sym.times.o], [], [], [],
    [Benchmark 3.3], [], [], [#h(3em)#sym.times.o], [], [],
    [Benchmark 3.4], [], [], [], [#sym.times.o], [],
    [Benchmark 3.5], [], [], [], [], [#sym.times.o],
  )
)) <tab-timetable>

=== Future Directions

Almost done!
#lorem(400)

