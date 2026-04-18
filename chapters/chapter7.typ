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
  *Alan Cooper* #index("Cooper, Alan") is often referred to as the "Father of Visual Basic" and is a pioneer in the field of interaction design. He introduced the concept of *Personas*—goal-directed design tools that use fictional characters to represent user types. His work shifted the focus of software development from what the computer could do to what the *user* needed to achieve, a philosophy that is central to modern prototyping and UX.#footnote[Source: Cooper, A. (2004). *The Inmates Are Running the Asylum*. Sams Publishing.]
]

=== Data Types and Constraints
It is essential to determine the appropriate *#idx("Data Types")* (e.g., INTEGER, VARCHAR, DATE) and *#idx("Constraints")* (e.g., NOT NULL, UNIQUE, CHECK) for each field within the system. These rules prevent invalid data from entering the database at the source [cite: 582].

=== Defining Relationships
The selection and application of *primary keys* and *foreign keys* must be finalized during the planning stage. This ensures that the relational links between tables are robust and maintain referential integrity [cite: 582].


#pagebreak(weak: true)
#figure(
  image("../images/pk_fk_relationship.jpg", width: 80%),
  caption: [Visualizing the link between Primary and Foreign Keys.],
)

== Database Optimization and SQL Implementation
Once the plan is in place, the focus shifts to optimizing the database structure and implementing the logic required to interact with the data.

=== Optimization: Reaching 3NF
Existing database structures are evaluated and modified to reach *Third Normal Form (3NF)*. This process ensures the database is efficient, minimizes redundancy, and prevents data anomalies [cite: 583].


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_data_quality.jpg", width: 80%),
  caption: [Database quality is only as good as the input logic.#footnote[Source: xkcd.com/2739]],
)


#pagebreak(weak: true)
#info-box[
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

#proof-box[
  *Deep Dive: Grouping and Filtering*
  ```sql
  SELECT Department, COUNT(StudentID) as TotalStudents
  FROM Students
  WHERE EnrollmentYear > 2023
  GROUP BY Department
  HAVING COUNT(StudentID) > 5
  ORDER BY TotalStudents DESC;
  ```
  *Analysis*: This query first filters for students enrolled after 2023. It then groups them by department. The `HAVING` clause acts as a filter *after* the aggregation, only showing departments with more than 5 new students.
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

#info-box[
  *SQL Best Practice: The Atomic Update*
  When updating records, always use a specific `WHERE` clause (usually the Primary Key) to avoid accidentally modifying the entire table:
  ```sql
  -- Safe update
  UPDATE Students SET Status = 'Graduated' WHERE StudentID = 1042;
  
  -- Dangerous update (Changes everyone!)
  UPDATE Students SET Status = 'Graduated'; 
  ```
]

== Generating the Prototype Solution
The culmination of planning and SQL implementation is the creation of a functional prototype.

=== Access, Manipulation, and Display
The core objective is to generate a prototype digital solution capable of *accessing, manipulating, and displaying* data effectively. This means the solution should not only query the database but also present that data in a meaningful way to the user [cite: 587].

=== CRUD Operations
A complete prototype solution must enable the user to perform all standard operations: *insert, update, retrieve, and delete* (*#idx("CRUD")*) data. Importantly, these operations should work seamlessly across both single and multiple linked tables [cite: 588].

=== User Interface (UI) Generation
A functional *#idx("User Interface (UI)")* is the bridge between the user and the database. The UI must facilitate SQL database interactions—such as forms for data entry and tables for data display—without requiring the end-user to write SQL themselves [cite: 590].

== Validation and Technical Testing
A prototype is only as good as its reliability. Testing ensures the solution is robust and user-friendly.

=== Data Validation
The system must include *data validation* processes to ensure that all entered data is reliable and valid for storage. This includes checking for correct data types, range checks, and mandatory fields to prevent database errors [cite: 589].

=== Technical Quality
SQL and programmed components are tested specifically for:
- *Reliability*: Does the system perform consistently?
- *Maintainability*: Is the code easy to update and debug?
- *Efficiency*: Does the SQL run quickly without wasting resources? [cite: 591]

=== Usability Testing
User interfaces undergo rigorous testing against established *usability principles* (such as visibility of system status and error prevention) to ensure a high-quality user experience [cite: 592].


#pagebreak(weak: true)
#figure(
  image("../images/usability_principles.jpg", width: 80%),
  caption: [Applying core usability principles to the prototype interface.],
)


== Evaluation and Refinement
The final stage of the prototyping process involves appraising the solution to identify areas for improvement.

=== Algorithmic Appraisal
Algorithmic steps within the solution are appraised using debugging and testing processes, such as *desk checks*. By manually stepping through the logic, students can identify logical errors before they manifest as software bugs [cite: 594].

=== Data Quality Evaluation
Overall data quality is evaluated based on two primary success criteria:
- *Accuracy*: Is the data correct and reflective of reality?
- *Completeness*: Are all necessary data points present? [cite: 595]

=== Measuring Success
The final prototype digital solution is measured against the initial *success criteria* established in the planning phase. This determines the overall effectiveness and suitability of the solution for its intended purpose [cite: 596].

== Revision Questions
1. Why is reaching *Third Normal Form (3NF)* essential for a prototype data solution?
2. Write a complex SQL query that uses `GROUP BY`, `HAVING`, and an `INNER JOIN`.
3. Explain the difference between *data validation* and *usability testing*.
4. Describe how a *desk check* helps in appraising the logic of an algorithm.
5. How do *success criteria* influence the evaluation phase of a digital project?
6. Provide an example of a SQL `SUB-QUERY` and explain its logic.
