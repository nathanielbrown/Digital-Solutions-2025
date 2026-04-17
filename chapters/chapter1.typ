#import "../template.typ": *

== Chapter 1: Understanding Digital Problems


*Aims and Objectives:*
- Understand methods of breaking down problems into parts using computational thinking.
- Analyse the personal, social, and economic impacts of digital problems.
- Explore existing and emerging solutions.
- Determine the scope, constraints, and requirements of a problem.

#key-info[
Digital problems arise when there is a human need, want, or opportunity that requires a new or re-imagined digital solution. Understanding the problem is the most critical step in software development!
]

=== Introduction to Digital Problems
Every piece of software, application, or system was designed to solve a problem.

#quote("The computer was born to solve problems that did not exist before.", author: "Bill Gates") Whether it is a simple mobile app to track your daily steps or a complex machine learning algorithm for medical diagnosis, understanding the core problem is paramount.

#historical(source: "General History")[
The first computer bug was an actual bug! In 1947, Grace Hopper and her team found a moth trapped in a relay of the Harvard Mark II computer. They taped it into the logbook, noting it as the first actual case of "bug" being found.
]

#women-in-tech[
Grace Hopper was an American computer scientist and US Navy rear admiral. She was one of the first programmers of the Harvard Mark I computer and a pioneer of computer programming who invented one of the first linkers. She popularised the idea of machine-independent programming languages, which led to the development of COBOL.
]

=== Breaking Down Problems
Computational thinking involves breaking down a large, complex problem into smaller, more manageable parts. This process is called *decomposition*.

Let's look at an example. If we want to build a system to calculate student grades, we might break it down into:
1. Input: Reading student marks.
2. Process: Calculating the average and determining the grade.
3. Output: Displaying the results.

#code-columns(
  "// Worked Example 1: Grade Calculation
BEGIN
  READ marks[]
  sum = 0
  FOR EACH mark IN marks:
    sum = sum + mark
  ENDFOR
  average = sum / LENGTH(marks)
  IF average >= 50 THEN
    PRINT 'Pass'
  ELSE
    PRINT 'Fail'
  ENDIF
END",
  "// Worked Example 1: Grade Calculation
function calculateGrade(marks) {
  let sum = 0;
  for (let mark of marks) {
    sum += mark;
  }
  let average = sum / marks.length;
  if (average >= 50) {
    console.log('Pass');
  } else {
    console.log('Fail');
  }
}",
  "# Worked Example 1: Grade Calculation
def calculate_grade(marks):
    total_sum = sum(marks)
    average = total_sum / len(marks)

    if average >= 50:
        print('Pass')
    else:
        print('Fail')"
)

#code-columns(
  "// Worked Example 2: Checking Even or Odd
BEGIN
  READ number
  IF number MOD 2 == 0 THEN
    PRINT 'Even'
  ELSE
    PRINT 'Odd'
  ENDIF
END",
  "// Worked Example 2: Checking Even or Odd
function checkEvenOdd(number) {
  if (number % 2 === 0) {
    console.log('Even');
  } else {
    console.log('Odd');
  }
}",
  "# Worked Example 2: Checking Even or Odd
def check_even_odd(number):
    if number % 2 == 0:
        print('Even')
    else:
        print('Odd')"
)

#code-columns(
  "// Scaffolded Question 1: Find Maximum
// Complete the loop to find the max value.
BEGIN
  READ values[]
  max = values[0]
  FOR i = 1 TO LENGTH(values) - 1
    IF ______ THEN
      ______
    ENDIF
  ENDFOR
  PRINT max
END",
  "// Scaffolded Question 1: Find Maximum
// Complete the loop to find the max value.
function findMax(values) {
  let max = values[0];
  for (let i = 1; i < values.length; i++) {
    if (______) {
      ______
    }
  }
  console.log(max);
}",
  "# Scaffolded Question 1: Find Maximum
# Complete the loop to find the max value.
def find_max(values):
    max_val = values[0]
    for i in range(1, len(values)):
        if ______:
            ______
    print(max_val)"
)

#code-columns(
  "// Scaffolded Question 2: Sum of Evens
// Complete the logic to sum only even numbers.
BEGIN
  READ numbers[]
  sum = 0
  FOR EACH num IN numbers:
    IF ______ THEN
      sum = ______
    ENDIF
  ENDFOR
  PRINT sum
END",
  "// Scaffolded Question 2: Sum of Evens
// Complete the logic to sum only even numbers.
function sumEvens(numbers) {
  let sum = 0;
  for (let num of numbers) {
    if (______) {
      sum = ______
    }
  }
  console.log(sum);
}",
  "# Scaffolded Question 2: Sum of Evens
# Complete the logic to sum only even numbers.
def sum_evens(numbers):
    total = 0
    for num in numbers:
        if ______:
            total = ______
    print(total)"
)

#code-columns(
  "// Unscaffolded Question 1: Count Vowels
// Write an algorithm to count the number of vowels in a string.
",
  "// Unscaffolded Question 1: Count Vowels
// Write a function to count the number of vowels in a string.
",
  "# Unscaffolded Question 1: Count Vowels
# Write a function to count the number of vowels in a string.
"
)

#code-columns(
  "// Unscaffolded Question 2: Reverse Array
// Write an algorithm to reverse an array without using built-in methods.
",
  "// Unscaffolded Question 2: Reverse Array
// Write a function to reverse an array without using built-in methods.
",
  "# Unscaffolded Question 2: Reverse Array
# Write a function to reverse a list without using built-in methods.
"
)


=== Revision Questions
1. Define computational thinking and explain the process of decomposition.
2. Provide an example of a digital problem in your local community and discuss its social impact.
3. What is the significance of understanding the scope and constraints before writing code?

---
