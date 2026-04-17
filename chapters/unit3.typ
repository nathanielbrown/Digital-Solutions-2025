#import "../template.typ": *

= Unit 3: Digital innovation

== Chapter 8: Interactions Between Users, Data, and Digital Systems

*Aims and Objectives:*
- Explore the meaning and importance of innovation.
- Recognise components of web, mobile, interactive, and intelligent systems.
- Understand advanced data processes.

#key-info[
Innovation isn't just about inventing something entirely new; it often involves applying existing technologies in novel ways to solve problems more efficiently or open up new opportunities.
]

=== The Impact of Innovation
Emerging technologies like machine learning, neural networks, and natural language processing are driving a new wave of digital innovation. They transform how systems interact with data and users.

#historical[
The concept of artificial intelligence dates back to antiquity, but the field was formally founded at a conference at Dartmouth College in 1956. Early pioneers believed that a machine as intelligent as a human being would exist within a generation!
]

=== Revision Questions
1. Define 'innovation' in the context of digital solutions.
2. List three components of a web application architecture.
3. How might natural language processing improve human-computer interaction?

---

== Chapter 9: Real-world Problems and Solution Requirements

*Aims and Objectives:*
- Explore project management tools.
- Determine specific requirements and success criteria for digital solutions.
- Use modular programming.

#women-in-tech[
Radia Perlman is an American software designer and network engineer. She is most famous for her invention of the Spanning Tree Protocol (STP), which is fundamental to the operation of network bridges and keeps the internet running smoothly!
]

=== Revision Questions
1. Why are project management tools essential for software development?
2. Explain the concept of modularity in programming.
3. What is the difference between an input constraint and an environmental limitation?

---

== Chapter 10: Innovative Digital Solutions

*Aims and Objectives:*
- Generate user-interface prototypes.
- Develop conceptual models and generate program modules.
- Evaluate prototype solutions against success criteria.

#code-columns(
  "// Worked Example 1: Read File
// Read data from a text file.
BEGIN
  OPEN 'data.txt' FOR READING
  WHILE NOT END_OF_FILE
    READ line
    PRINT line
  ENDWHILE
  CLOSE 'data.txt'
END",
  "// Worked Example 1: Read File
const fs = require('fs');
fs.readFile('data.txt', 'utf8', (err, data) => {
  if (err) throw err;
  console.log(data);
});",
  "# Worked Example 1: Read File
with open('data.txt', 'r') as file:
    for line in file:
        print(line.strip())"
)

#code-columns(
  "// Worked Example 2: Write File
// Write data to a text file.
BEGIN
  OPEN 'output.txt' FOR WRITING
  WRITE 'Hello Innovation' TO FILE
  CLOSE 'output.txt'
END",
  "// Worked Example 2: Write File
const fs = require('fs');
fs.writeFile('output.txt', 'Hello Innovation', err => {
  if (err) throw err;
  console.log('Saved!');
});",
  "# Worked Example 2: Write File
with open('output.txt', 'w') as file:
    file.write('Hello Innovation')
    print('Saved!')"
)

#code-columns(
  "// Scaffolded Question 1: Append to File
// Complete the code to append data without overwriting.
BEGIN
  OPEN 'log.txt' FOR ______
  WRITE 'New Entry' TO FILE
  CLOSE 'log.txt'
END",
  "// Scaffolded Question 1: Append to File
const fs = require('fs');
fs.____('log.txt', 'New Entry', err => {
  // handle error
});",
  "# Scaffolded Question 1: Append to File
with open('log.txt', '____') as file:
    file.write('New Entry')"
)

#code-columns(
  "// Scaffolded Question 2: Simple Input Validation
// Ensure user age is above 0.
BEGIN
  READ age
  IF age ______ 0 THEN
    PRINT 'Valid'
  ELSE
    PRINT '______'
  ENDIF
END",
  "// Scaffolded Question 2: Simple Input Validation
function validateAge(age) {
  if (age ______ 0) {
    return 'Valid';
  } else {
    return '______';
  }
}",
  "# Scaffolded Question 2: Simple Input Validation
def validate_age(age):
    if age ______ 0:
        return 'Valid'
    else:
        return '______'"
)


#code-columns(
  "// Unscaffolded Question 1: Read CSV File
// Write an algorithm to read a CSV file line by line and split data by commas.
",
  "// Unscaffolded Question 1: Read CSV File
// Write a JavaScript function to read a CSV file.
",
  "# Unscaffolded Question 1: Read CSV File
# Write a Python function to read a CSV file using the csv module.
"
)

#code-columns(
  "// Unscaffolded Question 2: Search Array
// Write an algorithm that searches for a specific string in an array and returns its index.
",
  "// Unscaffolded Question 2: Search Array
// Write a JavaScript function to perform a linear search.
",
  "# Unscaffolded Question 2: Search Array
# Write a Python function to perform a linear search.
"
)


=== Evaluating Prototypes
Evaluation is not just checking if the code runs. It involves heuristic reviews of the interface against useability principles and desk-checking algorithmic steps.

=== Revision Questions
1. Describe two methods for evaluating a user interface prototype.
2. Explain what a 'system boundary' is in a conceptual model.
3. Why is it important to close a file after reading or writing to it in a program?
