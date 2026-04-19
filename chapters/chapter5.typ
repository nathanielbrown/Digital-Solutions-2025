#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Data-driven Problems and Solution Requirements", label: <ch:5>)

*Aims and Objectives:*
- Understand the nature of data-driven problems and how to decompose them.
- Master relational database concepts: primary and foreign keys, data types, and constraints.
- Symbolise data movement using Data Flow Diagrams (DFD) with Gane-Sarson notation.
- Evaluate the social, economic, and personal impacts of data storage and management.
- Explore emerging technologies like Machine Learning and Neural Networks in the context of data.

#important-box[
  In Unit 2, students explore the nature of data-driven problems, focusing on how data is structured, validated, and managed within a digital system. This requires a shift from simple logic to managing the complexity of large, interconnected datasets.
]



#figure(
  image("../images/dikw_pyramid.jpg", width: 60%),
  caption: [The #idx("DIKW Hierarchy") (Data-Information-Knowledge-Wisdom).#footnote[Source: Gemini]],
)

== Analyzing Data Challenges

Developing a data-driven solution begins with understanding the complexities of handling information to ensure it remains reliable and useful.

=== Input Issues and Variations
Data insertion is rarely straightforward. Developers must analyze problems associated with:
- *Data Formats*: Ensuring that inputs from various sources (e.g., date formats, currency, or unit measurements) are normalized before storage.
- *Insertion Requirements*: Managing how different user roles (e.g., admin vs. student) interact with the same dataset.

=== Integrity and Reliability
To ensure data is accurate for use and storage, developers apply *Validation Rules*.
- *Constraint Examples*: Using `NOT NULL` to ensure required fields are filled, or `CHECK` constraints to ensure a value (like age) falls within a valid range.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=PbhuXaFYFiA")[#image("../images/yt_data_validation.jpg", width: 100%)],
    [*Video*: Data Validation Techniques -- Ensuring data integrity from the moment it enters the system. \ https://www.youtube.com/watch?v=PbhuXaFYFiA],
  )
]

#women[
  *Elizabeth "Jake" Feinler* #index("Feinler, Elizabeth") was a pioneer in managing the massive amounts of data that would eventually become the internet. As director of the Network Information Center (NIC), she led the team that developed the first online directories and resource registries for the ARPANET. Her work on naming conventions and data organization laid the foundation for the Domain Name System (DNS) we use every day to navigate the web.#footnote[Source: #link("https://internethalloffame.org/inductees/elizabeth-feinler")[Internet Hall of Fame. *Elizabeth Feinler: Official Biography*].]

  #quotation(attribution: "Elizabeth \"Jake\" Feinler")[The internet is not a thing, it's a bunch of people.]
]

#quotation(attribution: "Tim Berners-Lee")[The original idea of the web was that it should be a collaborative space where you can communicate through sharing information.#footnote[Source: #link("https://www.w3.org/People/Berners-Lee/")[W3C: Tim Berners-Lee Biography].]]




#figure(
  image("../images/comic_data.jpg", width: 60%),
  caption: [Data validation: the gatekeeper of integrity in a digital system.#footnote[Source: Gemini]],
)

=== Decomposition and Pattern Recognition
Using computational thinking, students break down complex user requirements into manageable storage needs. *Decomposition* involves identifying the core entities (like 'Users', 'Orders', or 'Products') and the specific attributes needed for each.



#figure(
  image("../images/xkcd_data_quality.jpg", width: 60%),
  caption: [The challenge of maintaining data quality over time.#footnote[Source: xkcd.com/2083]]
)



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=HXV3zeQKqGY")[#image("../images/yt_integrity.jpg", width: 100%)],
    [*Video*: Data Validation and Integrity -- Practical techniques for ensuring your database remains accurate and reliable. \ https://www.youtube.com/watch?v=HXV3zeQKqGY],
  )
]


== System Modeling and Relationships

To communicate and plan a data-driven system, developers use specific symbolic tools and relational concepts.

=== Relational Concepts and Keys
Relational #idx("Database")s organize data into tables. Key concepts include:
- *#idx("Primary Key (PK)")*: A unique identifier for every record in a table.
- *#idx("Foreign Key (FK)")*: A field in one table that links to the primary key of another table, creating a relationship between them.
- *#idx("Data Integrity")*: The assurance of accuracy and consistency of data over its entire lifecycle.

#code-box[
  *Pseudocode Plan: Defining Keys*
  ```pseudocode
  CREATE TABLE Students
    DEFINE StudentID (PK)
  
  CREATE TABLE Grades
    DEFINE StudentID (FK)
  ```

  *SQL Implementation*
  ```sql
  CREATE TABLE Students (
    ID INT PRIMARY KEY
  );

  CREATE TABLE Grades (
    StudentID INT,
    FOREIGN KEY (StudentID) 
      REFERENCES Students(ID)
  );
  ```
]

#tip-box[
  *ACID Properties*: Relational databases adhere to ACID properties, which guarantee the reliability of data transactions:
  - *#idx("Atomicity")*: Treats a transaction as an all-or-nothing operation. If any part fails, the entire transaction is rolled back.
  - *#idx("Consistency")*: Ensures a transaction transforms the database from one valid state to another, following all rules.
  - *#idx("Isolation")*: Guarantees that concurrent transactions do not interfere with each other.
  - *#idx("Durability")*: Ensures that once a transaction is committed, its changes are permanent, even in the event of a system failure.
]



#figure(
  image("../images/pk_fk_relationship.jpg", width: 60%),
  caption: [Visualising the relationship between Primary and Foreign Keys.#footnote[Source: Gemini]],
)

However, even with keys in place, the logic of the database must be carefully crafted to avoid common pitfalls in data retrieval.

#figure(
  image("../images/xkcd_primary_key.jpg", width: 60%),
  caption: [The importance of precise queries when interacting with relational data.#footnote[Source: xkcd.com/1409]]
)



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=wR0jg0eQsZA")[#image("../images/yt_database.jpg", width: 100%)],
    [*Video*: Database Tutorial for Beginners -- Understanding how tables, keys, and relationships build a robust data system. \ https://www.youtube.com/watch?v=wR0jg0eQsZA],
  )
]

=== #idx("Normalization")
Normalization is a database design technique used to organize data into multiple, smaller, related tables. Its primary goal is to minimize *Data Redundancy* (unnecessary repetition of data).

==== Data Anomalies
Without normalization, databases often suffer from:
- *#idx("Insertion Anomaly")*: When you cannot add a new record without also adding additional, unnecessary data.
- *#idx("Deletion Anomaly")*: When deleting a record inadvertently causes the loss of other related data that should have been retained.
- *#idx("Update Anomaly")*: When updating data results in inconsistencies between related items.

==== First Normal Form (1NF)
A database is in *1st Normal Form* when:
- Each column contains *atomic values* (single, indivisible).
- Each column contains the *same type of data*.
- Each column has a *unique name*.
- The order in which the data is saved does not matter.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    image("../images/1NF_before.png", width: 100%),
    image("../images/1NF_after.png", width: 100%),
  ),
  caption: [Before and After 1NF: Splitting multi-valued fields into atomic records.#footnote[Source: digital-solutions-text-2025]],
)

==== Second Normal Form (2NF)
A database is in *2nd Normal Form* when:
- It is already in 1NF.
- There are no *partial dependencies* (where an attribute depends on only part of a composite primary key).

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    image("../images/2NF_before.png", width: 100%),
    image("../images/2NF_after.png", width: 100%),
  ),
  caption: [Before and After 2NF: Removing partial dependencies by splitting tables.#footnote[Source: digital-solutions-text-2025]],
)

==== Third Normal Form (3NF)
A database is in *3rd Normal Form* when:
- It is already in 2NF.
- There are no *transitive dependencies* (where a non-key attribute depends on another non-key attribute).

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    image("../images/3NF_before.png", width: 100%),
    image("../images/3NF_after.png", width: 100%),
  ),
  caption: [Before and After 3NF: Eliminating transitive dependencies.#footnote[Source: digital-solutions-text-2025]],
)


Students use *#idx("Gane-Sarson notation")* to symbolise the movement of data through a system using *#idx("Data Flow Diagrams (DFD)")*.

A DFD is composed of four main components:
- *External Entities*: Sources or destinations of data outside the system.
- *Processes*: Actions that transform data.
- *Data Stores*: Repositories where data is held for later use.
- *Data Flows*: The routes that data takes between components.

#figure(
  image("../images/dfd_symbols.png", width: 80%),
  caption: [Standard symbols used in Gane-Sarson DFD notation.#footnote[Source: digital-solutions-text-2025]],
)

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=X-O6s5sah4o")[#image("../images/yt_dfd_symbols.jpg", width: 100%)],
    [*Video*: DFD Symbols and Notations -- Mastering the visual language of data flow. \ https://www.youtube.com/watch?v=X-O6s5sah4o],
  )
]

=== Creating a DFD

==== Step 1: Identify External Entities
Identify the outside systems, people, or organizations that interact with your system.
#figure(
  image("../images/dfd_step_1.png", width: 60%),
  caption: [DFD Step 1: Defining the boundaries of the system.],
)

==== Step 2: Identify Processes
What work is being done on the data? Use verbs to describe these actions.
#figure(
  image("../images/dfd_step_2.png", width: 60%),
  caption: [DFD Step 2: Adding the core logic and transformations.],
)

==== Step 3: Identify Data Stores
Where is data saved? Label these as digital (D), manual (M), or temporary (T).
#figure(
  image("../images/dfd_step_3.png", width: 60%),
  caption: [DFD Step 3: Integrating the database tables.],
)

==== Step 4: Identify Data Flows
Connect the components with arrows, ensuring every process has at least one input and one output.
#figure(
  image("../images/dfd_step_4.png", width: 60%),
  caption: [DFD Step 4: Mapping the complete movement of information.],
)

==== Step 5: Decompose to the Next Level
Complex systems are broken down from Level 0 (Context Diagram) to Level 1, 2, etc.
#figure(
  image("../images/dfd_step_5.png", width: 80%),
  caption: [DFD Step 5: Decomposing a complex process into finer detail.],
)


#figure(
  image("../images/dfd_library.jpg", width: 60%),
  caption: [Case Study: A DFD for a Library Management System.#footnote[Source: Gemini]],
)



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=6VGTvgaJllM")[#image("../images/yt_dfd.jpg", width: 100%)],
    [*Video*: Data Flow Diagrams - What is DFD? -- Using Gane-Sarson notation to map system logic. \ https://www.youtube.com/watch?v=6VGTvgaJllM],
  )
]

Understanding the different notations used in DFDs allows developers to choose the standard that best fits their project environment.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=46cpudedD7E")[#image("../images/yt_dfd_notations.jpg", width: 100%)],
    [*Video*: Gane-Sarson vs Yourdon Notations -- Comparing the two primary standards for DFD design. \ https://www.youtube.com/watch?v=46cpudedD7E],
  )
]


== Design and Impact Considerations

=== Impact Analysis
The storage and management of data have significant consequences:
- *Personal*: Issues of *#idx("Data Privacy")* and laws like the *#idx("GDPR")* or the *#idx("Australian Privacy Act")*, which protect individuals' rights to their personal information.
- *Social*: The risk of *Bias in Algorithms*, where data used to train AI models may inadvertently lead to unfair or discriminatory outcomes.
- *Economic*: The importance of *#idx("Data Sovereignty")*—ensuring that data is subject to the laws and governance of the country in which it is collected.

==== #idx("Australian Privacy Principles (APP)")
In Australia, data privacy is governed by 13 principles that establish standards for handling personal information:
+1. *Open and Transparent Management*: Having clear privacy policies.
+2. *Anonymity and Pseudonymity*: Allowing users to interact without identifying themselves where practical.
+3. *Collection of Solicited Info*: Only collecting what is necessary.
+4. *Dealing with Unsolicited Info*: Destroying or de-identifying data that wasn't asked for.
+5. *Notification of Collection*: Informing individuals when their data is gathered.
+6. *Use or Disclosure*: Only using data for its primary collected purpose.
+7. *Direct Marketing*: Allowing users to opt-out of marketing.
+8. *Cross-Border Disclosure*: Ensuring overseas recipients follow similar privacy laws.
+9. *Adoption of Government Identifiers*: Limiting the use of TFNs or Medicare numbers.
+10. *Quality of Personal Info*: Keeping data accurate and up-to-date.
+11. *Security of Personal Info*: Protecting data from misuse or loss.
+12. *Access to Personal Info*: Allowing individuals to see their own data.
+13. *Correction of Personal Info*: Allowing individuals to fix errors in their data.

=== Emerging Technologies
Advancements like *Machine Learning* and *Neural Networks* are changing how we store and interpret data.

=== #idx("Data Representation")
Computers store all information as binary (0s and 1s). How we represent text and numbers is crucial for system compatibility.

==== Text Representation
- *#idx("ASCII")*: A simple 7-bit encoding used by early computers. It can represent 128 characters, mainly English letters and symbols.
- *#idx("Unicode")*: A universal encoding that can represent characters from almost all world languages, including emojis and special symbols.

==== Data Formats
Consistency in data formats is vital for database integrity.
- *Dates*: Standardized as `YYYY-MM-DD` (ISO 8601).
- *Time*: Can be 12-hour (`hh:mmA`) or 24-hour (`HH:mm`).
- *Numbers*: Often require specific decimal places (e.g., currency `$ 0.00`) or patterns (e.g., phone numbers `0000 000 000`).

#figure(
  image("../images/historical_dates.png", width: 60%),
  caption: [The importance of consistent date representation over time.#footnote[Source: digital-solutions-text-2025]],
)

In modern systems, these structures are often the training ground for complex artificial intelligences.

#figure(
  image("../images/ml_neural_network.jpg", width: 60%),
  caption: [A simplified model of a Neural Network processing data through hidden layers.#footnote[Source: Gemini]],
)

Despite their complexity, the reality of these systems often involves a "pile of linear algebra" that requires careful tuning.

#figure(
  image("../images/xkcd_ml_data.jpg", width: 50%),
  caption: [The reality of current Machine Learning: pouring data into a pile of linear algebra and hoping for the best.#footnote[Source: xkcd.com/1838]]
)

To better understand how these nodes connect and 'learn', explore the following explanation of neural networks.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=aircAruvnKk")[#image("../images/yt_nn_data.jpg", width: 100%)],
    [*Video*: Neural Networks Explained -- How data flows through connected nodes to 'learn' patterns. \ https://www.youtube.com/watch?v=aircAruvnKk],
  )
]


#info-box[
  *Edgar F. Codd* (1923–2003) was a British computer scientist who, while working for IBM, invented the relational model for database management. His work, specifically his "12 Rules" for relational databases, revolutionized how we think about data storage, moving us away from complex hierarchical structures to the intuitive tables we use today.#footnote[Source: #link("https://amturing.acm.org/award_winners/codd_1000892.cfm")[Codd, E. F. (1970). *A Relational Model of Data for Large Shared Data Banks*].]
]

== Online Resources

To master the complexities of relational data and system modeling, explore these professional tools and tutorials:

- *SQL Mastery and Practice*:
  - #link("https://www.w3schools.com/sql/")[W3Schools SQL Tutorial] -- The industry-standard reference for beginners to learn basic and advanced SQL.
  - #link("https://sqlzoo.net/wiki/SQL_Tutorial")[SQLZoo] -- Interactive, browser-based SQL challenges to test your retrieval skills.
  - #link("https://www.sqlitetutorial.net/")[SQLite Tutorial] -- A deep dive into the specific features of the SQLite engine.
- *Database Management Software*:
  - #link("https://sqlitestudio.pl/")[SQLiteStudio] -- A professional, open-source tool for managing SQLite databases and visualizing schemas.
  - #link("https://sqlitebrowser.org/")[DB Browser for SQLite] -- A high-quality visual tool for creating, designing, and editing database files.
- *System Modeling Tools*:
  - #link("https://blog.hubspot.com/marketing/data-flow-diagram")[The Ultimate Guide to DFDs] -- A comprehensive resource on Gane-Sarson notation and data flow strategy.
  - #link("https://github.com/jgraph/drawio-desktop/releases")[Draw.io (Diagrams.net)] -- The preferred tool for creating professional-grade Data Flow Diagrams.

== Revision Questions

1. Differentiate between a *Primary Key* and a *Foreign Key*.
2. Identify the four main symbols in a *Gane-Sarson DFD* and describe their purpose.
3. How do *Validation Rules* (like constraints) improve the reliability of a database?
4. What is *Data Sovereignty*, and why is it important for governments?
5. Describe a scenario where *Algorithm Bias* could impact a community.
6. How does a *Neural Network* differ from a traditional relational database in how it handles data?

