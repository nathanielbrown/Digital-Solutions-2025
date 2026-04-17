#import "../template.typ": *

== Chapter 10: Innovative Digital Solutions

*Aims and Objectives:*
- Generate user-interface prototypes.
- Develop conceptual models and generate program modules.
- Evaluate prototype solutions against success criteria.

=== Evaluating Prototypes
Evaluation is not just checking if the code runs. It involves heuristic reviews of the interface against useability principles and desk-checking algorithmic steps.

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

=== Revision Questions
1. Describe two methods for evaluating a user interface prototype.
2. Explain what a 'system boundary' is in a conceptual model.
3. Why is it important to close a file after reading or writing to it in a program?
