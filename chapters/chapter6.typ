#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Data and Programming Techniques", label: <ch:6>)

*Aims and Objectives:*
- Recognise essential components of data-driven solutions, including problem scope and constraints.
- Master SQL syntax and understand technical requirements for data storage.
- Understand principles of data acquisition, integrity, and security.
- Differentiate between data, information, and wisdom (DIKW hierarchy).
- Interpret database structures through relational schemas and normalisation (3NF).
- Design and represent algorithms using Data Flow Diagrams (DFDs) and pseudocode.

== Core Elements of Data-Driven Solutions

A data-driven solution is more than just a piece of software; it is a systematic approach to solving problems by leveraging data effectively.

=== Problem Scope and Constraints
Before developing a solution, students must recognise the essential components, including the *scope* of the problem and any inherent *constraints* or limitations. Constraints might include technical limitations (e.g., hardware compatibility), economic factors (e.g., budget), or social considerations (e.g., user accessibility) [cite: 2751, 2752, 2753].

=== #idx("SQL Syntax")
Structured Query Language (SQL) is the standard language for interacting with Relational Database Management Systems (RDBMS).

==== Data Querying (SELECT)
The `SELECT` statement is used to retrieve data from a database.
- `SELECT * FROM Table`: Retrieves all columns.
- `SELECT Column1, Column2 FROM Table`: Retrieves specific columns.
- `WHERE`: Filters records based on a condition (e.g., `WHERE Age > 18`).

==== Data Manipulation (DML)
- *#idx("INSERT INTO")*: Adds new rows.
  `INSERT INTO Students (Name, Age) VALUES ('Alice', 17);`
- *#idx("UPDATE")*: Modifies existing records.
  `UPDATE Students SET Age = 18 WHERE Name = 'Alice';`
- *#idx("DELETE")*: Removes records.
  `DELETE FROM Students WHERE Name = 'Alice';`

#figure(
  image("../images/school.png", width: 80%),
  caption: [Example Relational Schema for a School Database used in SQL exercises.#footnote[Source: digital-solutions-text-2025]],
)

#tip-box[
  *SQL Dialects*: While SQL is standardized, different systems (MySQL, PostgreSQL, SQLite) may have slight variations in syntax. However, core commands like `SELECT` and `INSERT` are universal.
]



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=zsjvFFKOm3c")[#image("../images/yt_sql_fireship.jpg", width: 100%)],
    [*Video*: SQL in 100 Seconds -- A high-speed overview of database querying. \ https://www.youtube.com/watch?v=zsjvFFKOm3c],
  )
 ]

Building on these foundations, the next video focuses specifically on the core retrieval commands used in everyday database tasks.

 #video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=RdVQeHNtnZs")[#image("../images/yt_sql_select.jpg", width: 100%)],
    [*Video*: SQL SELECT and WHERE -- Mastering the basics of data retrieval. \ https://www.youtube.com/watch?v=RdVQeHNtnZs],
  )
 ]


=== Data Acquisition
Data is acquired from various real-world sources. These include:
- *Files*: CSV, JSON, or XML files.
- *Peripheral Devices*: Sensors, scanners, or IoT devices.
- *Online Repositories*: APIs and public datasets [cite: 2756, 2767].

=== Social and Economic Impacts
The storage and management of databases have personal, social, and economic impacts that must be evaluated from multiple perspectives:
- *Individual*: Privacy and personal data control.
- *Organizational*: Efficiency, security, and data-driven decision-making.
- *Governmental*: Regulation (like GDPR or the Privacy Act) and societal wellbeing [cite: 2757].

=== The Conceptual Hierarchy: DIKW
A fundamental conceptual hierarchy distinguishes between *Data*, *Information*, and *Wisdom*. While data represents raw facts, information provides context, and wisdom allows for the ethical and strategic application of that knowledge [cite: 2759].

#info-box[
  *Example: Healthcare Monitoring*
  - *Data*: A heart rate sensor records "110 bpm".
  - *Information*: In the context of a resting patient, "110 bpm" is categorized as tachycardia (high heart rate).
  - *Knowledge*: The medical system cross-references this with the patient's history of heart disease.
  - *Wisdom*: A doctor decides to administer specific medication and orders an immediate ECG, balancing technical data with professional judgment.
]



#figure(
  image("../images/dikw_hierarchy.jpg", width: 80%),
  caption: [The DIKW Hierarchy: Transforming raw data into strategic wisdom.],
)

== Principles of Data Management
Effective data management ensures that information remains usable, accurate, and secure throughout its lifecycle.

=== Acquisition, Integrity, and Security
The three pillars of data management are *acquisition* (gathering from reliable sources), *#idx("Data Integrity")* (ensuring accuracy and consistency), and *#idx("Data Security")* (protection from unauthorized access) [cite: 2766, 2767, 2770, 2773].



#figure(
  image("../images/bobby_tables.jpg", width: 80%),
  caption: [Sanitizing inputs is crucial for maintaining database integrity.#footnote[Source: xkcd.com/327]],
)

#info-box[
  *Data Dictionary*: A tool used to define the structure of your data.
  #table(
    columns: (1fr, 2fr, 1fr, 1.5fr),
    [*Item*], [*Definition*], [*Type*], [*Constraint*],
    [MasterPass], [Password to access the app], [String], [Length > 6, Not Null],
    [RecordName], [Name of the account/site], [String], [Not Null],
    [RecordUser], [Username for the site], [String], [Not Null],
    [RecordPass], [Password for the site], [String], [Not Null],
    [RecordURL], [URL for the site], [String], [Optional],
  )
]

=== Data Anomalies and Redundancy
To maintain high-quality data sets, students must identify and address:
- *#idx("Redundancy")*: Unnecessary duplication of data.
- *#idx("Anomalies")*: Inconsistencies that occur during insertion, deletion, or modification of data [cite: 2771, 2772, 2786].

=== Advanced Processing Techniques
Protecting sensitive information requires advanced techniques such as:
- *Encryption*: Scrambling data to prevent unauthorized reading.
- *#idx("De-identification")*: Removing personally identifiable information (PII) to protect privacy [cite: 2787].

=== Validation vs. Verification
A critical distinction is made between:
- *#idx("Data Validation")*: Ensuring data is "clean" and follows predefined rules (e.g., range checks).
- *#idx("Data Verification")*: Ensuring data matches the original source (e.g., double-entry) [cite: 2776].

== Relational Database Design

=== #idx("Entity Relationship Diagram (ERD)")
An ERD is a visual representation of a database structure showing entities, their attributes, and the relationships between them.

==== Step-by-Step Creation
1. *Identify Entities*: People, places, things, or processes (e.g., Student, Teacher).
2. *Add Attributes*: Properties of the entities (e.g., Student Name, Teacher ID).
3. *Establish Cardinality*: Define the numeric relationship (one-to-one, one-to-many, etc.).
4. *Resolve Many-to-Many*: Use a *Bridging Entity* (Composite Key) to break many-to-many relationships into two one-to-many relationships.
5. *Identify Foreign Keys*: Link tables by placing the Primary Key of the "one" side into the "many" side as a Foreign Key.

#figure(
  image("../images/erd_cardinality.png", width: 80%),
  caption: [Notation for cardinality in ERDs.#footnote[Source: digital-solutions-text-2025]],
)

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    image("../images/erd_step_1.png", width: 100%),
    image("../images/erd_step_3.png", width: 100%),
  ),
  caption: [Identifying entities and establishing cardinality.],
)

When relationships become many-to-many, we must introduce a bridging entity to resolve the complexity.

#figure(
  image("../images/erd_step_4.png", width: 80%),
  caption: [Resolving a many-to-many relationship with a bridging entity.],
)

=== #idx("Relational Schema (RS)")
A Relational Schema is the formal definition of the database structure, including data types for every attribute.

#figure(
  image("../images/erd_step_6.png", width: 80%),
  caption: [Transitioning from an ERD to a Relational Schema with data types.#footnote[Source: digital-solutions-text-2025]],
)

#tip-box[
  *Referential Integrity*: Ensures that a Foreign Key value always matches an existing Primary Key in the related table, preventing "orphan" records.
]

#proof-box[
  *Normalization Case Study: Sales Invoices*
  - *Unnormalized (0NF)*: A single table containing InvoiceID, Date, CustomerName, Item1, Price1, Item2, Price2. (Repeating groups).
  - *First Normal Form (1NF)*: Eliminate repeating groups. Each item is its own row: `InvoiceID, ItemID, Price`.
  - *Second Normal Form (2NF)*: Ensure all non-key columns depend on the entire primary key. Remove "Price" to a separate `Items` table since it depends on `ItemID`, not `InvoiceID`.
  - *Third Normal Form (3NF)*: Remove transitive dependencies. If `CustomerAddress` depends on `CustomerName`, and `CustomerName` depends on `InvoiceID`, move address to a separate `Customers` table.
]



#figure(
  image("../images/normalization_infographic.jpg", width: 80%),
  caption: [The hierarchical steps of database normalization to ensure data integrity.],
)

The following walkthrough demonstrates these normalization steps using a practical example to clarify the transition between forms.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=nivyaiCeWjs")[#image("../images/yt_normalisation.jpg", width: 100%)],
    [*Video*: Database Normalisation (1NF, 2NF, 3NF) -- A comprehensive guide to organizing data tables. \ https://www.youtube.com/watch?v=nivyaiCeWjs],
  )
]

#women[
  *Dr. Karen Spärck Jones* #index("Spärck Jones, Karen") was a pioneering British computer scientist whose work in the 1970s introduced the concept of Inverse Document Frequency (IDF). Her work is foundational to the search engines we use every day to query massive databases!#footnote[Source: #link("https://www.cl.cam.ac.uk/archive/ksj21/")[Cambridge: Karen Spärck Jones].]

  #quotation(attribution: "Dr. Karen Spärck Jones")[Computing is too important to be left to men.]
]


== Programming and Algorithmic Logic
The logic of a data solution is represented through symbols and structured language before being implemented in code.

=== #idx("Algorithmic Building Blocks")
Algorithms are constructed using six basic building blocks:
- *Sequence*: Instructions processed one after the other.
- *Assignment*: Storing a value in a *variable*.
- *Condition*: A question generating `True` or `False`.
- *Selection*: Choosing a path based on a condition (`if`, `elif`, `else`).
- *Iteration*: Repeating instructions (loops like `for` and `while`).
- *Modularisation*: Breaking a large task into smaller, manageable functions.

#figure(
  image("../images/algorithms.png", width: 60%),
  caption: [The fundamental building blocks of algorithm design.#footnote[Source: digital-solutions-text-2025]],
)

=== #idx("Data Types and Structures")
Python uses various types to handle data:
- `str`: Sequence of characters (text).
- `int`: Whole numbers.
- `float`: Numbers with decimal points.
- `bool`: Logical values (`True` or `False`).

Common data structures (collections) include:
- *#idx("Lists")*: Ordered, mutable collections `[1, 2, 3]`.
- *#idx("Dictionaries")*: Key-value pairs `{"ID": 101, "Name": "Bob"}`.
- *#idx("Tuples")*: Ordered, immutable collections `(1, 2, 3)`.

=== Logic and Flow Control
Complex decisions are often visualized using logic gates or flowcharts.

#figure(
  image("../images/logic_gates.png", width: 60%),
  caption: [Common logic gates used in digital systems.#footnote[Source: digital-solutions-text-2025]],
)

=== Pseudocode Development
Well-ordered algorithms are developed using *#idx("pseudocode")*. This allows developers to plan:
- *Data Insertion*: Adding new records to a data store.
- *Manipulation*: Sorting, filtering, or calculating data.
- *Validation*: Checking data integrity before storage (e.g., `IF age < 0`).

#code-box[
  *Pseudocode Plan: Data Validation Logic*
  ```pseudocode
  BEGIN VALIDATE_AGE
    INPUT age
    IF age < 0 OR age > 120 THEN
      OUTPUT "Error: Invalid age entered."
      SET valid_flag = False
    ELSE
      OUTPUT "Age validated successfully."
      SET valid_flag = True
    ENDIF
  END
  ```

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      *JavaScript Implementation*
      ```javascript
      function validateAge(age) {
        if (age < 0 || age > 120) {
          console.log("Error: Invalid age.");
          return false;
        } else {
          console.log("Age validated.");
          return true;
        }
      }
      ```
    ],
    [
      *Python Implementation*
      ```python
      def validate_age(age):
          if age < 0 or age > 120:
              print("Error: Invalid age.")
              return False
          else:
              print("Age validated.")
              return True
      ```
    ]
  )
]

=== Code Clarity and Documentation
Clear documentation is essential. *Code comments* are mandatory to clarify the intent and functionality of programming statements, making the code maintainable.

== Online Resources

To master the technical integration of data and programming, explore these specialized tools and platforms:

- *Data Modeling and SQL*:
  - #link("https://www.geeksforgeeks.org/system-design-tutorial/")[System Design Tutorial] -- A comprehensive guide to architecting large-scale digital systems.
  - #link("https://www.w3schools.com/sql/sql_quiz.asp")[SQL Quiz] -- Test your knowledge of database querying and DML operations.
  - #link("https://www.w3schools.com/sql/sql_exercises.asp")[SQL Exercises] -- Hands-on practice for mastering the `SELECT`, `INSERT`, and `UPDATE` statements.
- *UX and System Evaluation*:
  - #link("https://digisoln.com/evaluation.html")[Evaluation Strategy] -- A guide to evaluating digital solutions against success criteria and usability principles.
  - #link("https://cdn2.hubspot.net/hubfs/439788/Content_Offers/UX_Design/User_Experience_Audit_-_Sample.pdf")[Example UX Review] -- A professional walkthrough of how to critique and improve a user interface.
  - #link("https://bootcamp.uxdesign.cc/improving-ux-on-existing-website-6d90723a5bd")[Improving UX on Existing Websites] -- A case study on the iterative refinement of live digital products.

== Revision Questions

1. Describe the difference between *Data*, *Information*, and *Wisdom* using a real-world example.
2. What are the three primary pillars of *Data Management*?
3. Differentiate between *Data Validation* and *Data Verification*.
4. Explain the purpose of a *Bridging Entity* in an Entity Relationship Diagram (ERD).
5. List the conditions required for a database to be in *Third Normal Form (3NF)*.
6. Why is *Referential Integrity* essential for maintaining a high-quality relational database?
7. Write a short snippet of *Pseudocode* to validate that a user's password is at least 8 characters long.
public datasets?
6. Identify the five core programming constructs used in algorithm implementation.

---
