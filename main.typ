#import "@preview/bookly:3.0.0": *
#import "@preview/in-dexter:0.7.2": *
#import "utils.typ": *

#show: bookly.with(
  title: "Digital Solutions 2025",
  author: "Nathaniel Brown & Google AI (Gemini)",
  theme: modern,
  colors: (primary: blue),
  title-page: book-title-page(
    subtitle: "Creating and Innovating in the Digital Age",
    edition: "First Edition",
    institution: "Creating and Innovating in the Digital Age",
    series: "Senior Secondary Technology",
    cover: image("images/cover.jpg", width: 80%),
    logo: image("images/logo.jpg", width: 30%),
  ),
)

#show: main-matter

#tableofcontents

#part("Unit 1: Creating With Code")
#include "chapters/chapter1.typ"
#include "chapters/chapter2.typ"
#include "chapters/chapter3.typ"
#include "chapters/chapter4.typ"

#part(" Unit 2: Application and Data Solutions")
#include "chapters/chapter5.typ"
#include "chapters/chapter6.typ"
#include "chapters/chapter7.typ"

#part(" Unit 3: Digital Innovation")
#include "chapters/chapter8.typ"
#include "chapters/chapter9.typ"
#include "chapters/chapter10.typ"

#part(" Unit 4: Digital Impacts")
#include "chapters/chapter11.typ"
#include "chapters/chapter12.typ"
#include "chapters/chapter13.typ"

= Glossary
#v(1em)

*#link(<ch:1>)[Abstraction]*: Filtering out unnecessary details to focus on the essential characteristics of a problem. \
*#link(<ch:2>)[Accessibility]*: Ensuring a system can be used by people with the widest range of capabilities, regardless of disability. \
*#link(<ch:3>)[Algorithm]*: A step-by-step set of operations to be performed to solve a specific problem. \
*#link(<ch:3>)[Asymmetric Encryption]*: A type of encryption that uses two different but mathematically related keys: a public key and a private key. \
*#link(<ch:3>)[Caesar Cipher]*: A basic substitution cipher where each letter in the plaintext is shifted a certain number of places down the alphabet. \
*#link(<ch:1>)[Computational Thinking]*: A problem-solving methodology involving decomposition, abstraction, pattern recognition, and algorithm design. \
*#link(<ch:1>)[Constraints]*: External factors that limit the design or development of a solution (e.g., technical, economic, legal). \
*#link(<ch:5>)[Data Flow Diagram (DFD)]*: A visual representation of the flow of data through an information system using Gane-Sarson notation. \
*#link(<ch:1>)[Decomposition]*: Breaking down a complex problem or system into smaller, more manageable sub-problems. \
*#link(<ch:6>)[DIKW Hierarchy]*: The conceptual model representing the transition from raw Data to Information, Knowledge, and finally Wisdom. \
*#link(<ch:2>)[Effectiveness]*: A usability principle measuring how accurately and completely users can achieve their goals. \
*#link(<ch:1>)[Functional Requirements]*: Statements describing what a system "shall" do in terms of its features and functions. \
*#link(<ch:3>)[Hashing]*: The process of transforming data into a fixed-length unique fingerprint, often used for secure password storage. \
*#link(<ch:2>)[Heuristic Review]*: An evaluation method where an interface is tested against established usability principles. \
*#link(<ch:8>)[Innovation]*: The practical implementation of ideas that result in new or improved goods, services, or processes. \
*#link(<ch:1>)[IPO Model]*: The "Input-Process-Output" framework used to describe the basic functional structure of a digital system. \
*#link(<ch:13>)[JSON (JavaScript Object Notation)]*: A lightweight, text-based data-interchange format that is easy for humans and machines to read. \
*#link(<ch:2>)[Learnability]*: How easily users can accomplish basic tasks the first time they encounter a design. \
*#link(<ch:1>)[Limitations]*: Inherent boundaries of a chosen technology, such as range, battery life, or processing speed. \
*#link(<ch:4>)[Modularisation]*: The practice of breaking a program into independent, reusable units like functions and procedures. \
*#link(<ch:6>)[Normalisation]*: The process of structuring a relational database to reduce redundancy and reach Third Normal Form (3NF). \
*#link(<ch:5>)[Primary Key]*: A unique identifier for every record within a relational database table. \
*#link(<ch:3>)[Pseudocode]*: A formal, language-independent method of describing algorithmic logic using structured keywords. \
*#link(<ch:1>)[Scope]*: A clearly defined boundary of what a digital solution will and will not do. \
*#link(<ch:6>)[SQL (Structured Query Language)]*: The standard domain-specific language used for managing and querying relational databases. \
*#link(<ch:1>)[Success Criteria]*: Measurable (SMART) standards used to evaluate whether a final prototype has solved the identified problem. \
*#link(<ch:3>)[Symmetric Encryption]*: A type of encryption where the same secret key is used for both encryption and decryption. \
*#link(<ch:2>)[User Experience (UX)]*: The holistic view of a person's emotions, attitudes, and satisfaction when interacting with a digital product. \
*#link(<ch:2>)[Wireframe]*: A low-fidelity visual representation of a user interface, serving as a blueprint for layout and navigation. \
*#link(<ch:13>)[XML (eXtensible Markup Language)]*: A hierarchical, tag-based markup language used for encoding and exchanging data between systems.

= Index
#v(1em)

#make-index()
