#let book-template(
  title: "Digital Solutions 2025",
  author: "Digital Solutions Team",
  body
) = {
  set document(title: title, author: author)
  set text(font: "Linux Libertine", size: 11pt, fill: luma(30))

  // Define chapter colours dynamically
  let chapter-colors = (
    "Chapter 1": rgb(200, 220, 240),
    "Chapter 2": rgb(200, 230, 240),
    "Chapter 3": rgb(200, 240, 240),
    "Chapter 4": rgb(200, 240, 230),
    "Chapter 5": rgb(200, 240, 200),
    "Chapter 6": rgb(220, 240, 200),
    "Chapter 7": rgb(230, 240, 200),
    "Chapter 8": rgb(240, 240, 200),
    "Chapter 9": rgb(240, 230, 200),
    "Chapter 10": rgb(240, 220, 200),
    "Chapter 11": rgb(240, 200, 200),
    "Chapter 12": rgb(240, 200, 220),
    "Chapter 13": rgb(240, 200, 240),
  )

  set page(
    paper: "a4",
    margin: (inside: 2.5cm, outside: 2.5cm, y: 2.5cm),
    background: locate(loc => {
      let page-num = counter(page).at(loc).first()
      if page-num > 2 {
        let elems = query(selector(heading.where(level: 2)).before(loc), loc)
        if elems != () {
          let current-heading = elems.last().body

          let color = rgb(230, 230, 230) // Default grey tab

          // Use typst's repr to get a string representation of the content for matching
          let title_str = repr(current-heading)

          if "Chapter 1:" in title_str { color = chapter-colors.at("Chapter 1") }
          if "Chapter 2:" in title_str { color = chapter-colors.at("Chapter 2") }
          if "Chapter 3:" in title_str { color = chapter-colors.at("Chapter 3") }
          if "Chapter 4:" in title_str { color = chapter-colors.at("Chapter 4") }
          if "Chapter 5:" in title_str { color = chapter-colors.at("Chapter 5") }
          if "Chapter 6:" in title_str { color = chapter-colors.at("Chapter 6") }
          if "Chapter 7:" in title_str { color = chapter-colors.at("Chapter 7") }
          if "Chapter 8:" in title_str { color = chapter-colors.at("Chapter 8") }
          if "Chapter 9:" in title_str { color = chapter-colors.at("Chapter 9") }
          if "Chapter 10:" in title_str { color = chapter-colors.at("Chapter 10") }
          if "Chapter 11:" in title_str { color = chapter-colors.at("Chapter 11") }
          if "Chapter 12:" in title_str { color = chapter-colors.at("Chapter 12") }
          if "Chapter 13:" in title_str { color = chapter-colors.at("Chapter 13") }

          place(
            top + right,
            dx: 2.5cm, // move to bleed
            dy: 5cm,
            rect(fill: color, width: 1cm, height: 4cm)
          )
        }
      }
    }),
    header: locate(loc => {
      let elems = query(selector(heading).before(loc), loc)
      let chapter = if elems != () {
        elems.last().body
      } else {
        ""
      }
      align(right, text(size: 9pt, fill: luma(100), chapter))
    }),
    footer: locate(loc => {
      let page-number = counter(page).at(loc).first()
      align(center, text(size: 10pt, fill: luma(80), str(page-number)))
    })
  )

  set heading(numbering: "1.1")

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(2em)
    text(size: 24pt, weight: "bold", it)
    v(1.5em)
  }

  show heading.where(level: 2): it => {
    v(1.5em)
    text(size: 18pt, weight: "bold", it)
    v(1em)
  }

  show heading.where(level: 3): it => {
    v(1.2em)
    text(size: 14pt, weight: "bold", it)
    v(0.8em)
  }

  // Spacing for readability
  set par(leading: 0.7em, justify: true)
  show par: set block(spacing: 1.5em)

  // Title Page
  align(center + horizon)[
    #text(size: 36pt, weight: "bold", title)

    #v(2em)
    #text(size: 18pt, author)

    #v(4em)
    #text(size: 12pt, "A textbook aligned with the Digital Solutions 2025 Syllabus")
  ]

  pagebreak()

  // Table of Contents
  outline(title: "Table of Contents", depth: 2, indent: true)
  pagebreak()

  body
}

// Callouts
#let callout(title, body, color, icon) = block(
  fill: color,
  inset: 12pt,
  radius: 4pt,
  width: 100%,
  stroke: color.darken(20%),
)[
  #text(weight: "bold", size: 12pt)[#icon #title]
  #v(0.5em)
  #body
]

#let key-info(body) = callout("Key Information", body, rgb(230, 240, 255), "💡")
#let historical(body, source: "") = callout("Historical Context", [ #body #if source != "" [ \ #text(size: 9pt, style: "italic", "Source: " + source) ] ], rgb(255, 240, 220), "🏛️")
#let women-in-tech(body) = callout("Women in Tech", body, rgb(250, 230, 250), "👩‍💻")

// Quotes function
#let quote(body, author: "") = block(
  inset: (left: 10pt, right: 10pt, top: 10pt, bottom: 10pt),
  stroke: (left: (thickness: 4pt, paint: luma(200))),
  fill: luma(250)
)[
  #text(style: "italic", size: 12pt, body)
  #if author != "" {
    v(0.5em)
    align(right, text(weight: "bold", "— " + author))
  }
]

// 3-Column Code Layout
#let code-columns(pseudo, js, py) = grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 10pt,
  block(
    fill: luma(245),
    inset: 8pt,
    radius: 4pt,
  )[
    #text(weight: "bold", "Pseudocode")
    #v(0.5em)
    #raw(pseudo, block: true)
  ],
  block(
    fill: luma(245),
    inset: 8pt,
    radius: 4pt,
  )[
    #text(weight: "bold", "JavaScript")
    #v(0.5em)
    #raw(js, block: true, lang: "javascript")
  ],
  block(
    fill: luma(245),
    inset: 8pt,
    radius: 4pt,
  )[
    #text(weight: "bold", "Python")
    #v(0.5em)
    #raw(py, block: true, lang: "python")
  ]
)
