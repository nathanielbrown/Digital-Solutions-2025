#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Understanding Digital Problems", label: <ch:1>)

*Aims and Objectives:*
- Master the four pillars of computational thinking: decomposition, abstraction, pattern recognition, and algorithm design.
- Critically identify and distinguish between human needs, wants, and creative opportunities in diverse modern contexts.
- Analyse solution environments by defining scope, identifying multi-dimensional constraints, and setting measurable success criteria.
- Evaluate the social, personal, and economic impacts of digital solutions, including emerging technology trends.
- Demonstrate professional communication through technical documentation, visual schematic models, and ethical scholarship.

#important-box[
  Digital problems are defined as situations where a human need, want, or opportunity can be addressed through a new or re-imagined digital solution. The first and most critical step in the problem-solving process is not coding, but deeply understanding the problem's constituents and the environment in which it exists.
]

== Computational Thinking and Thinking Tools

Computational thinking is a problem-solving methodology that allows us to take a complex problem, understand what the problem is, and develop possible solutions. These solutions can then be presented in a way that either a computer, a human, or both, can understand.

=== The Four Pillars of Computational Thinking
To solve digital problems effectively, developers apply four key techniques:
1. *Decomposition*: The process of breaking a complex problem down into smaller, more manageable sub-problems. For example, building a mobile game can be decomposed into physics engines, user interface design, asset management, and networking.
2. *#idx("Abstraction")*: Filtering out unnecessary details to focus on the essential characteristics of a problem. In a mapping app, abstraction involves showing roads and landmarks while hiding individual trees or blade of grass.
3. *#idx("Pattern Recognition")*: Looking for similarities or trends within problems. If we notice that many users struggle with a specific menu, we recognize a pattern that suggests a UI redesign is needed.
4. *#idx("Algorithm Design")*: Developing a step-by-step strategy or set of rules to solve the problem. This is the blueprint for the code that will eventually be written.

#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=qbnTZCj0ugI")[#image("../images/yt_ct.jpg", width: 100%)],
    [*Video*: Computational Thinking: What Is It? How Is It Used? -- A clear breakdown of the four pillars. \ https://www.youtube.com/watch?v=qbnTZCj0ugI],
  )
]

=== Methods of Decomposition
Decomposition is not just about splitting tasks; it is about strategic analysis. Strategies include:
- *Top-Down Design*: Starting with the overall purpose of the system and repeatedly breaking it into smaller functional modules.
- *Data-Oriented Decomposition*: Focusing on how data is transformed as it moves through the system, breaking the problem down based on data inputs, storage requirements, and outputs.


#pagebreak(weak: true)
#figure(
  image("../images/decomposition_diagram.jpg", width: 60%),
  caption: [A decomposition diagram breaking a complex digital solution into functional modules.#footnote[Source: Gemini]],
)

=== Thinking Tools for Analysis
Visualisation tools are essential for exploring problem structures and communicating ideas between stakeholders.
- *Mind Maps*: A non-linear way of brainstorming that helps identify the various dimensions of a problem and the potential interconnections between different requirements.
- *Flowcharts*: A formal schematic model used to represent the logical flow of an algorithm or process, using standardized symbols (rectangles for processes, diamonds for decisions).
- *Concept Maps*: Focused on identifying the "logical relationships" between entities, such as how a database table for 'Users' relates to a table for 'Orders'.


#pagebreak(weak: true)
#figure(
  image("../images/mind_map_example.jpg", width: 60%),
  caption: [An example mind map used for problem analysis in a grade calculator project.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#figure(
  image("../images/flowchart_login.jpg", width: 50%),
  caption: [A logic flowchart representing a user authentication process.#footnote[Source: Gemini]],
)

=== Logical Relationships
In a digital system, logical relationships define how individual components interact. This involves understanding the *Input-Process-Output (IPO)* model:
- *#idx("Input")*: What data enters the system (e.g., sensor data, user keystrokes).
- *#idx("Process")*: How that data is transformed (e.g., sorting, calculating, validating).
- *#idx("Output")*: What the system produces (e.g., a screen display, a physical movement of a robotic arm).

#quote(attribution: "Bill Gates")[The computer was born to solve problems that did not exist before.]

== Identifying Human Needs and Opportunities

A digital solution is only successful if it provides value to its users. Identifying this value requires distinguishing between different types of requirements.

=== Defining Needs, Wants, and Opportunities
- *Needs*: These are essential requirements. If a banking app cannot securely store money, it has failed its primary need. Needs are "non-negotiable" features.
- *Wants*: These are desirable features that enhance the user experience but are not critical for functionality. A "dark mode" or custom profile icons are typically wants.
- *Opportunities*: This involve identifying a gap in the market or a way to "re-imagine" an existing process using technology. For example, ride-sharing apps took the "need" for transportation and turned it into an "opportunity" by using GPS and mobile payments to solve the "wants" of convenience and transparency.

=== Essential Elements of a Solution
Every solution must address the core "pain points" of the user. This involves identifying the "minimal viable product" (MVP)—the smallest set of features required to prove that the solution addresses the identified need or opportunity.

=== Modern Problem Contexts
Technology solves problems in increasingly complex environments:
- *Search Engines*: Use massive-scale data processing to solve the problem of information discovery.
- *Robotics*: Combine sensors and actuators to automate physical tasks, from vacuuming floors to performing delicate surgeries.
- *#idx("Mobile Applications")*: Leverage pervasive computing to provide tools that are always available, using sensors like accelerometers and GPS to add context to digital interactions.
- *#idx("Internet of Things (IoT)")*: Involves connecting everyday objects to the internet, allowing for remote monitoring and automation of environments (e.g., smart agriculture systems that water crops based on soil moisture data).


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=6mBO2vqLv38")[#image("../images/yt_iot.jpg", width: 100%)],
    [*Video*: What is the Internet of Things? -- Exploring the interconnected world of IoT. \ https://www.youtube.com/watch?v=6mBO2vqLv38],
  )
]



#pagebreak(weak: true)
#figure(
  image("../images/xkcd_automation.jpg", width: 50%),
  caption: [The reality of automation: spending more time on the tool than the task.#footnote[Source: xkcd.com/1319]],
)


#pagebreak(weak: true)
#figure(
  image("../images/iot_ecosystem.jpg", width: 60%),
  caption: [An IoT ecosystem in a smart home environment.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#figure(
  image("../images/robotic_arm.jpg", width: 60%),
  caption: [An industrial robotic arm performing precision factory tasks.#footnote[Source: Gemini]],
)

== Analysing the Solution Environment

The environment includes all the external factors that influence how a solution is developed and how it will perform.

=== Scope, Constraints, and Limitations
- *Scope*: A clearly defined boundary of what the solution *will* and *will not* do. Defining what is "out of scope" is just as important as defining what is "in scope" to prevent "feature creep."
- *Constraints*: External factors that limit the design or development. These include *Technical Constraints* (hardware limits), *Economic Constraints* (budget), *Legal Constraints* (Privacy Act), and *Social Constraints* (cultural expectations).
- *Limitations*: These are the inherent boundaries of the chosen technology or environment, such as the maximum range of a Wi-Fi signal or the battery life of a wearable device.


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_tasks.jpg", width: 60%),
  caption: [A humorous look at the difference between "easy" and "impossible" tasks in software development.#footnote[Source: xkcd.com/1425]],
)

=== Solution Requirements
Requirements are detailed descriptions of the system's goals:
- *Functional Requirements*: Describe what the system *shall* do (e.g., "The system shall allow users to reset their password via email").
- *Information Requirements*: Define the data that must be captured, stored, and processed (e.g., "The system must store user emails in a hashed format").
- *Non-Functional Requirements*: Describe how the system *should* perform (e.g., "The system must load in under 2 seconds").

=== User Perspective and UX Requirements
User Experience (UX) is not just about "looking good"—it's about how the user *feels* and *interacts* with the system. Key considerations include:
- *Technical Literacy*: Is the app designed for a software engineer or a primary school student?
- *#idx("User Experience (UX)")*: How the user *feels* and *interacts* with the system. Key considerations include the environment and emotional response.


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=Mr8gl3oflNg")[#image("../images/yt_ux.jpg", width: 100%)],
    [*Video*: Wireframes: The Ultimate UX Design Tool Tutorial -- Learning how to structure user experiences. \ https://www.youtube.com/watch?v=Mr8gl3oflNg],
  )
]



#pagebreak(weak: true)
#figure(
  image("../images/ux_wireframe.jpg", width: 60%),
  caption: [An annotated wireframe highlighting key UX design considerations.#footnote[Source: Gemini]],
)

=== Technical Interface Constraints
Hardware and software limitations directly impact UI design. Screen size, resolution, and input methods (e.g., voice control vs. physical buttons) dictate how information can be presented and how users can interact with the system.

=== Measurable Success Criteria
Success criteria are the "testable" standards used to evaluate the final product. They must be *SMART* (Specific, Measurable, Achievable, Relevant, and Time-bound). For example, "Make the app fast" is a poor criterion; "The app shall process 100 transactions per second with 99.9% uptime" is a measurable success criterion.

== Social and Economic Impacts

Every digital solution has consequences that extend beyond the user and the developer.

=== Impact Analysis Framework
To evaluate these consequences, we use a structured framework:
- *Personal Impact*: How does the solution affect the individual? (e.g., privacy, health, cognitive load).
- *Social Impact*: How does it change how people communicate or how communities interact? (e.g., social media's impact on public discourse).
- *Economic Impact*: How does it affect jobs, businesses, and global markets? (e.g., automation in manufacturing reducing manual labor but creating demand for robotics technicians).

=== Evaluating Existing Solutions
Rarely is a problem entirely new. Evaluation involves looking at current solutions to identify their strengths and weaknesses. By analyzing "competitor" apps, developers can find opportunities to innovate by addressing the "fail points" of existing technology.

=== Emerging Technology Trends
Modern digital problems are often solved using cutting-edge technologies:
- *#idx("Machine Learning (ML)")*: A subset of AI that allows systems to learn from data patterns rather than being explicitly programmed for every scenario.
- *#idx("Neural Networks")*: Algorithms modeled after the human brain that excel at pattern recognition in images, speech, and large datasets.
- *Natural Language Processing (NLP)*: The ability of a computer to understand and respond to human language, enabling more natural "human-computer interaction."


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=aircAruvnKk")[#image("../images/yt_nn.jpg", width: 100%)],
    [*Video*: But what is a neural network? -- A visual introduction to the math behind AI. \ https://www.youtube.com/watch?v=aircAruvnKk],
  )
]



#pagebreak(weak: true)
#figure(
  image("../images/xkcd_ml.jpg", width: 50%),
  caption: [The "black box" nature of machine learning algorithms.#footnote[Source: xkcd.com/1838]],
)


#pagebreak(weak: true)
#figure(
  image("../images/neural_network.jpg", width: 60%),
  caption: [A visualization of an artificial neural network used in deep learning models.#footnote[Source: Gemini]],
)

#tip-box[
  *Grace Hopper* #index("Hopper, Grace") was a pioneer of computer programming who invented one of the first linkers (the A-0 system) and popularised machine-independent programming languages, leading to COBOL. She reminds us that innovation often comes from reimagining how we communicate with machines. Her work laid the foundation for the "Abstraction" we use today in high-level programming languages.#footnote[Source: Beyer, K. W. (2009). *Grace Hopper and the Invention of the Information Age*. MIT Press.]
]

== Professional Communication and Documentation

Professionalism in Digital Solutions requires the ability to communicate technical ideas to both technical and non-technical audiences.

=== Technology-Specific Language
Using precise vocabulary is essential for clarity. Terms like "latency," "scalability," "redundancy," and "encapsulation" have specific meanings that allow developers to communicate complex ideas without ambiguity.

=== Visualizing Ideas
Before any code is written, ideas must be visualized through:
- *Annotated Sketches*: Quick, hand-drawn representations of a UI or system architecture.
- *Schematic Models*: Formal diagrams (like DFDs or flowcharts) that show the logic and data flow.
- *Wireframes*: Low-fidelity visual representations of a user interface.


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=WDCtcRpAqi4")[#image("../images/yt_wireframe.jpg", width: 100%)],
    [*Video*: UX Tutorial: How to WIREFRAME like a pro -- Practical techniques for professional documentation. \ https://www.youtube.com/watch?v=WDCtcRpAqi4],
  )
]



#pagebreak(weak: true)
#figure(
  image("../images/annotated_sketch.jpg", width: 60%),
  caption: [An annotated interface sketch for a mobile dashboard.#footnote[Source: Gemini]],
)

=== Communication Modes
Developers must adapt their communication mode to their audience:
- *Technical Manuals*: Focus on implementation, API endpoints, and data structures for other developers.
- *User Guides*: Focus on "how-to" steps and troubleshooting for the end-user.
- *Project Reports*: Focus on project scope, budget, and success criteria for stakeholders or clients.

=== Ethical Scholarship
Ethical scholarship is the practice of accurately attributing ideas and code to their original sources. In the digital world, this includes:
- *Acknowledging Open Source*: Giving credit to libraries or frameworks used in a project.
- *Referencing*: Using standard conventions (like APA or Harvard) to cite research, images, or historical anecdotes.
- *Integrity*: Ensuring that success criteria are reported honestly and that data privacy is respected.

#info-box[
  *The First "Bug"*: In 1947, Grace Hopper's team found a physical moth stuck in a relay of the Harvard Mark II computer. They taped the moth into their logbook and labeled it the "first actual case of bug being found." This historical anecdote serves as a reminder of the meticulous nature required in digital problem analysis and the importance of accurate documentation.#footnote[Source: National Museum of American History, Smithsonian Institution (Logbook of the Harvard Mark II).]
]

== Revision Questions

1. Explain how *Abstraction* and *Decomposition* work together to simplify a complex digital problem.
2. Differentiate between a *Constraint* and a *Limitation* using a mobile application as an example.
3. Why must *Success Criteria* be measurable? Provide an example of a non-measurable criterion and rewrite it to be measurable.
4. Use the *Impact Analysis Framework* to evaluate the potential personal, social, and economic impacts of an AI-driven medical diagnostic tool.
5. Describe two different *Thinking Tools* and explain when you would use one over the other.
6. What is the difference between a *Functional Requirement* and a *Non-Functional Requirement*? Give an example of each for a school database system.
