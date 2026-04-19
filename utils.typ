#import "@preview/in-dexter:0.7.2": *
#import "@preview/gentle-clues:1.3.1": clue, conclusion, example, info, memo, question, quotation, task, tip, warning

#let idx(term) = [#term#index(term)]
#let idx2(term, display) = [#display#index(term)]

#let women = clue.with(
  title: "Women in Digital Solutions",
  accent-color: rgb("#e91e63"),
  icon: "♀️",
)

#let video = clue.with(
  title: "Video Reference",
  accent-color: rgb("#cc0000"), // YouTube red
  icon: "🎬",
)

#let code-box = clue.with(
  title: "Code Example",
  accent-color: rgb("#4a4a4a"),
  icon: "💻",
)

// Redefine bookly boxes to use gentle-clues
#let info-box = info
#let tip-box = tip
#let important-box = warning
#let proof-box = conclusion.with(title: "Proof")
#let question-box = question
#let custom-box = clue
