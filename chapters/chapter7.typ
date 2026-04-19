#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Prototype Data Solutions", label: <ch:7>)

*Aims and Objectives:*
- Define success criteria for user interfaces and programmed components.
- Master complex SQL retrieval and modification techniques.
- Generate functional prototype solutions that perform CRUD operations.
- Implement data validation and technical testing for reliability.
- Evaluate digital solutions against initial requirements and data quality standards.

== Solution Planning and Requirements
Planning is the foundation of any successful prototype. Before writing a single line of SQL, developers must establish the roadmap for their solution.

=== Success Criteria
Students begin by identifying the specific *#idx("Success Criteria")* required to plan both the user interface and the programmed components of the proposed solution. Success criteria act as a checklist to ensure the final product meets the needs of the users and the project brief [cite: 581].

#tip-box[
  *Example Success Criteria: School Library System*
  - *Functional*: The system must allow users to search for books by ISBN in under 2 seconds.
  - *Data Integrity*: No book record can be deleted if it is currently "checked out".
  - *UI/UX*: The "Return Book" button must be clearly visible and accessible within two clicks from the dashboard.
]

#tip-box[
  *Alan Cooper* #index("Cooper, Alan") is often referred to as the "Father of Visual Basic" and is a pioneer in the field of interaction design. He introduced the concept of *Personas*—goal-directed design tools that use fictional characters to represent user types. His work shifted the focus of software development from what the computer could do to what the *user* needed to achieve, a philosophy that is central to modern prototyping and UX.#footnote[Source: #link("https://books.google.com/books/about/The_Inmates_are_Running_the_Asylum.html?id=udsfAQAAIAAJ")[Cooper, A. (2004). *The Inmates Are Running the Asylum*]. Sams Publishing.]
]

#quotation(attribution: "Donald Knuth")[Premature optimization is the root of all evil.#footnote[Source: #link("https://www-cs-faculty.stanford.edu/~knuth/")[Stanford: Donald Knuth].]]

=== Data Types and Constraints
It is essential to determine the appropriate *#idx("Data Types")* (e.g., INTEGER, VARCHAR, DATE) and *#idx("Constraints")* (e.g., NOT NULL, UNIQUE, CHECK) for each field within the system. These rules prevent invalid data from entering the database at the source [cite: 582].

=== Defining Relationships
The selection and application of *primary keys* and *foreign keys* must be finalized during the planning stage. This ensures that the relational links between tables are robust and maintain referential integrity [cite: 582].



#figure(
  image("../images/pk_fk_relationship.jpg", width: 80%),
  caption: [Visualizing the link between Primary and Foreign Keys.],
)

== Database Optimization and SQL Implementation
Once the plan is in place, the focus shifts to optimizing the database structure and implementing the logic required to interact with the data.

=== Optimization: Reaching 3NF
Existing database structures are evaluated and modified to reach *Third Normal Form (3NF)*. This process ensures the database is efficient, minimizes redundancy, and prevents data anomalies [cite: 583].



#figure(
  image("../images/xkcd_data_quality.jpg", width: 80%),
  caption: [Database quality is only as good as the input logic.#footnote[Source: xkcd.com/2739]],
)



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=UrYLYV7WSHM")[#image("../images/yt_normalization_lucid.jpg", width: 100%)],
    [*Video*: Database Normalization (1NF, 2NF, 3NF) Walkthrough -- A practical guide to database optimization. \ https://www.youtube.com/watch?v=UrYLYV7WSHM],
  )
]


=== Masterful Data Retrieval
*#idx("Data Retrieval")* is achieved through complex SQL statements. Students must master the following clauses:
- `SELECT`: Choose specific columns.
- `WHERE`: Filter rows based on conditions.
- `GROUP BY`: Aggregate data into groups.
- `HAVING`: Filter groups.
- `ORDER BY`: Sort the final results [cite: 585].

#code-box[
  *Pseudocode Plan: Grouping and Filtering*
  ```pseudocode
  SELECT Department, 
         COUNT(StudentID)
  FROM Students
  WHERE Year > 2023
  GROUP BY Department
  HAVING Count > 5
  ORDER BY Count DESC
  ```

  *SQL Implementation*
  ```sql
  SELECT Department, 
         COUNT(StudentID) 
  FROM Students
  WHERE EnrollmentYear > 2023
  GROUP BY Department
  HAVING COUNT(StudentID) > 5
  ORDER BY 2 DESC;
  ```

  *Analysis*: This query filters for students enrolled after 2023, groups them by department, and only shows departments with more than 5 new students.
]

=== Advanced Functions and Joins
To extract deep insights, advanced functions and join operations are utilized:
- *#idx("Aggregate Functions")*: `COUNT`, `MIN`, `MAX`, `AVG`.
- *Filtering*: Using `IN` for set membership.
- *#idx("Inner-Joins")*: Combining data from multiple tables where keys match.
- *#idx("Sub-queries")*: Nesting one query inside another for complex logic [cite: 585].

=== Data Modification (CRUD)
*Data modification* is handled via SQL commands that manage the lifecycle of data and the tables themselves:
- `CREATE`: Define new tables or views.
- `INSERT`: Add new records.
- `UPDATE`: Modify existing records.
- `DELETE`: Remove records [cite: 586].

#code-box[
  *Pseudocode Plan: The Atomic Update*
  ```pseudocode
  UPDATE Students
  SET Status = 'Graduated'
  WHERE ID = 1042
  ```

  *SQL Implementation (Safe)*
  ```sql
  UPDATE Students 
  SET Status = 'Graduated' 
  WHERE StudentID = 1042;
  ```

  *Warning*: Never omit the `WHERE` clause unless you intend to update *every* record in the table.
]

== Generating the Prototype Solution
#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=QjX23eVy81A")[#image("../images/yt_prototyping_godot.jpg", width: 100%)],
    [*Video*: Prototyping Your Solution -- Moving from plan to a functional digital product. \ https://www.youtube.com/watch?v=QjX23eVy81A],
  )
]
The culmination of planning and SQL implementation is the creation of a functional prototype.

=== Access, Manipulation, and Display
The core objective is to generate a prototype digital solution capable of *accessing, manipulating, and displaying* data effectively. This means the solution should not only query the database but also present that data in a meaningful way to the user [cite: 587].

=== CRUD Operations
A complete prototype solution must enable the user to perform all standard operations: *insert, update, retrieve, and delete* (*#idx("CRUD")*) data. Importantly, these operations should work seamlessly across both single and multiple linked tables [cite: 588].

=== User Interface (UI) Generation
A functional *#idx("User Interface (UI)")* is the bridge between the user and the database. The UI must facilitate SQL database interactions—such as forms for data entry and tables for data display—without requiring the end-user to write SQL themselves [cite: 590].

== Validation and Technical Testing
A prototype is only as good as its reliability. Testing ensures the solution is robust and user-friendly.

== Usability and User Experience
A prototype's success is measured by how effectively a specific user can achieve their goals.

=== #idx("Usability Principles") (USALE)
In Digital Solutions, we focus on five core usability principles:
- *#idx("Utility")*: Does the solution have the features needed to complete the task?
- *#idx("Safety")*: Does the design prevent errors and allow for easy recovery?
- *#idx("Accessibility")*: Can the solution be used by people with diverse abilities?
- *#idx("Learnability")*: How easy is it for new users to accomplish basic tasks?
- *#idx("Effectiveness")*: Can users complete their tasks successfully and accurately?

=== #idx("Accessibility") (POUR)
Accessibility is guided by four principles:
- *Perceivable*: Users can see or hear the information.
- *Operable*: Users can use all parts of the solution (e.g., keyboard navigation).
- *Understandable*: Content and navigation are easy to follow.
- *Robust*: Works across different devices and assistive technologies.

== Visual Communication
Visual communication uses elements to achieve design principles, much like ingredients make a cake.

=== Visual Communication Principles (BACHPRaH)
- *#idx("Balance")*: Distributing elements for stability.
- *#idx("Alignment")*: Ordering elements along a common axis.
- *#idx("Contrast")*: Using differences to create interest and emphasis.
- *#idx("Hierarchy")*: Prioritizing elements to guide attention.
- *#idx("Proximity")*: Grouping related items together.
- *#idx("Repetition")*: Using consistent elements for cohesion.
- *#idx("Harmony")*: Creating an aesthetically pleasing composition.

#figure(
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 1em,
    image("../images/vcp_alignment.png", width: 100%),
    image("../images/vcp_contrast.png", width: 100%),
    image("../images/vcp_hierarchy.png", width: 100%),
  ),
  caption: [Visualizing Alignment, Contrast, and Hierarchy in UI design.#footnote[Source: digital-solutions-text-v2]],
)

=== Visual Communication Elements (SoFT CLaSSPT)
The building blocks of UI design include:
- *Shape, Form, Tone, Colour, Line, Scale, Space, Proportion, Texture.*

#figure(
  grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 1em,
    image("../images/vce_colour.png", width: 100%),
    image("../images/vce_form.png", width: 100%),
    image("../images/vce_line.png", width: 100%),
  ),
  caption: [Core elements: Colour, Form, and Line.#footnote[Source: digital-solutions-text-v2]],
)


== Evaluation and Refinement
#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=TmGYRAQ8s0I")[#image("../images/yt_testing.jpg", width: 100%)],
    [*Video*: Evaluating Digital Solutions -- How to measure success against your initial criteria. \ https://www.youtube.com/watch?v=TmGYRAQ8s0I],
  )
]
The final stage of the prototyping process involves appraising the solution to identify areas for improvement.

=== Algorithmic Appraisal
Algorithmic steps within the solution are appraised using debugging and testing processes, such as *desk checks*. By manually stepping through the logic, students can identify logical errors before they manifest as software bugs [cite: 594].

=== Data Quality Evaluation
Overall data quality is evaluated based on two primary success criteria:
- *Accuracy*: Is the data correct and reflective of reality?
- *Completeness*: Are all necessary data points present? [cite: 595]

=== Measuring Success
The final prototype digital solution is measured against the initial *success criteria* established in the planning phase. This determines the overall effectiveness and suitability of the solution for its intended purpose [cite: 596].

== Online Resources

To master the synthesis of data, logic, and interface design, explore these professional development resources:

- *Advanced SQL and Data Handling*:
  - #link("https://www.sqlitetutorial.net/")[SQLite Tutorial] -- In-depth guides on complex joins, sub-queries, and data modification.
  - #link("https://sqlzoo.net/wiki/SQL_Tutorial")[SQLZoo Interactive Challenges] -- A great platform for practicing `GROUP BY`, `HAVING`, and nested queries.
  - #link("https://www.w3schools.com/sql/sql_exercises.asp")[W3Schools SQL Exercises] -- Systematic practice for mastering the CRUD operations.
- *Database Design and Prototyping*:
  - #link("https://blog.hubspot.com/marketing/data-flow-diagram")[The Ultimate Guide to DFDs] -- Professional insights into mapping system logic and data movement.
  - #link("https://github.com/jgraph/drawio-desktop/releases")[Draw.io (Diagrams.net)] -- The industry-standard tool for creating relational schemas and UI wireframes.
- *Evaluation and Strategy*:
  - #link("https://digisoln.com/evaluation.html")[Evaluation Techniques for Digital Solutions] -- Strategies for appraising prototypes against success criteria and data quality standards.

== Revision Questions

1. Why is reaching *Third Normal Form (3NF)* essential for a prototype data solution?
2. Write a complex SQL query that uses `GROUP BY`, `HAVING`, and an `INNER JOIN`.
3. Explain the difference between *data validation* and *usability testing*.
4. Describe how a *desk check* helps in appraising the logic of an algorithm.
5. How do *success criteria* influence the evaluation phase of a digital project?
6. Provide an example of a SQL `SUB-QUERY` and explain its logic.

