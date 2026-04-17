#import "../template.typ": *

= Unit 2: Application and data solutions

== Chapter 5: Data-driven Problems and Solution Requirements

*Aims and Objectives:*
- Understand the nature of data-driven problems.
- Recognise data types, constraints, and primary and foreign keys.
- Explore the social and economic impacts of data storage.

#key-info[
Data is raw, unorganised facts. Information is data that has been processed, organised, structured, or presented in a given context to make it useful. Wisdom is the application of this information to make decisions.
]

=== The Nature of Data-Driven Problems
In the modern world, data is being generated at an unprecedented rate. Managing this data—inserting, validating, structuring, and retrieving it—is the core of data-driven digital solutions.

#historical[
In 1970, Edgar F. Codd, a computer scientist at IBM, published a paper titled "A Relational Model of Data for Large Shared Data Banks". This paper laid the foundation for relational databases, which are still the dominant method of storing structured data today!
]

=== Modeling Data
Before writing any code or SQL queries, it is essential to model the data and its flow through a system. This is done using context diagrams and Data Flow Diagrams (DFDs).

=== Revision Questions
1. Differentiate between data, information, and wisdom.
2. What are the potential privacy impacts of storing user data in a cloud database?
3. Define the purpose of a primary key in a relational database.

---

== Chapter 6: Data and Programming Techniques

*Aims and Objectives:*
- Understand relational database structures and normalisation.
- Differentiate between data validation and verification.
- Develop algorithms for data processing.

=== Database Structures and Normalisation
Normalisation is the process of organising data in a database to reduce redundancy and improve data integrity. The syllabus requires understanding up to Third Normal Form (3NF).

#women-in-tech[
Dr. Karen Spärck Jones was a pioneering British computer scientist whose work in the 1970s introduced the concept of Inverse Document Frequency (IDF). Her work is foundational to the search engines we use every day to query massive databases!
]

=== Revision Questions
1. Explain the difference between data validation and data verification.
2. Describe the conditions required for a database table to be in Third Normal Form (3NF).
3. Why is reducing data redundancy important?

---

== Chapter 7: Prototype Data Solutions

*Aims and Objectives:*
- Use SQL to retrieve and modify data.
- Generate and test prototype data solutions.

=== Introduction to SQL
Structured Query Language (SQL) is the standard language for dealing with Relational Databases.

#figure(
  image("../images/bobby_tables.png", width: 90%),
  caption: [Always sanitize your database inputs!#footnote[Source: xkcd.com/327]]
)

#code-columns(
  "// Worked Example 1: Retrieve Users
// Retrieve all active users.
BEGIN
  QUERY database:
  SELECT first_name, last_name
  FROM users
  WHERE status = 'active'
END",
  "// Worked Example 1: Retrieve Users
const sql = `
  SELECT first_name, last_name
  FROM users
  WHERE status = 'active'
`;
db.query(sql, (err, results) => {
  console.log(results);
});",
  "# Worked Example 1: Retrieve Users
sql = '''
  SELECT first_name, last_name
  FROM users
  WHERE status = 'active'
'''
cursor.execute(sql)
results = cursor.fetchall()
print(results)"
)

#code-columns(
  "// Worked Example 2: Update Record
// Update user email.
BEGIN
  QUERY database:
  UPDATE users
  SET email = 'new@email.com'
  WHERE user_id = 5
END",
  "// Worked Example 2: Update Record
const sql = `
  UPDATE users
  SET email = 'new@email.com'
  WHERE user_id = 5
`;
db.query(sql, (err, result) => {
  console.log('Record updated');
});",
  "# Worked Example 2: Update Record
sql = '''
  UPDATE users
  SET email = 'new@email.com'
  WHERE user_id = 5
'''
cursor.execute(sql)
db.commit()
print('Record updated')"
)

#code-columns(
  "// Scaffolded Question 1: Insert Data
// Complete the query to add a new product.
BEGIN
  QUERY database:
  INSERT INTO products (name, price)
  VALUES (______, ______)
END",
  "// Scaffolded Question 1: Insert Data
const sql = `
  INSERT INTO products (name, price)
  VALUES (______, ______)
`;",
  "# Scaffolded Question 1: Insert Data
sql = '''
  INSERT INTO products (name, price)
  VALUES (______, ______)
'''"
)

#code-columns(
  "// Scaffolded Question 2: Delete Data
// Complete the query to delete old records.
BEGIN
  QUERY database:
  DELETE FROM logs
  WHERE date < ______
END",
  "// Scaffolded Question 2: Delete Data
const sql = `
  DELETE FROM logs
  WHERE date < ______
`;",
  "# Scaffolded Question 2: Delete Data
sql = '''
  DELETE FROM logs
  WHERE date < ______
'''"
)

#code-columns(
  "// Unscaffolded Question 1: Count Records
// Write a query to count the number of orders placed by customer ID 10.
",
  "// Unscaffolded Question 1: Count Records
// Write a JavaScript function to execute this query.
",
  "# Unscaffolded Question 1: Count Records
# Write a Python function to execute this query.
"
)

#code-columns(
  "// Unscaffolded Question 2: Join Tables
// Write a query to select the order ID and customer name by joining the 'orders' and 'customers' tables.
",
  "// Unscaffolded Question 2: Join Tables
// Write a JavaScript function to execute this query.
",
  "# Unscaffolded Question 2: Join Tables
# Write a Python function to execute this query.
"
)

=== Revision Questions
1. Write an SQL statement to create a table named `Students` with columns for `ID`, `Name`, and `Grade`.
2. What is the purpose of the `GROUP BY` clause in SQL? Provide an example.
3. How does SQL injection occur, and how can a developer prevent it in their application code?
