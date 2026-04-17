#import "../template.typ": *

= Unit 1: Creating with code

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

#historical[
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

== Chapter 2: User Experiences and Interfaces

*Aims and Objectives:*
- Recognise the meaning and importance of user experience (UX).
- Understand useability principles including accessibility, effectiveness, safety, utility, and learnability.
- Explore the elements and principles of visual communication.

#key-info[
User Experience (UX) encompasses all aspects of the end-user's interaction with the company, its services, and its products. Good UX is invisible, while bad UX is immediately noticeable!
]

=== Introduction to UX
The user interface is the bridge between the human and the digital system. Designing effective interfaces requires careful consideration of the user's needs, capabilities, and the environment in which they operate.

#figure(
  image("../images/ui_vs_ux.png", width: 80%),
  caption: [A humorous take on UI vs UX.#footnote[Source: xkcd.com]]
)

For further insights on creating great user experiences, watch this video on the principles of UX design: https://www.youtube.com/watch?v=O94kYyzqcIQ

=== Revision Questions
1. Explain the difference between UI and UX.
2. List and define three useability principles.
3. How do visual communication principles enhance the learnability of an application?

---

== Chapter 3: Algorithms and Programming Techniques

*Aims and Objectives:*
- Recognise and describe programming syntax and rules.
- Understand that simple algorithms consist of input, process, and output.
- Develop algorithms using pseudocode.

=== Introduction to Algorithms
An algorithm is simply a step-by-step set of instructions used to solve a specific problem. Before we write code in a specific language, we often design the logic using pseudocode.

#historical[
Ada Lovelace is often considered the first computer programmer. In the 1840s, she wrote an algorithm intended to be executed by Charles Babbage's early mechanical general-purpose computer, the Analytical Engine.
]

#women-in-tech[
Margaret Hamilton was the Director of the Software Engineering Division of the MIT Instrumentation Laboratory, which developed on-board flight software for NASA's Apollo program. She coined the term \"software engineering\".
]

=== Revision Questions
1. What are the three fundamental stages of a simple algorithm?
2. Why is pseudocode useful when designing digital solutions?
3. Name the five basic features of programming.

---

== Chapter 4: Programmed Solutions

*Aims and Objectives:*
- Use a text-based language to apply operators and logic.
- Generate reusable coded components.
- Evaluate and refine programmed solutions.

=== Bringing It All Together
Once the logic is defined and the interface is designed, the final step in Unit 1 is implementing the programmed solution. This involves writing syntax-correct code, debugging, and testing.

=== Revision Questions
1. Differentiate between syntax errors and logic errors.
2. Explain the scope of a variable and the difference between local and global scope.
3. Why are consistent naming conventions important in programming?
