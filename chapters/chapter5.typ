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


#pagebreak(weak: true)
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

#tip-box[
  *Elizabeth "Jake" Feinler* #index("Feinler, Elizabeth") was a pioneer in managing the massive amounts of data that would eventually become the internet. As director of the Network Information Center (NIC), she led the team that developed the first online directories and resource registries for the ARPANET. Her work on naming conventions and data organization laid the foundation for the Domain Name System (DNS) we use every day to navigate the web.#footnote[Source: Internet Hall of Fame. *Elizabeth Feinler: Official Biography*.]
]


#pagebreak(weak: true)
#figure(
  image("../images/comic_data.jpg", width: 60%),
  caption: [Data validation: the gatekeeper of integrity in a digital system.#footnote[Source: Gemini]],
)

=== Decomposition and Pattern Recognition
Using computational thinking, students break down complex user requirements into manageable storage needs. *Decomposition* involves identifying the core entities (like 'Users', 'Orders', or 'Products') and the specific attributes needed for each.


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_data_quality.jpg", width: 60%),
  caption: [The challenge of maintaining data quality over time.#footnote[Source: xkcd.com/2083]]
)


#pagebreak(weak: true)
#info-box[
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


#pagebreak(weak: true)
#figure(
  image("../images/pk_fk_relationship.jpg", width: 60%),
  caption: [Visualising the relationship between Primary and Foreign Keys.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_primary_key.jpg", width: 60%),
  caption: [The importance of precise queries when interacting with relational data.#footnote[Source: xkcd.com/1409]]
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=wR0jg0eQsZA")[#image("../images/yt_database.jpg", width: 100%)],
    [*Video*: Database Tutorial for Beginners -- Understanding how tables, keys, and relationships build a robust data system. \ https://www.youtube.com/watch?v=wR0jg0eQsZA],
  )
]

Students use *#idx("Gane-Sarson notation")* to symbolise the movement of data through a system using *#idx("Data Flow Diagrams (DFD)")*.


#pagebreak(weak: true)
#figure(
  image("../images/dfd_symbols.jpg", width: 60%),
  caption: [Standard symbols used in Gane-Sarson DFD notation.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#figure(
  image("../images/dfd_library.jpg", width: 60%),
  caption: [Case Study: A DFD for a Library Management System, showing data movement from a Borrower to the Books Database.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=6VGTvgaJllM")[#image("../images/yt_dfd.jpg", width: 100%)],
    [*Video*: Data Flow Diagrams - What is DFD? -- Using Gane-Sarson notation to map system logic. \ https://www.youtube.com/watch?v=6VGTvgaJllM],
  )
]

== Design and Impact Considerations

=== Impact Analysis
The storage and management of data have significant consequences:
- *Personal*: Issues of *#idx("Data Privacy")* and laws like the *#idx("GDPR")* or the *#idx("Australian Privacy Act")*, which protect individuals' rights to their personal information.
- *Social*: The risk of *Bias in Algorithms*, where data used to train AI models may inadvertently lead to unfair or discriminatory outcomes.
- *Economic*: The importance of *#idx("Data Sovereignty")*—ensuring that data is subject to the laws and governance of the country in which it is collected.

=== Emerging Technologies
Advancements like *Machine Learning* and *Neural Networks* are changing how we store and interpret data.


#pagebreak(weak: true)
#figure(
  image("../images/ml_neural_network.jpg", width: 60%),
  caption: [A simplified model of a Neural Network processing data through hidden layers.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_ml_data.jpg", width: 50%),
  caption: [The reality of current Machine Learning: pouring data into a pile of linear algebra and hoping for the best.#footnote[Source: xkcd.com/1838]]
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=aircAruvnKk")[#image("../images/yt_nn_data.jpg", width: 100%)],
    [*Video*: Neural Networks Explained -- How data flows through connected nodes to 'learn' patterns. \ https://www.youtube.com/watch?v=aircAruvnKk],
  )
]

#info-box[
  *Edgar F. Codd* (1923–2003) was a British computer scientist who, while working for IBM, invented the relational model for database management. His work, specifically his "12 Rules" for relational databases, revolutionized how we think about data storage, moving us away from complex hierarchical structures to the intuitive tables we use today.#footnote[Source: Codd, E. F. (1970). *A Relational Model of Data for Large Shared Data Banks*.]
]

== Revision Questions
1. Differentiate between a *Primary Key* and a *Foreign Key*.
2. Identify the four main symbols in a *Gane-Sarson DFD* and describe their purpose.
3. How do *Validation Rules* (like constraints) improve the reliability of a database?
4. What is *Data Sovereignty*, and why is it important for governments?
5. Describe a scenario where *Algorithm Bias* could impact a community.
6. How does a *Neural Network* differ from a traditional relational database in how it handles data?
