#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "User Experiences and Interfaces", label: <ch:2>)

*Aims and Objectives:*
- Define User Experience (UX) and its significance in digital solution design.
- Critically apply the five usability principles to evaluate interface quality.
- Master the elements and principles of visual communication for interface design.
- Develop skills in iterative prototyping, from low-fidelity sketches to high-fidelity mock-ups.
- Understand the methods of evaluation and refinement used to improve user engagement.

#important-box[
  Developing a digital solution isn't just about writing code; it's about how a human interacts with that code. A beautiful interface that is impossible to use is a failure of design, not just aesthetics.
]

== The Foundation of User Experience (UX)

User Experience (UX) encompasses the meaning and importance of how individuals engage with a digital product. It is a holistic view of the user's journey, focusing on providing value, ease of use, and emotional satisfaction.

=== Driven by People
A successful interface is driven by people and their specific needs. Designers must move beyond "one size fits all" approaches and consider the diverse characteristics of their audience:
- *Age*: Younger users may prefer dynamic, gesture-based interfaces, while older users may require larger touch targets, higher contrast, and less cognitive load.
- *Digital Literacy*: Experienced users may want shortcuts (like Ctrl+C) and advanced features, whereas beginners need guided onboarding, clear cues, and prominent "Help" buttons.
- *Physical Abilities*: Considerations for accessibility ensure that the solution is fit for purpose for users with visual, auditory, or motor impairments. This includes screen reader compatibility and keyboard-only navigation.

#tip-box[
  *#idx("User Personas")*: To help designers empathise with their audience, they often create "Personas"—fictional characters that represent the different user types within a targeted demographic. A persona might include a name, age, technical skill level, and specific goals or frustrations.
]


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_ui_ux.jpg", width: 60%),
  caption: [A commentary on the industry's distinction between UI and UX.#footnote[Source: xkcd.com/2141]],
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=st9AEPOjGpU")[#image("../images/yt_usability.jpg", width: 100%)],
    [*Video*: Usability 101: Introduction to User Experience -- Foundations of UX and why it matters for every project. \ https://www.youtube.com/watch?v=st9AEPOjGpU],
  )
]

== Usability Principles

To ensure a solution is high-quality, it must be assessed against five core *usability principles*. These serve as the "success criteria" for an effective user interface.

=== 1. #idx("Accessibility")
Ensuring the system can be used by people with the widest range of capabilities.
- *Example*: A banking app that includes high-contrast modes for visually impaired users and voice-over support for blind users.
- *Key Tool*: *#idx("WCAG") (Web Content Accessibility Guidelines)* provide an international standard for making web content more accessible.


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=20SHvU2PKsM")[#image("../images/yt_accessibility.jpg", width: 100%)],
    [*Video*: What is Web Accessibility? -- An introduction to inclusive design for all users. \ https://www.youtube.com/watch?v=20SHvU2PKsM],
  )
]

=== 2. #idx("Effectiveness")
How well the system performs the tasks it was designed for. Can the user achieve their goal accurately and completely?
- *Example*: A GPS application is effective if it provides the most efficient route and the user reaches their destination without getting lost.

=== 3. #idx("Safety")
Protecting the user from dangerous conditions and undesirable situations. This includes protecting data from accidental loss and ensuring the system is resilient against malicious input.
- *Example*: "Confirm Deletion" dialogs in a photo app prevent accidental loss of data. "Undo" functionality (Ctrl+Z) allows users to recover from mistakes quickly.


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_safety.jpg", width: 60%),
  caption: [The classic 'Bobby Tables' comic illustrating the importance of input validation for safety.#footnote[Source: xkcd.com/327]],
)


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_passwords.jpg", width: 60%),
  caption: [A critique of security measures that make systems unusable for humans but easy for computers to crack.#footnote[Source: xkcd.com/936]],
)

=== 4. #idx("Utility")
Providing the right kind of functionality. Does the app actually do what the user needs it to do?
- *Example*: A calculator app that only adds numbers has low utility if the user needs to calculate square roots.

=== 5. #idx("Learnability")
How easy it is for users to accomplish basic tasks the first time they encounter the design.
- *Example*: Using a "trash can" icon for deleting files is highly learnable because it maps to a real-world "mental model."


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_bad_code.jpg", width: 60%),
  caption: [The relationship between code quality and user experience: bad code eventually leads to a broken interface.#footnote[Source: xkcd.com/1926]],
)


#pagebreak(weak: true)
#figure(
  image("../images/usability_principles.jpg", width: 60%),
  caption: [The five pillars of usability: the foundation of high-quality digital solutions.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#figure(
  image("../images/accessibility_ui.jpg", width: 60%),
  caption: [Examples of accessibility features in a modern user interface.#footnote[Source: Gemini]],
)

== Visual Communication in Design

Effective interfaces rely on the strategic application of visual communication to guide the user's attention and facilitate intuitive interaction.

=== Elements of Visual Communication
These are the "ingredients" used to build an interface.
- *Space*: "White space" prevents an interface from feeling cluttered and helps focus attention.
- *Line*: Used to divide sections or connect related items.
- *Colour*: Conveys emotion or urgency (e.g., Green for "Success", Red for "Error").
- *Shape*: Icons use simple shapes (like a magnifying glass for 'search') to represent complex ideas.
- *Texture and Tone*: Depth and focus are created through shadows (texture) and lightness/darkness (tone).
- *Form, Proportion, and Scale*: Elements that are more important should be larger (scale) to draw the eye first.

#tip-box[
  *Susan Kare* #index("Kare, Susan") is an artist and graphic designer who created many of the interface elements for the original Apple Macintosh in the 1980s. She designed iconic fonts (like Chicago and Geneva) and many of the original icons (like the trash can, the paint bucket, and the "Happy Mac") that established the visual language of modern computing. Her work proves that even with limited pixels, good design can create a friendly and intuitive interface.#footnote[Source: Kare, S. (2024). *Susan Kare: Icons*. Susan Kare Design.]
]

=== Principles of Visual Communication
These are the "rules" for combining the elements effectively.
- *Balance and Contrast*: Contrast (e.g., black text on white background) is essential for readability. Balance can be symmetrical (formal) or asymmetrical (dynamic).
- *Proximity and Alignment*: Grouping related items together (proximity) helps users understand relationships between data. Alignment creates a sense of order and professionalism.
- *Repetition and Harmony*: Using the same button style across an entire app creates a sense of unity and reduces the user's "cognitive load."
- *Hierarchy*: Directing the user's attention to the most important information first. This is often achieved through font weight, size, and colour.


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_kerning.jpg", width: 60%),
  caption: [The impact of subtle design flaws: Once you notice poor kerning (typography spacing), it's impossible to un-see.#footnote[Source: xkcd.com/1015]],
)


#pagebreak(weak: true)
#figure(
  image("../images/visual_comm.jpg", width: 60%),
  caption: [Applying elements and principles of visual communication to UI design.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=uwNClNmekGU")[#image("../images/yt_visual_comm.jpg", width: 100%)],
    [*Video*: Visual Design Principles for UI -- Mastering hierarchy, contrast, and alignment in digital interfaces. \ https://www.youtube.com/watch?v=uwNClNmekGU],
  )
]

== Prototyping and Symbolising Ideas

Before generating a final solution, developers must *symbolise* their ideas to communicate intent and test concepts without the overhead of full coding.

=== The Iterative Design Cycle
Prototyping is a journey of increasing detail and "fidelity":
- *Low-fidelity Prototypes*: Quick and inexpensive representations like *Sketches*, *Mood Boards* (for visual style), *Storyboards* (for user flow), and *Sitemaps*. These are used to fail fast and pivot ideas cheaply.
- *Technical Representations*: More formal models like *Schematic Diagrams*, *Wireframes*, and *Mock-ups*. Wireframes are the "blueprints" of a UI, defining where elements sit without focusing on final colours or fonts.
- *Annotations*: Critical notes that explain the purpose of specific features. For example, an annotation might describe what happens when a user clicks a specific button or how the system should respond to a swipe gesture.


#pagebreak(weak: true)
#figure(
  image("../images/prototype_evolution.jpg", width: 60%),
  caption: [The evolution of a prototype from a rough sketch to a high-fidelity mock-up.#footnote[Source: Gemini]],
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=sVKtLP85KJU")[#image("../images/yt_prototype.jpg", width: 100%)],
    [*Video*: Low-Fi vs Hi-Fi Prototyping -- When to use each mode in the design cycle. \ https://www.youtube.com/watch?v=sVKtLP85KJU],
  )
]

== Evaluation and Refinement

Evaluation is an iterative process that occurs throughout the design cycle. It ensures that the final solution meets both the user's needs and the defined usability standards.

=== Methods of Appraisal
1. *Heuristic Reviews*: Testing the interface against established usability principles. A common framework is *Nielsen's 10 Usability Heuristics*, which include rules like "Visibility of system status" (always let the user know what's happening).
2. *User Experience Testing*: Observing and recording actual user interactions. Designers look for "friction points"—areas where users pause, get confused, or make errors.
3. *Refinement*: Making iterative changes based on testing data. This is not a "one and done" step but a loop: Test -> Evaluate -> Refine -> Repeat.
4. *Justified Recommendations*: At the end of a project, developers must explain *why* they made certain changes, using evidence from their testing and evaluation phases.


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=TQ5jY1kKUNk")[#image("../images/yt_heuristics.jpg", width: 100%)],
    [*Video*: 10 Usability Heuristics Explained -- A deep dive into Jakob Nielsen's classic evaluation framework. \ https://www.youtube.com/watch?v=TQ5jY1kKUNk],
  )
]


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_updates.jpg", width: 50%),
  caption: [The psychological impact of UI updates: users often perceive changes as a disruption to their established mental models.#footnote[Source: xkcd.com/2224]],
)


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_workflow.jpg", width: 60%),
  caption: [The risk of "refinement": every change to a UI breaks someone's established workflow.#footnote[Source: xkcd.com/1172]],
)


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=6Bw0n6Jvwxk")[#image("../images/yt_testing.jpg", width: 100%)],
    [*Video*: How to Run a User Test -- Practical techniques for gathering feedback from real users. \ https://www.youtube.com/watch?v=6Bw0n6Jvwxk],
  )
]

#info-box[
  *Don Norman*, often called the "father of UX," coined the term "User Experience" while working at Apple. His book, *The Design of Everyday Things*, highlights how even simple objects like doors can have "usability" problems, emphasizing that designers are responsible for making technology intuitive. He famously said, "Design is really an act of communication, which means having a deep understanding of the person with whom the designer is communicating."#footnote[Source: Norman, D. (2013). *The Design of Everyday Things*. Basic Books.]
]

#tip-box[
  *Brenda Laurel* is a pioneer in human-computer interaction (HCI) and VR. She advocated for "design as performance," suggesting that interfaces should be thought of as a stage where users act out their goals. Her work in the 1980s and 90s paved the way for modern interactive media and immersive user experiences. She was also a founder of Purple Moon, a company dedicated to creating digital games specifically designed for girls.#footnote[Source: Laurel, B. (1991). *Computers as Theatre*. Addison-Wesley.]
]

== Revision Questions
1. Differentiate between Accessibility and Effectiveness in the context of a public transport app.
2. How does the principle of *Hierarchy* guide a user through a complex news website?
3. Describe the purpose of *Annotations* in a high-fidelity mock-up.
4. Explain why evaluation must be an *iterative* process rather than a final step.
5. Identify a user characteristic and explain how it would influence the choice of *Colour* and *Scale* in an interface design.
6. Provide an example of a "Safety" feature in a professional coding environment (IDE).
7. What is a "User Persona," and how does it help a designer during the initial phase of a project?
