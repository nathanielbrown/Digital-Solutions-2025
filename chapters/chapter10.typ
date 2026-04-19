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

#quotation(attribution: "Tom Chi")[Doing is the best way of thinking.#footnote[Source: #link("https://www.tomchi.com/")[TomChi.com].]]

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



#figure(
  image("../images/ux_wireframe.jpg", width: 80%),
  caption: [Wireframing is a critical step in low-fidelity prototyping.],
)

== Technical System Implementation
Moving from design to code requires the generation of functional modules and robust data handling.

=== Programmed Modules
Students generate functional modules that interact with users, handle 2D data sources, and validate data inputs. These modules form the logical core of the digital solution [cite: 707, 708, 709, 710].

#women[
  *Evelyn Berezin* #index("Berezin, Evelyn") (1925–2018) was an American computer scientist who invented the first computer-driven word processor. Her company, Redactron, produced the "Data Secretary" in 1971, which revolutionized office work by allowing users to edit and store documents digitally. Her work on large-scale automated systems, including the first computerized airline reservation system for United Airlines, demonstrated the power of digital innovation to solve complex organizational problems.#footnote[Source: #link("https://www.nytimes.com/2018/12/10/obituaries/evelyn-berezin-dead.html")[The New York Times. *Evelyn Berezin, 93, Dies; Pioneer of the Word Processor* (2018)].]

  #quotation(attribution: "Evelyn Berezin")[They said to me, 'Design a computer,' I had never seen one before. Hardly anyone else had.]
]


=== File Operations
Robust solutions often need to persist data outside of a database. Implementation includes code that can:
- *Create & Open*: Initializing file access.
- *Read & Write*: Moving data between memory and storage.
- *Close*: Ensuring data integrity and freeing system resources [cite: 706].

=== Control and Documentation
Programming development tools are used to generate code that controls all interactions within the solution [cite: 705, 711]. Throughout this process, consistent *code comments* are used to communicate and clarify the purpose of each statement, ensuring the project remains maintainable [cite: 712].



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

#code-box[
  *Pseudocode Plan: Building a User Base*
  ```pseudocode
  CREATE TABLE Users
  DEFINE ID (PK)
  DEFINE Username
  DEFINE Date
  
  INSERT INTO Users
  VALUES (1, 'Alice', TODAY)
  ```

  *SQL Implementation*
  ```sql
  CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    JoinDate DATE
  );

  INSERT INTO Users 
  VALUES (1, 'Alice', '2024');
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



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=0ZT26bKr2Gc")[#image("../images/yt_hi_fi_prototype.jpg", width: 100%)],
    [*Video*: High-Fidelity Prototyping -- Adding visual polish and interactivity to your solution. \ https://www.youtube.com/watch?v=0ZT26bKr2Gc],
  )
]


== Testing and Evaluation
Testing is a rigorous process to ensure the solution meets the user's needs and operates as intended.

=== Success Criteria: The Roadmap to Success
Before testing begins, students must establish clear *#idx("Success Criteria")*. These are measurable benchmarks used to evaluate the effectiveness of the solution.
- *#idx("Functional Requirements")*: What the solution *must do* (e.g., "The system must authenticate users via a secure login").
- *#idx("Non-functional Requirements")*: How the solution *performs* (e.g., "The login page must load in under 2 seconds").

=== Prioritisation: The MuSCoW Method
Not all requirements are created equal. The *#idx("MuSCoW")* method helps developers prioritise features:
- *Must have*: Essential for the solution to function.
- *Should have*: Important but not critical for the first version.
- *Could have*: Desirable features if time and resources allow.
- *Won't have*: Features explicitly excluded from the current scope.

#figure(
  image("../images/muscow_table.png", width: 80%),
  caption: [Example of a MuSCoW prioritisation table.#footnote[Source: digital-solutions-text-2025]],
)

=== Implementation Testing
Students use a structured approach to verify their code:
1. *#idx("Unit Testing")*: Testing individual functions or components in isolation (e.g., testing a single database query).
2. *#idx("Integration Testing")*: Testing how different components work together (e.g., verifying that a web form correctly saves data to the database).

#proof-box[
  *Testing Documentation*
  A good test log includes the *Test Case*, *Input*, *Expected Outcome*, *Actual Outcome*, and any *Action Taken* if the test failed. This provides evidence of iterative refinement and technical problem-solving.

  #table(
    columns: (1fr, 1.5fr, 1.5fr, 0.5fr),
    [*Feature*], [*Testing Action*], [*Expected Result*], [*Status*],
    [Login], [Input incorrect password], [Access denied], [Pass],
    [Create], [Add new test record], [Visible in main list], [Pass],
    [Delete], [Remove test record], [No longer in database], [Pass],
  )
]

=== Appraisal and Evaluation
The final step is to *appraise* the solution against the initial success criteria. This involves:
- *Evaluating Effectiveness*: Did the solution solve the original problem?
- *Impact Analysis*: What were the personal, social, and economic impacts of the solution?
- *Recommendations for Improvement*: Based on test results and user feedback, what should be changed in future versions? [cite: 746, 750].

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=L93LOjDSByg")[#image("../images/yt_eval_prototype.jpg", width: 100%)],
    [*Video*: Evaluation of Prototypes -- Using feedback to refine and improve your final product. \ https://www.youtube.com/watch?v=L93LOjDSByg],
  )
]

The appraisal process often uncovers subtle logic errors that require careful debugging to resolve.

#figure(
  image("../images/xkcd_debugging.jpg", width: 80%),
  caption: [Debugging is as much about persistence as it is about logic!#footnote[Source: xkcd.com/1722]],
)

== Online Resources

To refine your innovative solutions and master technical implementation, utilize these professional development resources:

- *Advanced SQL (DDL and DML)*:
  - #link("https://www.w3schools.com/sql/sql_create_table.asp")[W3Schools: Data Definition] -- Learn to use the `CREATE`, `ALTER`, and `DROP` statements to manage database structures.
  - #link("https://www.sqlitetutorial.net/sqlite-dml/")[SQLite DML Operations] -- A comprehensive guide to inserting, updating, and deleting data within an SQLite environment.
- *Prototyping and Synthesis*:
  - #link("https://www.uisources.com/screenshots")[UI Sources] -- Analyze real-world interactions and high-fidelity prototypes for design inspiration.
  - #link("https://wireframe.cc/")[Wireframe.cc] -- A specialized tool for creating low-fidelity UI prototypes and mapping user journeys.
- *Requirements and Evaluation*:
  - #link("https://www.geeksforgeeks.org/how-to-set-product-goals-initiatives-a-complete-guide-for-product-managers/")[Setting Product Goals and Requirements] -- A professional guide to defining measurable success criteria.
  - #link("https://digisoln.com/evaluation.html")[Evaluating Digital Solutions] -- Strategies for appraising final prototypes and justifying technical recommendations.

== Revision Questions

1. Why is *Technical Feasibility* a critical consideration during the refinement of a digital concept?
2. Differentiate between *Data Definition Language (DDL)* and *Data Manipulation Language (DML)* using SQL examples.
3. Describe the five stages of *File Operations* and explain why closing a file is essential for data integrity.
4. What is *Systems Thinking*, and how does it help a developer manage the "ripple effect" of changes in a project?
5. Explain the *MuSCoW Method* and how it assists in prioritizing solution requirements.
6. How does *Integration Testing* differ from *Unit Testing*? Provide an example of each.
7. Why are *Justified Recommendations* an essential part of the evaluation phase of a digital project?

---
