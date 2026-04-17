#import "../template.typ": *

== Chapter 4: Programmed Solutions


*Aims and Objectives:*
- Use a text-based language to apply operators and logic.
- Generate reusable coded components.
- Evaluate and refine programmed solutions.

=== Bringing It All Together
Once the logic is defined and the interface is designed, the final step in Unit 1 is implementing the programmed solution. This involves writing syntax-correct code, debugging, and testing.

#code-columns(
  "// Worked Example 1: Calculate Area
BEGIN
  READ length
  READ width
  area = length * width
  PRINT area
END",
  "// Worked Example 1: Calculate Area
function calculateArea(length, width) {
  let area = length * width;
  console.log(area);
}",
  "# Worked Example 1: Calculate Area
def calculate_area(length, width):
    area = length * width
    print(area)"
)

#code-columns(
  "// Worked Example 2: Check Temperature
BEGIN
  READ temp
  IF temp > 30 THEN
    PRINT 'Hot'
  ELSE
    PRINT 'Cold'
  ENDIF
END",
  "// Worked Example 2: Check Temperature
function checkTemp(temp) {
  if (temp > 30) {
    console.log('Hot');
  } else {
    console.log('Cold');
  }
}",
  "# Worked Example 2: Check Temperature
def check_temp(temp):
    if temp > 30:
        print('Hot')
    else:
        print('Cold')"
)

#code-columns(
  "// Scaffolded Question 1: Check Age
BEGIN
  READ age
  IF age >= ______ THEN
    PRINT 'Adult'
  ELSE
    PRINT '______'
  ENDIF
END",
  "// Scaffolded Question 1: Check Age
function checkAge(age) {
  if (age >= ______) {
    console.log('Adult');
  } else {
    console.log('______');
  }
}",
  "# Scaffolded Question 1: Check Age
def check_age(age):
    if age >= ______:
        print('Adult')
    else:
        print('______')"
)

#code-columns(
  "// Scaffolded Question 2: Calculate Discount
BEGIN
  READ price
  discount = price * ______
  final_price = price - discount
  PRINT ______
END",
  "// Scaffolded Question 2: Calculate Discount
function calculateDiscount(price) {
  let discount = price * ______;
  let finalPrice = price - discount;
  console.log(______);
}",
  "# Scaffolded Question 2: Calculate Discount
def calculate_discount(price):
    discount = price * ______
    final_price = price - discount
    print(______)"
)

#code-columns(
  "// Unscaffolded Question 1: Factorial
// Write an algorithm to compute the factorial of a number.
",
  "// Unscaffolded Question 1: Factorial
// Write a JavaScript function for factorial.
",
  "# Unscaffolded Question 1: Factorial
# Write a Python function for factorial.
"
)

#code-columns(
  "// Unscaffolded Question 2: Fibonacci
// Write an algorithm to print the first N Fibonacci numbers.
",
  "// Unscaffolded Question 2: Fibonacci
// Write a JavaScript function for Fibonacci.
",
  "# Unscaffolded Question 2: Fibonacci
# Write a Python function for Fibonacci.
"
)

=== Revision Questions
1. Differentiate between syntax errors and logic errors.
2. Explain the scope of a variable and the difference between local and global scope.
3. Why are consistent naming conventions important in programming?
