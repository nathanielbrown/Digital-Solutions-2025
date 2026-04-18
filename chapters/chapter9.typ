#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Real-world Problems and Solution Requirements", label: <ch:9>)


*Aims and Objectives:*
- Break down complex problems to identify development areas.
- Define functional and non-functional requirements and success criteria.
- Utilize project management and development tools effectively.
- Analyze system interactions and data structure appropriateness.
- Apply computational thinking to algorithmic design.
- Develop and present a comprehensive technical proposal.

== Problem Analysis and Scoping
Every great digital solution starts with a clear understanding of the problem it aims to solve.

=== Breaking Down the Problem
Complex problems are often overwhelming. Students must break them down to identify manageable aspects and specific areas for development. This process of decomposition ensures that no critical component is overlooked [cite: 651, 652].

=== Scope, Constraints, and Limitations
Defining the *scope* (what the solution will and won't do) is essential. Alongside this, students must identify:
- *#idx("Constraints")*: Fixed requirements (e.g., must run on Android).
- *#idx("Limitations")*: Factors that restrict the solution (e.g., bandwidth or storage capacity) [cite: 653, 654].

=== Requirements and Success Criteria
A project's success is measured against its requirements:
- *#idx("Functional Requirements")*: What the system *must do* (e.g., process a payment).
- *#idx("Non-functional Requirements")*: How the system *must perform* (e.g., load in under 2 seconds) [cite: 655, 1277].
- *#idx("Success Criteria")*: Specific metrics used to measure the quality, appropriateness, and effectiveness of the final solution [cite: 656, 1282].

#info-box[
  *Example: Smart Canteen App*
  - *Functional*: The app must allow students to order food and pay using their school ID card.
  - *Non-functional*: The system must support up to 500 concurrent users during the lunch rush without crashing.
  - *Success Criteria*: 95% of users report that they can complete an order in under 60 seconds.
]

=== Stakeholders and Policies
Identifying relevant *stakeholders* (users, owners, regulators) is critical. Projects must also consider existing standards or policies (e.g., data privacy laws) that influence development [cite: 1278, 1279].

== Project Management and Development Tools
Managing the development lifecycle requires the right tools and a structured approach to collaboration.

=== Programming Development Tools
To create effective solutions, developers must utilize programming development tools (like IDEs and debuggers) proficiently. These tools ensure that code is written, tested, and refined efficiently [cite: 648].

=== Managing the Project
Project management tools (like Gantt charts or Kanban boards) are used to track:
- *Tasks & Milestones*: What needs to be done and by when.
- *Dependencies*: Which tasks must be completed before others can begin.
- *Resources*: The people and technology required for each stage [cite: 649].


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=q6S-77oI4H0")[#image("../images/yt_ct.jpg", width: 100%)],
    [*Video*: What is Computational Thinking? -- The core of digital problem solving. \ https://www.youtube.com/watch?v=q6S-77oI4H0],
  )
]


#pagebreak(weak: true)
#figure(
  image("../images/project_management_kanban.jpg", width: 80%),
  caption: [Using Kanban boards to visualize and manage project tasks effectively.],
)

=== Evaluating Ideas
Effective project management involves constant evaluation. Through innovation and collaboration, teams can assess potential ideas to find the most effective approach for the given problem [cite: 660].


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_workflow.jpg", width: 80%),
  caption: [A well-defined workflow is the backbone of successful development!#footnote[Source: xkcd.com/1172]],
)

== System Interactions and Data Structures
Understanding how data moves through a system and how it is stored is fundamental to technical planning.

=== Input, Process, Output (IPO)
System interactions are described in terms of the *#idx("IPO model")*:
- *Inputs*: The raw data or user commands entering the system.
- *Processes*: The algorithmic steps that transform or validate the data.
- *Outputs*: The final results or displays presented to the user [cite: 657].

#proof-box[
  *Example: Smart Thermostat IPO*
  - *Input*: Current ambient temperature sensor (22°C) and user setpoint (24°C).
  - *Process*: Compare current temp with setpoint. If current < setpoint, activate the heating relay.
  - *Output*: Digital display shows "Heating Active" and sends a signal to the furnace.
]

=== Human-System Interaction
Interaction styles vary based on technology:
- *Machine-Human*: Automated responses like chatbots or diagnostic notifications.
- *Human-Machine*: User-driven inputs such as voice commands or physical gestures [cite: 658].

=== Data Structures and Sources
Students must choose the most appropriate way to store data. This involves comparing:
- *Flat-file Structures*: Simple data storage (e.g., a single CSV file).
- *Relational Databases*: Complex, linked tables (e.g., SQL databases) [cite: 659].

Furthermore, different *file formats* (like JSON vs. XML) and *data structures* (like arrays vs. dictionaries) are evaluated to determine their suitability for the project context [cite: 661, 662].


#pagebreak(weak: true)
#figure(
  image("../images/ipo_model.jpg", width: 80%),
  caption: [The IPO model provides a simple yet powerful framework for system analysis.],
)

== Algorithmic Design and Computational Thinking
Computational thinking is the cognitive process used to formulate problems and their solutions.

=== The Thinking Process
Students apply core computational thinking processes to identify possible algorithmic approaches:
- *Creating*: Developing new logic from scratch.
- *#idx("Debugging")*: Systematically identifying and fixing errors.
- *Persevering*: Working through complex logical challenges.
- *Collaborating*: Sharing ideas and code to improve the final solution [cite: 677].

#tip-box[
  *Computational Thinking in Practice: The Infinite Loop*
  A student discovers their "Average Grade" calculator never stops running.
  - *Debugging*: They add `print` statements to see the value of the loop counter.
  - *Persevering*: They realize the condition `while i > 0` is always true because `i` is never decremented.
  - *Creating*: They add `i = i - 1` to fix the logic.
]

=== Basic Constructs
Algorithm implementation utilizes fundamental building blocks:
- *Assignment*: Storing values.
- *Sequence*: Linear execution of steps.
- *Selection & Condition*: decision-making logic.
- *Iteration*: Repeating tasks (loops).
- *Modularisation*: Dividing the program into small, manageable modules [cite: 665].

=== Drafting and Documentation
Well-ordered and unambiguous algorithms are drafted using *pseudocode*. This ensures that data validation and presentation logic are planned before coding begins [cite: 672, 674]. High modularity and readability are maintained by using language-correct *comment syntax* to explain the purpose of each module [cite: 663, 675].


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=qfckDdsEIq8")[#image("../images/yt_pseudocode.jpg", width: 100%)],
    [*Video*: Pseudocode Explained -- Using pseudocode to map out logic before implementation. \ https://www.youtube.com/watch?v=qfckDdsEIq8],
  )
]

#tip-box[
  *Radia Perlman* #index("Perlman, Radia") is an American software designer and network engineer. She is most famous for her invention of the Spanning Tree Protocol (STP), which is fundamental to the operation of network bridges and keeps the internet running smoothly!#footnote[Source: Perlman, R. (1985). *An algorithm for distributed computation of a spanning tree in an extended LAN*. ACM SIGCOMM Computer Communication Review, 15(4), 44–53.]
]

=== The Technical Proposal
The final stage of the planning phase is communicating the proposed solution to stakeholders.

=== Styles of Presentation
Students observe and compare different styles of presenting technical information. A proposal for a technical audience will differ significantly from one intended for a business manager or end-user [cite: 680].

=== Tailoring the Message
The final technical proposal is communicated through a presentation tailored to a specific audience. This requires:
- *Appropriate Language*: Using digital technology-specific terms correctly.
- *Referencing*: Following conventions to cite sources and research.
- *Mode-appropriate Features*: Using the right medium (e.g., slide deck, formal report) [cite: 681, 686, 682, 683].

=== Visual Communication in Proposals
Visuals are used to clarify complex information about the problem and the programmed components. This includes:
- *Sketches & Wireframes*: Visualizing the user interface.
- *Diagrams*: Representing the data flow or system architecture [cite: 684, 685].

#figure(
  image("../images/visual_comm.jpg", width: 80%),
  caption: [Using visual communication to clarify technical proposals.],
)

== Revision Questions
1. Differentiate between *Functional* and *Non-functional* requirements.
2. How do *success criteria* help in the final evaluation of a digital solution?
3. Contrast *relational databases* with *flat-file structures*. Which is better for a complex system with linked data?
4. Identify the four core processes of *Computational Thinking*.
5. Why is it important to tailor a *technical proposal* to a specific audience?
6. Explain the role of *modularisation* in making an algorithm readable and maintainable.

---
