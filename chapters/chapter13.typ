#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Prototype Digital Data Exchanges", label: <ch:13>)

*Aims and Objectives:*
- Synthesise secure exchange components using core programming features.
- Implement encryption logic and standardized data formats (JSON/XML).
- Execute advanced SQL operations for backend data management.
- Apply coding standards and technical debugging to ensure quality.
- Evaluate the impact of AI and security recommendations against success criteria.

== Synthesising Secure Exchange Components
The creation of a data exchange solution requires the seamless integration of ideas into functional prototype components [cite: 807].

=== Core Programming Features
Development is built upon a deep understanding of:
- *Variables & Control Structures*: Managing the logical flow and execution of the program [cite: 816-817].
- *Data Structures*: Organizing information (like arrays or lists) for effective processing [cite: 818].
- *Syntax & Libraries*: Adhering to the language rules and leveraging existing code classes to accelerate development [cite: 819-820].

=== Algorithmic Building Blocks
Implementation relies on basic algorithm constructs that students have mastered: *assignment*, *sequence*, *selection* (conditions), *iteration* (loops), and *modularisation* (functions) [cite: 808-814].


#pagebreak(weak: true)
#figure(
  image("../images/prototype_evolution.jpg", width: 80%),
  caption: [Synthesizing diverse components into a coherent data exchange solution.],
)


== Implementing Encryption and Data Formats
Technical implementation involves the application of specific mathematical logic to protect and format data.

=== Encryption Logic
Students use *pseudocode* to develop algorithms for classical encryption methods, ensuring they understand the underlying shifts and substitutions:
- *#idx("Caesar Cipher")*: Character-based shifting.
- *Polyalphabetic (Vigenere & Gronsfeld)*: Using multiple shift patterns.
- *One-time Pad*: Truly random, single-use keys [cite: 823].

#proof-box[
  *Pseudocode: Caesar Cipher (Shift 3)*
  ```python
  BEGIN CAESAR_ENCRYPT(plaintext, shift)
    ciphertext = ""
    FOR each character in plaintext
      IF character is a letter
        base = ASCII value of 'A'
        code = (ASCII value of character - base + shift) MOD 26
        ciphertext = ciphertext + CHAR(code + base)
      ELSE
        ciphertext = ciphertext + character
      ENDIF
    ENDFOR
    RETURN ciphertext
  END
  ```
]

=== Data Interchange Formats
To ensure data can be exchanged between different systems, students generate solutions using standardized formats:
- *#idx("JSON") (JavaScript Object Notation)*: For lightweight, attribute-value pairs.
- *#idx("XML") (eXtensible Markup Language)*: For hierarchical, tag-based data [cite: 829].

=== External Data Handling
The programming environment must be configured to *receive* data from an external source, *process* it using the implemented logic, and *display* it in a user-friendly format [cite: 827, 830].


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=NuyzuNBFWxQ")[#image("../images/yt_encryption.jpg", width: 100%)],
    [*Video*: How Encryption Works -- A visual guide to symmetric and asymmetric encryption. \ https://www.youtube.com/watch?v=NuyzuNBFWxQ],
  )
]

== Database Operations and Programmed Methods
Managing the backend storage and logical processing of exchange data is critical for a functional prototype.

=== SQL for Data Exchange
Specific SQL statements are employed to manage the backend infrastructure:
- *Structure*: `CREATE`, `DROP`, and `ALTER` for managing tables.
- *Manipulation*: `INSERT` and `UPDATE` for managing stored rows [cite: 831-833].

Complex retrieval is handled through advanced `SELECT` clauses, including `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, *sub-selection*, and *#idx("Inner Join")* [cite: 834].

#info-box[
  *Advanced SQL: Inner Join*
  To combine user data with their recent login activity:
  ```sql
  SELECT Users.Username, Logins.LoginTime, Logins.IPAddress
  FROM Users
  INNER JOIN Logins ON Users.UserID = Logins.UserID
  ORDER BY Logins.LoginTime DESC;
  ```
  *Analysis*: This join links the `Users` table and `Logins` table using the shared `UserID`, allowing for a combined view of identity and activity.
]


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=9yeOJ0ZMUYw")[#image("../images/yt_joins_khan.jpg", width: 100%)],
    [*Video*: SQL Joins Explained -- Khan Academy tutorial on complex data retrieval. \ https://www.youtube.com/watch?v=9yeOJ0ZMUYw],
  )
]


#pagebreak(weak: true)
#figure(
  image("../images/sql_join_venn.jpg", width: 80%),
  caption: [Visualizing SQL Join operations using Venn diagrams.],
)

=== Programmed Logic
The exchange scripts incorporate sophisticated logic:
- *Nested Conditions*: Using single and nested selection structures for complex decision-making during the exchange process [cite: 840].
- *Operators*: Applying arithmetic (including integer division and modulus), comparison, and logical operators to transform data [cite: 842].
- *Data Collections*: Using one-dimensional structures like *arrays* and *lists* to handle batches of exchange data [cite: 844].


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=HXV3zeQKqGY")[#image("../images/yt_sql.jpg", width: 100%)],
    [*Video*: SQL Database Integrity -- Using SQL to manage the robust backend of a data exchange system. \ https://www.youtube.com/watch?v=HXV3zeQKqGY],
  )
]

== Quality Assurance and Technical Testing
Rigorous testing and adherence to standards ensure the final prototype is robust and maintainable.

=== Coding Standards
Students must apply good programming practices throughout the build. This focus on *dependability*, *efficiency*, and consistent *naming conventions* ensures the solution is professional and easy for others to understand [cite: 821].

#tip-box[
  *Example: Meaningful Naming*
  - *Poor*: `var a = data.get(1);`
  - *Professional*: `var userEmail = userRecord.getField("email");`
  Consistent naming reduces the "cognitive load" on anyone reading the code, making it significantly more *maintainable*.
]

=== Debugging Techniques
Before the final build, algorithmic steps are evaluated using *desk checks*. This computational thinking process allows students to predict outputs and identify logical errors early [cite: 845].

=== Refinement
The evaluation is continuous. Solutions are refined to improve their:
- *Accuracy*: Ensuring correct processing.
- *Reliability*: Ensuring stable performance.
- *Maintainability*: Ensuring code can be easily updated.
- *Usability*: Ensuring the system is user-friendly [cite: 850].


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_debugging.jpg", width: 80%),
  caption: [Systematic debugging is essential for creating high-quality data exchange prototypes.#footnote[Source: xkcd.com/1722]],
)

== Evaluating Impacts and Security
The final prototype is appraised not only for its technical function but for its broader impact on society and security.

=== Data Ownership and AI
Students evaluate the personal, social, and economic impacts of how data is owned, stored, and shared. This includes analyzing the effects of *artificial intelligence (AI)* on data exchange and the potential risks to individual privacy [cite: 847, 848].

#tip-box[
  *Margaret Hamilton* #index("Hamilton, Margaret") led the team that developed the on-board flight software for NASA's Apollo program. She coined the term "software engineering" to give her team's work the same respect as other engineering disciplines. Her focus on "Error Detection and Recovery" was critical to the success of the moon landing.#footnote[Source: NASA History Office. *Margaret Hamilton: The Girl Who Taught Computers to Talk*.]
]

=== Security Recommendations
Based on rigorous testing, students make justified recommendations regarding security. They must consider how the solution's *interactivity* affects data sharing and identify potential vulnerabilities that require further protection [cite: 851].

=== Success Criteria Appraisal
The evaluation concludes with an appraisal against the original *success criteria*. This determines the effectiveness of the prototype and whether it has successfully addressed the identified data exchange problem [cite: 849].

#figure(
  image("../images/usability_principles.jpg", width: 80%),
  caption: [Evaluating the final prototype against usability and security principles.],
)

== Revision Questions
1. Describe the role of *Data Collections* (like arrays and lists) in batch data exchange.
2. Provide the pseudocode logic for a simple *Caesar Cipher* shift.
3. Contrast the use of *JSON* and *XML* in modern web services.
4. Explain how *Desk Checks* help ensure the accuracy of exchange algorithms.
5. Evaluate the impact of *AI* on data privacy in a networked environment.
6. How are *Success Criteria* used to measure the effectiveness of a final prototype?

---
