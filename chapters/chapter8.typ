#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Interactions Between Users, Data, and Digital Systems", label: <ch:8>)


*Aims and Objectives:*
- Explore the meaning of innovation and opportunities in emerging technologies.
- Describe components for web, mobile, interactive media, and intelligent systems.
- Analyze system components and observable human-digital interactions.
- Apply the five core usability principles and visual communication elements.
- Model data flow using DFDs and manage advanced data processes.

== Innovation and Emerging Technologies
Innovation is the engine of the digital age, transforming theoretical possibilities into practical solutions.

=== The Meaning of Innovation
*#idx("Innovation")* is the practical implementation of ideas that result in new or improved goods, services, or processes. It is more than just an invention; it is about creating value and finding new opportunities to solve problems in personal, business, and social domains [cite: 620].

#women[
  *Anita Borg* #index("Borg, Anita") (1949–2003) was an American computer scientist who founded the Institute for Women and Technology (now the Anita Borg Institute) and the Grace Hopper Celebration of Women in Computing. She was a passionate advocate for diversity in the tech industry and believed that technology should be designed by everyone, for everyone. Her work on distributed operating systems was revolutionary, but her legacy is most strongly felt in her efforts to bridge the gender gap in digital innovation.#footnote[Source: #link("https://anitab.org/about-us/about-anita-borg/")[Anita Borg Institute. *Anita Borg: Computer Scientist and Advocate*].]

#quotation(attribution: "Steve Jobs")[Design is not just what it looks like and feels like. Design is how it works.#footnote[Source: #link("https://www.apple.com/stevejobs/")[Apple: Steve Jobs].]]

  #quotation(attribution: "Anita Borg")[Technology should be designed by everyone, for everyone.]
]

=== #idx("Emerging Technologies")
The landscape of digital innovation is currently being redefined by several key areas:
- *#idx("Machine Learning (ML)")*: A subset of AI that provides systems the ability to automatically learn and improve from experience without being explicitly programmed.
- *#idx("Neural Networks")*: Computational models that mimic the human brain's structure, used for complex pattern recognition.
- *#idx("Natural Language Processing (NLP)")*: Enabling computers to understand, interpret, and generate human language.

#code-box[
  *Pseudocode Logic: Predictive Modeling*
  ```pseudocode
  LOAD dataset
  TRAIN model ON data
  
  IF model.predict(X) > 0.5
    OUTPUT "Positive"
  ELSE
    OUTPUT "Negative"
  ENDIF
  ```

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      *JavaScript Implementation*
      ```javascript
      // Using model logic
      const result = model.predict(X);
      if (result > 0.5) {
        console.log("Positive");
      } else {
        console.log("Negative");
      }
      ```
    ],
    [
      *Python Implementation*
      ```python
      # Predict based on features
      result = model.predict([X])
      if result[0] > 0.5:
          print("Positive")
      else:
          print("Negative")
      ```
    ]
  )
]

#figure(
  image("../images/ml_neural_network.jpg", width: 80%),
  caption: [Neural networks: the building blocks of modern intelligent systems.],
)

#info-box[
  *Case Study: AI in Medical Diagnosis*
  In modern healthcare, *Deep Learning* algorithms are trained on millions of MRI scans to identify early-stage tumors. This *innovation* provides a powerful *utility* by flagging anomalies that the human eye might miss, significantly improving patient outcomes.
]



#figure(
  image("../images/xkcd_machine_learning.jpg", width: 80%),
  caption: [The logic behind modern machine learning systems.#footnote[Source: xkcd.com/1838]],
)

=== Personal, Social, and Economic Impacts
The adoption of innovative solutions carries significant weight. Students must determine the potential impacts, such as increased efficiency (economic), improved connectivity (social), and new privacy challenges (personal) [cite: 645].



#figure(
  image("../images/ml_neural_network.jpg", width: 80%),
  caption: [Neural networks are a cornerstone of modern intelligent systems.],
)
== Digital Solution Components and Contexts
The architecture of a digital solution depends heavily on its intended context. Components are recognized and described based on the specific technology context selected for study [cite: 622].

=== #idx("Web Applications")
Web applications rely on a client-server architecture. Key components include:
- *Server-Side*: Web and database servers, and pre-processing logic (e.g., PHP, Node.js).
- *Client-Side*: Browsers, devices, and front-end code (HTML/JS).
- *Internal Data*: Structured databases and session management [cite: 623].

#proof-box[
  *Example: E-commerce Interaction*
  1. *Client-Side*: User clicks "Add to Cart" (Browser event).
  2. *Server-Side*: A PHP script receives the request and checks the *Internal Data* (Database) for stock availability.
  3. *Client-Side*: The browser receives a "Success" message and updates the cart count using JavaScript.
]

=== #idx("Mobile Applications")
Mobile solutions are characterized by their interaction with physical hardware and sensors:
- *Hardware*: Touchscreens, accelerometers, and GPS.
- *Input/Output*: Voice recognition, haptic feedback, and camera.
- *Logic*: Event handlers for user interactions and specific application data structures [cite: 623].

=== #idx("Interactive Media")
Interactive media systems prioritize the user's engagement with multimedia:
- *Peripheral Devices*: Joysticks, VR headsets, and specialized controllers.
- *Assets*: Multimedia files (video, 3D models) and object libraries.
- *Storage*: External data stores used to manage large asset libraries [cite: 623].

=== #idx("Intelligent Systems")
Intelligent systems bridge the gap between the digital and physical worlds:
- *Sensors & Actuators*: Devices that detect environment changes and those that perform actions (e.g., motors).
- *Data Streams*: Handling both analogue and digital data inputs.
- *Communication*: Network protocols (e.g., MQTT, Zigbee) and specific code libraries for AI or hardware control [cite: 623].

== System Analysis and Modeling
Analyzing a system requires breaking it down into its constituent parts to understand how they interact to achieve a goal.

=== Identifying System Components
Problems are analyzed to identify the essential building blocks of a solution:
- *Hardware*: The physical devices involved.
- *Software*: The code and applications.
- *Data*: The information being processed.
- *Networks*: The communication channels.
- *Users*: The people interacting with the system [cite: 624, 625].

=== Human-Digital Interactions
Students identify observable interactions within the system. This includes human-human communication facilitated through digital platforms like social media, email, or video conferencing [cite: 627].

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=5BpgAHBZgec")[#image("../images/yt_interaction_design.jpg", width: 100%)],
    [*Video*: Interaction Design Foundations -- Creating intuitive pathways for user engagement. \ https://www.youtube.com/watch?v=5BpgAHBZgec],
  )
]

=== Technical Specifications
Defining the technical elements is crucial for system interoperability:
- *Protocols & Standards*: The rules governing data exchange (e.g., HTTP, TCP/IP).
- *Inputs & Outputs*: The data entering and leaving the system.
- *Control Mechanisms*: The logic that governs system behavior [cite: 626, 628, 629].

=== Modeling Processes
Interactions and processes are represented using logical diagrams and consistent symbols. This allows developers to visualize complex system behaviors before implementation [cite: 630].

== Usability and Visual Communication
A system is only effective if its users can interact with it efficiently and intuitively.

=== Core Usability Principles
Students must symbolize and explain the five core usability principles [cite: 631, 632]:

#table(
  columns: (1fr, 3fr),
  inset: 10pt,
  align: horizon,
  [*Principle*], [*Description*],
  [*Accessibility*], [Ensuring the system is usable by people with diverse abilities and disabilities.],
  [*Effectiveness*], [How accurately and completely users can achieve their goals.],
  [*Safety*], [Protecting users from dangerous conditions and unintended actions.],
  [*Utility*], [The range of functions the system provides to meet user needs.],
  [*Learnability*], [How easy it is for new users to accomplish basic tasks.],
)

#quotation(attribution: "Steve Krug")[Don't make me think.#footnote[Source: #link("https://sensible.com/")[Sensible.com: Steve Krug].]]

=== Interface Appraisal
A variety of interfaces are explored to understand user interaction [cite: 633]. To support diverse user profiles, flexible development methods are investigated [cite: 641]. Interfaces are appraised using *#idx("Heuristic Reviews")* to ensure they meet established usability standards [cite: 646].

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=qLAqT2U68h4")[#image("../images/yt_hci.jpg", width: 100%)],
    [*Video*: Human-Computer Interaction (HCI) -- Exploring the psychological and technical link between people and machines. \ https://www.youtube.com/watch?v=qLAqT2U68h4],
  )
]

Applying these psychological insights leads to the development of specific heuristics that guide professional interface design.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=6B7L_O0_8Ww")[#image("../images/yt_heuristics.jpg", width: 100%)],
    [*Video*: 10 Usability Heuristics for User Interface Design -- A guide to evaluating digital interfaces. \ https://www.youtube.com/watch?v=6B7L_O0_8Ww],
  )
]


#tip-box[
  *Heuristic Spotlight: Error Prevention*
  A classic example of the *Safety* principle is the "Confirm Delete" dialog box. By requiring an extra step for a destructive action, the system prevents accidental data loss, thereby enhancing the system's *reliability*.
]

=== Visual Communication
Visual communication is the art of presenting information clearly. It is guided by specific elements and principles [cite: 643, 644]:

- *Elements*: Space, line, colour, shape, texture, tone, form, proportion, scale.
- *Principles*: Balance, contrast, proximity, harmony, alignment, repetition, hierarchy.



#figure(
  image("../images/visual_comm.jpg", width: 80%),
  caption: [Applying visual communication principles to UI design.],
)

== Data Flow and Advanced Processes
The movement of data through a system must be carefully mapped to ensure integrity and efficiency.

=== Data Flow Diagrams (DFD)
Data flow through a system is represented visually using *Data Flow Diagrams (DFD)*. DFDs use standardized symbols to represent processes, data stores, external entities, and the flow of data between them [cite: 634].

#figure(
  image("../images/dfd_symbols.jpg", width: 80%),
  caption: [Standard symbols used in Data Flow Diagrams.],
)

=== Advanced Data Handling
Students symbolize and use advanced data processes to manage complex datasets:
- *Table Joins*: Combining data from multiple tables based on a related column.
- *Referential Integrity*: Ensuring that relationships between tables remain consistent [cite: 635].
- *Redundancy & Anomalies*: Applying strategies to reduce data duplication and prevent update anomalies [cite: 635].

=== Prototyping Synthesis
Methods for synthesizing user interfaces, processing logic, and data components are explored to generate comprehensive prototype solutions [cite: 642].

== Online Resources

To further your exploration of emerging technologies and system innovation, dive into these comprehensive technical guides:

- *Artificial Intelligence and Machine Learning*:
  - #link("https://www.geeksforgeeks.org/machine-learning/")[Machine Learning: A Complete Guide] -- An extensive tutorial on the algorithms that allow systems to learn from data.
  - #link("https://www.geeksforgeeks.org/neural-networks-a-beginners-guide/")[Neural Networks for Beginners] -- Understanding the computational models that mimic human brain functions.
  - #link("https://www.geeksforgeeks.org/natural-language-processing-overview/")[Natural Language Processing Overview] -- How computers are programmed to process and analyze large amounts of natural language data.
- *Innovation Case Studies*:
  - #link("https://www.uisources.com/screenshots")[UI Sources] -- A gallery of real-world mobile app interactions and design patterns to inspire your own innovations.
  - #link("https://alternativeto.net/")[AlternativeTo] -- A platform to explore and analyze existing solutions to common digital problems.

== Revision Questions

1. Define *Innovation* in your own words and explain how it differs from simple invention.
2. Differentiate between *Web Applications* and *Intelligent Systems* in terms of their core components.
3. Use an example to explain the relationship between *Sensors* and *Actuators* in an intelligent system.
4. Why is *Interaction Design* critical for human-human communication facilitated by digital systems?
5. Select two *Visual Communication Principles* and describe how they improve the *Learnability* of an interface.
6. What is the purpose of a *Table Join* in a relational database, and how does it relate to data redundancy?
7. Explain how *Emerging Technologies* like ML and NLP are re-imagining traditional user-interface requirements.
6. Draw a simple *Data Flow Diagram (DFD)* for a library book return system.

---
