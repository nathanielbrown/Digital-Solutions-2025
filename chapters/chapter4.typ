#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Programmed Solutions", label: <ch:4>)

*Aims and Objectives:*
- Apply mathematical and logical operators to manage complex program flow.
- Develop efficient, modular code using local and global variables and constants.
- Generate and refine prototype digital solutions using text-based programming languages.
- Critically evaluate solutions against usability principles and broader social/economic impacts.
- Master professional testing and debugging techniques, including desk checks.

#important-box[
  In this topic, students focus on the technical execution of their digital ideas, using a *text-based language* to create functional components and complete prototype solutions. The goal is to move from abstract logic to a tangible, working digital product.
]

== Implementation of Logic and Operations

 Proficiency in programming requires mastering the core syntax and logical structures that control how data is processed.

#tip-box[
  *Kathleen Booth* #index("Booth, Kathleen") (1922–2022) was a British computer scientist and mathematician who wrote the first assembly language and designed the assembler for the first computer systems at Birkbeck College, London. Her work provided the crucial link between low-level machine code and higher-level programming logic, a concept that is foundational to every text-based programming language we use today.#footnote[Source: Booth, K. H. V. (1958). *Programming for an Automatic Digital Calculator*. Butterworths.]
]

=== Mathematical and Logical Operators
Operators are the fundamental tools for performing calculations and making decisions:
- *Mathematical Operators*: Beyond basic arithmetic, students use operators like *#idx("Modulus")* (`%`) for finding remainders and *#idx("Exponentiation")* (`**` or `pow()`).
- *Comparison Operators*: Used to compare values (e.g., `==`, `!=`, `<`, `>`).
- *#idx("Logical Operators")*: Combining conditions using `AND`, `OR`, and `NOT`.

#tip-box[
  *Truth Tables*: To understand complex logic, developers often use truth tables. For example, the `AND` operator only returns true if *both* inputs are true.
  - `true AND true = true`
  - `true AND false = false`
  - `false AND false = false`
]

=== Variables, Constants, and Scope
- *#idx("Constants")*: Unlike variables, the value of a constant cannot be changed once it is set. This is used for values like `PI = 3.14159` or `MAX_USERS = 100`.
- *#idx("Local Variables")*: Defined within a function; they are only accessible within that specific area.
- *#idx("Global Variables")*: Defined outside any specific function; they can be accessed from anywhere.


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=zOjov-2OZ0E")[#image("../images/yt_logic.jpg", width: 100%)],
    [*Video*: Logic Operators and Truth Tables -- Understanding how AND, OR, and NOT control program flow. \ https://www.youtube.com/watch?v=zOjov-2OZ0E],
  )
]

=== Control Structures and Modular Programming
- *Nested Logic*: Placing an `IF` statement inside another allows for more granular decision-making. 
- *Nested Loops*: A loop inside another loop is often used to process 2D data, like a grid or a table.
#proof-box[
  ```javascript
  for (let i = 0; i < 3; i++) {
    for (let j = 0; j < 3; j++) {
      console.log(`Row ${i}, Column ${j}`);
    }
  }
  ```
]
- *#idx("Modular Programming")*: Creating functions that utilize *Return Values* to pass data back to the main program. This makes code more reusable and testable.


#pagebreak(weak: true)
#figure(
  image("../images/comic_modular.jpg", width: 60%),
  caption: [Modular programming: breaking complex systems into reusable, portable components.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=rPWT4VOezNc")[#image("../images/yt_modular.jpg", width: 100%)],
    [*Video*: Modular Programming and Functions -- How to break complex problems into reusable components. \ https://www.youtube.com/watch?v=rPWT4VOezNc],
  )
]


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_standards.jpg", width: 60%),
  caption: [The irony of modular programming and standards: trying to unify everything often leads to even more complexity.#footnote[Source: xkcd.com/927]]
)

== Generating the Prototype Solution

The technical work culminates in the assembly of individual components into a cohesive, functional digital product.

=== Component Development and Data Handling
- *Original Code*: Students generate specific solution components by writing original statements or effectively utilizing existing libraries and classes.
- *I/O (Input/Output)*: Programs must handle data accurately. This might involve parsing structured data like *#idx("JSON")* (JavaScript Object Notation) to display information to the user dynamically.

== Testing, Evaluation, and Impact Analysis

=== Technical Debugging and Performance
- *#idx("Debugging")*: Using *#idx("Desk Checks")* to trace algorithmic steps. This is a manual process where you act as the computer, updating variable values in a table to ensure the logic works as intended.


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_debugging.jpg", width: 60%),
  caption: [The 'rabbit hole' of debugging: one small fix often leads to an unexpected journey of discovery.#footnote[Source: xkcd.com/1722]]
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=BHBqtVazgkk")[#image("../images/yt_debugging.jpg", width: 100%)],
    [*Video*: Debugging and Desk Checking -- Essential techniques for finding and fixing errors in your logic. \ https://www.youtube.com/watch?v=BHBqtVazgkk],
  )
]

=== User-Centric Review and Broader Impacts
- *Usability*: The final interface is appraised against the five principles: Accessibility, Effectiveness, Safety, Utility, and Learnability.
- *Impact Analysis*: Consider the *Social and Economic Impacts*. For example, a bug in an automated medical dispenser (Social Impact) or a vulnerability in a banking app (Economic Impact) can have devastating real-world consequences.


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_social_impact.jpg", width: 60%),
  caption: [A historical perspective on the social impact of new technology: every generation fears the 'revolutionary' medium of their time.#footnote[Source: xkcd.com/1227]]
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=_Log1AKKQxY")[#image("../images/yt_social_impact.jpg", width: 100%)],
    [*Video*: Social and Economic Impacts of ICT -- Analysing how digital solutions shape our modern world. \ https://www.youtube.com/watch?v=_Log1AKKQxY],
  )
]

== Revision Questions
1. Provide an example of a *nested loop* and describe a situation where it would be used.
2. Differentiate between a *Variable* and a *Constant*.
3. What is the benefit of a function having a *Return Value*?
4. Describe a potential *Economic Impact* of a security breach in an e-commerce platform.
5. How does a *Desk Check* help find logic errors that a compiler might miss?
