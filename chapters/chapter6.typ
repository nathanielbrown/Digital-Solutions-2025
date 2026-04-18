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

=== Technical Requirements
Technical mastery involves understanding the infrastructure that supports data solutions. This includes:
- *SQL Syntax*: Mastering Structured Query Language to interact with data stores.
- *Hardware and Platforms*: Identifying the necessary physical and virtual environments [cite: 2754, 2755, 2761].
- *Data Stores*: Choosing between local databases, cloud storage, or distributed systems.


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=zsjvFFKOm3c")[#image("../images/yt_sql_fireship.jpg", width: 100%)],
    [*Video*: SQL in 100 Seconds -- A high-speed overview of database querying. \ https://www.youtube.com/watch?v=zsjvFFKOm3c],
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


#pagebreak(weak: true)
#figure(
  image("../images/dikw_hierarchy.jpg", width: 80%),
  caption: [The DIKW Hierarchy: Transforming raw data into strategic wisdom.],
)

== Principles of Data Management
Effective data management ensures that information remains usable, accurate, and secure throughout its lifecycle.

=== Acquisition, Integrity, and Security
The three pillars of data management are *acquisition* (gathering from reliable sources), *#idx("Data Integrity")* (ensuring accuracy and consistency), and *#idx("Data Security")* (protection from unauthorized access) [cite: 2766, 2767, 2770, 2773].


#pagebreak(weak: true)
#figure(
  image("../images/bobby_tables.jpg", width: 80%),
  caption: [Sanitizing inputs is crucial for maintaining database integrity.#footnote[Source: xkcd.com/327]],
)

=== Organization and Standards
Organization involves using consistent *naming conventions*, standardized *data formats* (like ISO dates), and logical structures to ensure data is usable across different systems [cite: 2768].

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

== Relational Database Fundamentals

=== Relational Schema (RS)
Database structures are interpreted through a *#idx("Relational Schema")*, which visually maps how different data points and tables relate to one another [cite: 2765].

=== Tables and Components
Students must work with relational tables consisting of:
- *Rows*: Individual records (tuples).
- *Columns*: Specific attributes or fields.
- *Nulls*: Placeholders for missing or unknown data.
- *Views*: Virtual tables representing a subset of data [cite: 2779].

=== Referential Integrity
Maintaining referential integrity requires a clear understanding of:
- *Primary Keys*: Unique identifiers for each row in a table.
- *Foreign Keys*: Fields that link to a primary key in another table [cite: 2777, 2778].

=== Normalisation
Database performance is optimized by applying *#idx("Normalisation")* techniques. The goal is to reach *#idx("Third Normal Form (3NF)")*, which ensures that all attributes are functionally dependent only on the primary key [cite: 2763, 2764, 2777].

#proof-box[
  *Normalization Case Study: Sales Invoices*
  - *Unnormalized (0NF)*: A single table containing InvoiceID, Date, CustomerName, Item1, Price1, Item2, Price2. (Repeating groups).
  - *First Normal Form (1NF)*: Eliminate repeating groups. Each item is its own row: `InvoiceID, ItemID, Price`.
  - *Second Normal Form (2NF)*: Ensure all non-key columns depend on the entire primary key. Remove "Price" to a separate `Items` table since it depends on `ItemID`, not `InvoiceID`.
  - *Third Normal Form (3NF)*: Remove transitive dependencies. If `CustomerAddress` depends on `CustomerName`, and `CustomerName` depends on `InvoiceID`, move address to a separate `Customers` table.
]


#pagebreak(weak: true)
#figure(
  image("../images/normalization_infographic.jpg", width: 80%),
  caption: [The hierarchical steps of database normalization to ensure data integrity.],
)

#tip-box[
  *Dr. Karen Spärck Jones* #index("Spärck Jones, Karen") was a pioneering British computer scientist whose work in the 1970s introduced the concept of Inverse Document Frequency (IDF). Her work is foundational to the search engines we use every day to query massive databases!#footnote[Source: Spärck Jones, K. (1972). *A statistical interpretation of term specificity and its application in retrieval*. Journal of Documentation, 28(1), 11–21.]
]

== Algorithmic Logic and Symbolic Representation
The logic of a data solution is represented through symbols and structured language before being implemented in code.

=== Visual Representation and Flow
System interrelationships and data flow are represented visually using:
- *Sketches and Mock-ups*: To visualize the user interface and basic layout.
- *Annotated Data Flow Diagrams (DFD)*: To map the movement of data between processes, data stores, and external entities [cite: 2784, 2785].

=== Computational Thinking and Algorithm Design
Students use computational thinking to design algorithms that follow a clear *Input, Process, Output (IPO)* structure [cite: 2762].

=== Pseudocode Development
Well-ordered algorithms are developed using *pseudocode*. This allows developers to plan:
- *Data Insertion*: Adding new records to a data store.
- *Manipulation*: Sorting, filtering, or calculating data.
- *Validation*: Checking data integrity before storage.
- *Presentation*: Formatting data for the user [cite: 2789, 2790, 2791].

#proof-box[
  *Example: Data Validation Logic*
  ```python
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
]

=== Core Programming Constructs
Implementation utilizes basic constructs to control the flow of the program:
- *Assignment*: Storing values in variables.
- *Sequence*: Executing instructions in a specific order.
- *Selection*: Making decisions using conditional statements (if/else).
- *Iteration*: Repeating tasks using loops (for/while).
- *Modularisation*: Breaking code into reusable functions or modules [cite: 2788].

=== Code Clarity and Documentation
Clear documentation is essential. *Code comments* are mandatory to clarify the intent and functionality of specific programming statements, making the code maintainable for others [cite: 2792].

== Revision Questions
1. Compare and contrast data validation and data verification with real-world examples.
2. Define the components of the DIKW hierarchy and explain how data becomes wisdom.
3. Describe the conditions required for a database table to be in Third Normal Form (3NF).
4. Explain the purpose of a Data Flow Diagram (DFD) in the design phase of a project.
5. Why is de-identification critical when managing large public datasets?
6. Identify the five core programming constructs used in algorithm implementation.

---
