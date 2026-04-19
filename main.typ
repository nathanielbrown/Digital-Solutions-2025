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
*#link(<ch:9>)[Agile]*: An iterative approach to software development that emphasizes flexibility, collaboration, and rapid delivery of functional components. \
*#link(<ch:3>)[Algorithm]*: A step-by-step set of operations to be performed to solve a specific problem. \
*#link(<ch:11>)[Anonymization]*: The process of removing personally identifiable information from data sets so that the people whom the data describe remain anonymous. \
*#link(<ch:3>)[Assignment]*: The process of storing a value in a variable. \
*#link(<ch:3>)[Asymmetric Encryption]*: A type of encryption that uses two different but mathematically related keys: a public key and a private key. \
*#link(<ch:11>)[Availability]*: Ensuring that authorized users have reliable and timely access to information and computing resources. \
*#link(<ch:3>)[Caesar Cipher]*: A basic substitution cipher where each letter in the plaintext is shifted a certain number of places down the alphabet. \
*#link(<ch:11>)[CIA Triad]*: A model designed to guide policies for information security within an organization (Confidentiality, Integrity, and Availability). \
*#link(<ch:1>)[Computational Thinking]*: A problem-solving methodology involving decomposition, abstraction, pattern recognition, and algorithm design. \
*#link(<ch:11>)[Confidentiality]*: Ensuring that information is accessible only to those authorized to have access. \
*#link(<ch:1>)[Constraints]*: External factors that limit the design or development of a solution (e.g., technical, economic, legal). \
*#link(<ch:7>)[CRUD]*: The four basic operations of persistent storage: Create, Retrieve, Update, and Delete. \
*#link(<ch:5>)[Data Flow Diagram (DFD)]*: A visual representation of the flow of data through an information system using Gane-Sarson notation. \
*#link(<ch:6>)[Data Integrity]*: The assurance that digital information is uncorrupted and can only be accessed or modified by those authorized to do so. \
*#link(<ch:1>)[Decomposition]*: Breaking down a complex problem or system into smaller, more manageable sub-problems. \
*#link(<ch:6>)[DIKW Hierarchy]*: The conceptual model representing the transition from raw Data to Information, Knowledge, and finally Wisdom. \
*#link(<ch:2>)[Effectiveness]*: A usability principle measuring how accurately and completely users can achieve their goals. \
*#link(<ch:5>)[Foreign Key]*: A field in one database table that uniquely identifies a row of another table. \
*#link(<ch:1>)[Functional Requirements]*: Statements describing what a system "shall" do in terms of its features and functions. \
*#link(<ch:9>)[Gantt Chart]*: A type of bar chart that illustrates a project schedule, showing the dependency relationships between activities. \
*#link(<ch:3>)[Hashing]*: The process of transforming data into a fixed-length unique fingerprint, often used for secure password storage. \
*#link(<ch:2>)[Heuristic Review]*: An evaluation method where an interface is tested against established usability principles. \
*#link(<ch:8>)[Innovation]*: The practical implementation of ideas that result in new or improved goods, services, or processes. \
*#link(<ch:11>)[Integrity]*: Maintaining and assuring the accuracy and completeness of data over its entire lifecycle. \
*#link(<ch:1>)[IPO Model]*: The "Input-Process-Output" framework used to describe the basic functional structure of a digital system. \
*#link(<ch:3>)[Iteration]*: The repetition of a process or set of instructions (loops). \
*#link(<ch:12>)[Jitter]*: The variation in the time between data packets arriving, caused by network congestion or route changes. \
*#link(<ch:13>)[JSON (JavaScript Object Notation)]*: A lightweight, text-based data-interchange format that is easy for humans and machines to read. \
*#link(<ch:12>)[Latency]*: The time delay between a cause and the effect of some physical change in the system being observed. \
*#link(<ch:2>)[Learnability]*: How easily users can accomplish basic tasks the first time they encounter a design. \
*#link(<ch:1>)[Limitations]*: Inherent boundaries of a chosen technology, such as range, battery life, or processing speed. \
*#link(<ch:8>)[Machine Learning]*: A field of AI that uses algorithms to find patterns in data and make predictions. \
*#link(<ch:4>)[Modularisation]*: The practice of breaking a program into independent, reusable units like functions and procedures. \
*#link(<ch:8>)[Neural Networks]*: Computational models inspired by the human brain that are used to find complex patterns in data. \
*#link(<ch:1>)[Non-Functional Requirements]*: Standards used to judge the operation of a system rather than specific behaviors (e.g., performance, security). \
*#link(<ch:6>)[Normalisation]*: The process of structuring a relational database to reduce redundancy and reach Third Normal Form (3NF). \
*#link(<ch:12>)[OSI Model]*: A conceptual framework used to understand the interactions in a network (7 layers). \
*#link(<ch:1>)[Pattern Recognition]*: Identifying similarities or trends within problems to simplify solution design. \
*#link(<ch:5>)[Primary Key]*: A unique identifier for every record within a relational database table. \
*#link(<ch:3>)[Pseudocode]*: A formal, language-independent method of describing algorithmic logic using structured keywords. \
*#link(<ch:13>)[REST]*: Representational State Transfer; an architectural style for providing standards between computer systems on the web. \
*#link(<ch:2>)[Safety]*: A usability principle focused on protecting users from dangerous conditions and unintended actions. \
*#link(<ch:1>)[Scope]*: A clearly defined boundary of what a digital solution will and will not do. \
*#link(<ch:3>)[Selection]*: A programming construct where a decision is made based on a condition (IF-THEN-ELSE). \
*#link(<ch:3>)[Sequence]*: The specific order in which instructions are executed in an algorithm. \
*#link(<ch:6>)[SQL (Structured Query Language)]*: The standard domain-specific language used for managing and querying relational databases. \
*#link(<ch:1>)[Success Criteria]*: Measurable (SMART) standards used to evaluate whether a final prototype has solved the identified problem. \
*#link(<ch:3>)[Symmetric Encryption]*: A type of encryption where the same secret key is used for both encryption and decryption. \
*#link(<ch:12>)[TCP/IP]*: Transmission Control Protocol/Internet Protocol; the basic communication language or protocol of the internet. \
*#link(<ch:2>)[User Experience (UX)]*: The holistic view of a person's emotions, attitudes, and satisfaction when interacting with a digital product. \
*#link(<ch:2>)[Utility]*: A usability principle measuring whether the system provides the functions needed by the user. \
*#link(<ch:2>)[Wireframe]*: A low-fidelity visual representation of a user interface, serving as a blueprint for layout and navigation. \
*#link(<ch:13>)[XML (eXtensible Markup Language)]*: A hierarchical, tag-based markup language used for encoding and exchanging data between systems.

= Index
#v(1em)

#make-index()
