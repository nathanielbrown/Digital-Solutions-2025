#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Algorithms and Programming Techniques", label: <ch:3>)

*Aims and Objectives:*
- Master core algorithmic constructs: Assignment, Sequence, Selection, Iteration, and Modularisation.
- Develop language-independent logic using formal Pseudocode conventions.
- Implement robust code through industry-standard practices like modularisation and proper documentation.
- Analyse and apply data validation, SQL interaction, and cybersecurity techniques.
- Evaluate code quality through desk checks and debugging processes.

#important-box[
  In the *Digital Solutions* syllabus, students explore the logical foundations of software development, moving from conceptual planning to technical implementation. Learning centers on creating efficient, maintainable code through computational thinking and industry-standard practices.
]

== Core Algorithmic Concepts

Algorithms are the essential building blocks of any digital solution. At their most basic level, all algorithms consist of three stages: *Input*, *Process*, and *Output* (the IPO model).



#figure(
  image("../images/ipo_model.jpg", width: 60%),
  caption: [The Input-Process-Output (IPO) model of computation.#footnote[Source: Gemini]],
)

=== Fundamental Constructs
To build complex logic, developers use five basic constructs:
- *#idx("Assignment")*: Storing the value of an expression into a variable.
  - *Example*: `SET yearsToRetire TO 65 - currentAge`
- *#idx("Sequence")*: Processing a series of instructions one after the other in a specific order.
- *#idx("Selection")*: Determining the next instruction based on a *condition*—a logical expression evaluating to true or false.
  - *Example*: `IF age < 18 THEN OUTPUT "Access Denied" ELSE OUTPUT "Access Granted" ENDIF`
- *#idx("Iteration")*: Repeating a set of instructions. This includes *counted loops* (e.g., `FOR`) and *while loops* (e.g., `WHILE score < 100 DO...`).
- *#idx("Modularisation")*: Reducing system complexity by deconstructing it into independent units, such as functions and procedures. This allows for code reuse and easier debugging.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=l26oaHV7D40")[#image("../images/yt_algorithm_constructs.jpg", width: 100%)],
    [*Video*: Algorithm Constructs -- A deep dive into sequence, selection, and iteration. \ https://www.youtube.com/watch?v=l26oaHV7D40],
  )
]



#figure(
  image("../images/comic_algorithm.jpg", width: 60%),
  caption: [An algorithm as a 'logical machine': sequence, selection, and iteration working in harmony.#footnote[Source: Gemini]],
)

Understanding these abstract constructs is easier when we see them applied to real-world logic. The following video provides a foundational overview of how algorithms function.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=kM9ASKAni_s")[#image("../images/yt_algorithms.jpg", width: 100%)],
    [*Video*: What is an Algorithm? -- A foundational overview of logic and computation. \ https://www.youtube.com/watch?v=kM9ASKAni_s],
  )
]


== Algorithmic Representation

Developers use *#idx("Pseudocode")* as a formal, language-independent method to describe and communicate algorithmic steps before writing actual code. It is an intermediate step between planning and writing executable code.

Advantages of pseudocode:
- *Better readability*: Easier to communicate with people from other domains.
- *Ease up code construction*: Converts to actual code much faster.
- *Bug detection*: Easier to discover and fix bugs before writing actual code.

=== Pseudocode Conventions
QCAA has established specific rules for its use:
- *Keywords*: Use bold and capitalised terms for structural constructs (e.g., `DECLARE`, `IF`, `THEN`, `ELSE`, `WHILE`, `ENDWHILE`, `FUNCTION`).
- *Calculations*: Clearly indicate what is happening (e.g. `CALCULATE net = gross - tax`).
- *Naming Conventions*: Use snake_case for variable names with multiple words.
- *Formatting*: Use consistent *indentation* to show hierarchy. Use a mono-space typeface.

#figure(
  image("../images/pseudocode.png", width: 60%),
  caption: [Summary of pseudocode control structures.],
)

#code-box[
  *Pseudocode Plan*
  ```pseudocode
  BEGIN calculate_tax(income)
    DECLARE tax_rate = 0.2
    IF income < 18200 THEN
      RETURN 0
    ELSE
      RETURN (income - 18200) * tax_rate
    ENDIF
  END
  ```

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      *JavaScript Implementation*
      ```javascript
      function calculateTax(income) {
        let taxRate = 0.2;
        if (income < 18200) {
          return 0;
        } else {
          return (income - 18200) * taxRate;
        }
      }
      ```
    ],
    [
      *Python Implementation*
      ```python
      def calculate_tax(income):
          tax_rate = 0.2
          if income < 18200:
              return 0
          else:
              return (income - 18200) * tax_rate
      ```
    ]
  )
]



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=qfckDdsEIq8")[#image("../images/yt_pseudocode.jpg", width: 100%)],
    [*Video*: What is Pseudocode Explained -- Mastering the bridge between human logic and computer code. \ https://www.youtube.com/watch?v=qfckDdsEIq8],
  )
]


== Programming Features and Practices

To generate functional components, students must master five basic programming features: *variables* (local and global), *control structures*, *data structures*, *syntax*, and *libraries/classes*.

=== Data Structures
Data structures are collections of related data. In Python, four main data structures are used:
- *Lists*: Ordered, mutable collections defined with `[]` (e.g. `[1, 2, 3]`). Elements are accessed via index.
- *Tuples*: Ordered, immutable collections defined with `()` (e.g. `(1, 2, 3)`). Used when data shouldn't be modified.
- *Sets*: Unordered, mutable collections of unique elements defined with `{}` (e.g. `{1, 2, 3}`).
- *Dictionaries*: Ordered collections of key-value pairs defined with `{}` and `:` (e.g. `{"name": "John"}`).

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=rL8X2mlNHPM")[#image("../images/yt_data_structures.jpg", width: 100%)],
    [*Video*: Data Structures Explained -- Understanding lists, dictionaries, and arrays. \ https://www.youtube.com/watch?v=rL8X2mlNHPM],
  )
]

=== Syntax and Libraries
- *Syntax*: The set of rules that defines combinations of symbols that are considered correctly structured programs.
- *Libraries*: A collection of files, programs, or functions referenced in code. Python has a standard library and allows installing more via tools like `pip`.
- *Classes*: The basic building block of object-oriented programming. A class defines attributes (data) and methods (actions) common to all objects of one type.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=3ts5GSnsz8E")[#image("../images/yt_modularisation.jpg", width: 100%)],
    [*Video*: Modularisation and Functions -- How to break code into reusable components. \ https://www.youtube.com/watch?v=3ts5GSnsz8E],
  )
]

When data is organized into structures, we often need to process it using specific algorithms, such as sorting, as shown in the visualization below.

#figure(
  image("../images/sorting_viz.jpg", width: 60%),
  caption: [Visualising a sorting algorithm operating on an array of data.#footnote[Source: Gemini]],
)

=== Quality and Dependability
Industry-standard practices ensure that solutions are robust and sustainable:
- *Efficiency*: Writing simple, high-performing code that uses minimal resources.
- *Portability*: Ensuring code can be adapted to different environments or platforms with minimal changes.
- *Testing and Debugging*: Using processes like *desk checks* (manually tracing code logic) to predict outputs and identify errors.
- *Documentation*: Using consistent naming conventions (like camelCase) and *code comments* to clarify the purpose of statements for other developers.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=zdhi4lFRX8s")[#image("../images/yt_desk_checking.jpg", width: 100%)],
    [*Video*: Desk Checking and Logic Errors -- Tracing code manually to find bugs before they happen. \ https://www.youtube.com/watch?v=zdhi4lFRX8s],
  )
]

Efficiency is a core goal of professional development, but it often involves a trade-off between execution speed and the time required to write the code.

#figure(
  image("../images/xkcd_efficiency.jpg", width: 60%),
  caption: [The trade-off between writing efficient code and the time spent writing it.#footnote[Source: xkcd.com/1205]],
)

Ultimately, code quality is more than just performance; it includes readability and maintainability, as satirized in the following comic.

#figure(
  image("../images/xkcd_quality.jpg", width: 50%),
  caption: [A humorous look at the subjective nature of 'Code Quality'.#footnote[Source: xkcd.com/1513]],
)

== Data Interaction and Advanced Techniques

As digital solutions become more complex, they must interact with external data sources and ensure the security of that data.

=== Database Interaction
Relational databases are managed using *#idx("SQL") statements*. The four primary operations (CRUD) are:
- `SELECT`: Retrieving data from a table.
- `INSERT`: Adding new records.
- `UPDATE`: Modifying existing records.
- `DELETE`: Removing records.

=== #idx("Data Validation")
Data integrity is maintained by checking information before it is stored. Techniques include:
- *Range Check*: Ensuring a value is within a specified range (e.g., age between 0 and 120).
- *Type Check*: Ensuring the input is the correct data type (e.g., numeric vs string).
- *Existence Check*: Ensuring a required field is not left blank.

=== Cybersecurity
Protecting data during exchange involves:
- *Encryption*: Transforming plaintext into ciphertext using algorithms. *Symmetric* encryption uses one key, while *Asymmetric* encryption uses a public and private key pair.
- *Hashing*: Creating a fixed-length unique "fingerprint" of data. Adding a *Salt* (random data) before hashing increases security against pre-calculated attacks.



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=NuyzuNBFWxQ")[#image("../images/yt_encryption.jpg", width: 100%)],
    [*Video*: How Encryption Works -- A visual guide to symmetric and asymmetric encryption. \ https://www.youtube.com/watch?v=NuyzuNBFWxQ],
  )
]


#women[
  *Ada Lovelace* #index("Lovelace, Ada") is often considered the first computer programmer. In the 1840s, she wrote an algorithm intended to be executed by Charles Babbage's early mechanical computer, the Analytical Engine. She realized that computers could do more than just calculate numbers; they could manipulate symbols according to rules.#footnote[Source: #link("https://books.google.com/books/about/Ada_s_Algorithm.html?id=RH3wsgEACAAJ")[Essinger, J. (2014). *Ada's Algorithm*]. Melville House.]

  #quotation(attribution: "Ada Lovelace")[That brain of mine is something more than merely mortal; as time will show.]
]


#women[
  *Margaret Hamilton* #index("Hamilton, Margaret") led the team that developed the on-board flight software for NASA's Apollo program. She coined the term "software engineering" to give her team's work the same respect as other engineering disciplines. Her focus on "Error Detection and Recovery" was critical to the success of the moon landing.#footnote[Source: #link("https://history.nasa.gov/alsj/Hamilton.html")[NASA History Office. *Margaret Hamilton: The Girl Who Taught Computers to Talk*].]

  #quotation(attribution: "Margaret Hamilton")[There was no choice but to be pioneers.]
]


== Online Resources

To master the logic and syntax explored in this chapter, utilize these interactive coding and planning platforms:

- *Interactive Coding Practice*:
  - #link("https://groklearning.com/course/python-for-beginners/")[Grok Learning: Python for Beginners] -- Structured lessons on Python fundamentals.
  - #link("https://codingbat.com/python")[CodingBat Python] -- Small, focused problems to build algorithmic fluency.
  - #link("https://gdquest.github.io/learn-gdscript/")[Learn GDScript] -- An interactive browser-based app to learn the Godot engine's language.
- *Pseudocode and Logic Tools*:
  - #link("https://graded-cs-resources.github.io/CodingBatPseudo/")[CodingBat Pseudocode] -- Challenges designed specifically for practicing formal pseudocode.
  - #link("http://flowgorithm.org/")[Flowgorithm] -- A free tool to create and execute flowcharts that convert into many programming languages.
  - #link("https://www.geeksforgeeks.org/how-to-write-a-pseudo-code/")[GeeksforGeeks: Writing Pseudocode] -- A comprehensive guide to formal logical conventions.
- *Extended Reading*:
  - #link("https://pythonbooks.org/free-books/")[Python Free Books] -- A curated list of open-source literature on intermediate and advanced Python.

== Revision Questions

1. Describe the three stages of the *IPO model* using a login screen as an example.
2. What is the primary difference between *Selection* and *Iteration*?
3. Why is it important to use *Modularisation* in a large software project?
4. Write a short snippet of *Pseudocode* that uses a `WHILE` loop to print numbers from 1 to 10.
5. Explain the difference between *Symmetric* and *Asymmetric* encryption.
6. What is a *Desk Check*, and why is it used during the development phase?
7. Describe two common data validation techniques.

