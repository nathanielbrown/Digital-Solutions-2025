#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Innovative Digital Solutions", label: <ch:10>)

*Aims and Objectives:*
- Refine concepts and generate low-fidelity UI prototypes.
- Implement technical systems with functional modules and file operations.
- Master advanced SQL for data definition, modification, and retrieval.
- Apply systems thinking to model and synthesize digital solutions.
- Evaluate and refine prototypes through technical debugging and usability testing.

== Prototyping and Visual Design
Prototyping is an iterative process that allows developers to test ideas and gather feedback before full-scale implementation.

=== Idea Refinement
Students must refine initial concepts for individual components to ensure *technical feasibility*. This involves assessing whether a proposed feature can be realistically built with available tools and resources [cite: 688].

=== Low-Fidelity UI Prototypes
Before writing code, low-fidelity prototypes are generated to map out the user journey. Tools include:
- *Sketches & Storyboards*: For quick visualization of flow.
- *#idx("Wireframes") & Mock-ups*: For layout and structural planning.
- *Sitemaps & Mood Boards*: For organizational and aesthetic direction [cite: 704].

=== Visual Communication Principles
Applying visual communication elements (like space and colour) and principles (like balance and hierarchy) ensures the user interface is both intuitive and aesthetically pleasing [cite: 643, 644].

#info-box[
  *Design Example: High-Priority Alert*
  - *Contrast*: Using a bright red background with white text for a "Critical System Failure" message.
  - *Hierarchy*: Making the error code ("ERROR 404") larger than the troubleshooting steps to immediately catch the user's attention.
  - *Space*: Surrounding the "Retry" button with empty space (negative space) to prevent accidental clicks on "Cancel".
]

=== Demonstration
The process concludes with a *demonstration*, where a working prototype is presented to stakeholders to validate the direction of the solution [cite: 689].


#pagebreak(weak: true)
#figure(
  image("../images/ux_wireframe.jpg", width: 80%),
  caption: [Wireframing is a critical step in low-fidelity prototyping.],
)

== Technical System Implementation
Moving from design to code requires the generation of functional modules and robust data handling.

=== Programmed Modules
Students generate functional modules that interact with users, handle 2D data sources, and validate data inputs. These modules form the logical core of the digital solution [cite: 707, 708, 709, 710].

#tip-box[
  *Evelyn Berezin* #index("Berezin, Evelyn") (1925–2018) was an American computer scientist who invented the first computer-driven word processor. Her company, Redactron, produced the "Data Secretary" in 1971, which revolutionized office work by allowing users to edit and store documents digitally. Her work on large-scale automated systems, including the first computerized airline reservation system for United Airlines, demonstrated the power of digital innovation to solve complex organizational problems.#footnote[Source: The New York Times. *Evelyn Berezin, 93, Dies; Pioneer of the Word Processor* (2018).]
]

=== File Operations
Robust solutions often need to persist data outside of a database. Implementation includes code that can:
- *Create & Open*: Initializing file access.
- *Read & Write*: Moving data between memory and storage.
- *Close*: Ensuring data integrity and freeing system resources [cite: 706].

=== Control and Documentation
Programming development tools are used to generate code that controls all interactions within the solution [cite: 705, 711]. Throughout this process, consistent *code comments* are used to communicate and clarify the purpose of each statement, ensuring the project remains maintainable [cite: 712].


#pagebreak(weak: true)
#figure(
  image("../images/prototype_evolution.jpg", width: 80%),
  caption: [The evolution of a prototype from conceptual logic to functional system.],
)

== Advanced Data Manipulation with SQL
A robust prototype requires advanced control over its data structures and stored information.

=== Data Definition (DDL)
Students use *#idx("Data Definition Language (DDL)")* to manage the structure of their database. This includes:
- `CREATE`: Defining new tables and views.
- `DROP`: Removing entire structures from the system.
- `ALTER`: Modifying existing table definitions (e.g., adding a column) [cite: 692].

=== Data Modification (DML)
*#idx("Data Manipulation Language (DML)")* is used to manage the information stored within those structures. This involves implementing `INSERT`, `UPDATE`, and `DELETE` operations [cite: 691].

#proof-box[
  *SQL Walkthrough: Building a User Base*
  ```sql
  -- DDL: Create the structure
  CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    JoinDate DATE
  );
  
  -- DML: Insert the data
  INSERT INTO Users (UserID, Username, JoinDate)
  VALUES (1, 'AliceTech', '2024-04-18');
  ```
]

=== Complex Retrieval
Advanced `SELECT` clauses are applied to extract relevant data for the solution. This includes using:
- `WHERE` & `GROUP BY`: For filtering and aggregation.
- `HAVING` & `ORDER BY`: For group filtering and sorting.
- *Sub-selection & Inner-Joins*: To combine and nest queries for complex logic [cite: 693].

=== Justification
Crucially, developers must provide a rationale for selecting specific data from existing sources. This justification ensures the data chosen directly solves the identified problem [cite: 714].

== Systems Thinking and Synthesis
Systems thinking allows developers to view the solution as a collection of interconnected parts working together.

=== Conceptual Modeling
Students apply *#idx("systems thinking")* to develop a model that identifies:
- *System Boundaries*: What is inside and outside the solution.
- *Properties*: The characteristics of the system.
- *Inputs & Outputs*: How data flows into and out of the system.
- *UI & Controls*: How the user interacts with and governs system behavior [cite: 694, 695, 696, 697, 698, 699].

#tip-box[
  *Systems Thinking: The Schema Ripple Effect*
  If a developer decides to change the `UserID` from an integer to a UUID (a long string), they must consider the ripple effect:
  - *Database*: DDL `ALTER` command needed.
  - *Logic*: All modules reading UserID must now handle strings.
  - *UI*: Forms and URL parameters might need more space for the longer ID.
]

=== Component Synthesis
Synthesis is the process of integrating the user interface, processing logic, and data components to form a coherent, functional prototype digital solution [cite: 713].


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=JMjozqJSv2M")[#image("../images/yt_prototype.jpg", width: 100%)],
    [*Video*: The Prototyping Process -- From conceptual logic to a functional user interface. \ https://www.youtube.com/watch?v=JMjozqJSv2M],
  )
]

== Testing, Evaluation, and Refinement
The final phase of prototyping is a rigorous evaluation to ensure the solution is robust, effective, and user-friendly.

=== Algorithm Appraisal
Algorithms are evaluated for their *reliability*, *maintainability*, *efficiency*, *effectiveness*, and *usability*. Based on this appraisal, developers make justified recommendations for further refinement [cite: 716].

=== Technical Debugging
Computational thinking processes, such as *desk checks* and automated debugging techniques, are used to identify and fix logical and syntax errors in program modules [cite: 717, 718].

=== Usability Testing
User interfaces are refined through:
- *Heuristic Reviews*: Comparing the UI against established usability principles.
- *UX Testing*: Observing and recording real user interactions to identify friction points [cite: 718, 719, 721].

=== Impact and Success Evaluation
The final prototype is appraised against the initial *success criteria*. This evaluation determines whether the solution successfully addresses the identified problem and meets the needs of its stakeholders [cite: 722, 723, 724, 720].

#figure(
  image("../images/xkcd_debugging.jpg", width: 80%),
  caption: [Debugging is as much about persistence as it is about logic!#footnote[Source: xkcd.com/1722]],
)

== Revision Questions
1. Compare *low-fidelity* and *high-fidelity* prototyping. When is each most appropriate?
2. Explain the difference between *Data Definition Language (DDL)* and *Data Manipulation Language (DML)*.
3. List the five metrics used to appraise an algorithm.
4. How does *heuristic review* differ from *UX testing*?
5. Why is it necessary to justify the selection of specific data sources in a technical solution?
6. Describe how *systems thinking* helps in identifying system boundaries.

---
