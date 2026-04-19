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



#figure(
  image("../images/xkcd_ui_ux.jpg", width: 60%),
  caption: [A commentary on the industry's distinction between UI and UX.#footnote[Source: xkcd.com/2141]],
)

Understanding these foundations is critical for any designer. The following video introduces the core concepts of usability and its role in successful projects.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=st9AEPOjGpU")[#image("../images/yt_usability.jpg", width: 100%)],
    [*Video*: Usability 101: Introduction to User Experience -- Foundations of UX and why it matters for every project. \ https://www.youtube.com/watch?v=st9AEPOjGpU],
  )
]

Beyond just usability, it is important to distinguish between the 'how it works' (UX) and the 'how it looks' (UI) aspects of a solution.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=wIuVvCuiJhU")[#image("../images/yt_ux_ui.jpg", width: 100%)],
    [*Video*: UX vs UI -- Understanding the difference between how it works and how it looks. \ https://www.youtube.com/watch?v=wIuVvCuiJhU],
  )
]


== Usability Principles

To ensure a solution is high-quality, it must be assessed against five core *usability principles*. These serve as the "success criteria" for an effective user interface.

=== 1. #idx("Accessibility")
Accessibility is the ability to be used by many different people, even people with disabilities. Accessibility guidelines are based on four principles (often referred to as POUR):
- *Perceivable:* Information and UI components must be presented in ways users can perceive (e.g. adjust color contrast or font size).
- *Operable:* UI components must be operable in ways users can operate (e.g. keyboard navigation).
- *Understandable:* Information and UI operation must be understandable.
- *Robust:* Content must be robust enough to be interpreted by a wide variety of users and assistive technologies.

#figure(
  image("../images/up_accessability.png", width: 60%),
  caption: [Accessibility principles.],
)

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=Fy0aCDmgnxg")[#image("../images/yt_accessibility_godot.jpg", width: 100%)],
    [*Video*: Accessibility in Design -- Practical steps for inclusive digital solutions. \ https://www.youtube.com/watch?v=Fy0aCDmgnxg],
  )
]

#info-box[
  *Usability Principles Checklist*: What to look for during evaluation.
  #table(
    columns: (1fr, 2fr),
    [*Principle*], [*What to look for*],
    [Accessibility], [Responsive design, screen reader compatibility, semantic tags.],
    [Learnability], [Consistent layout, familiar iconography, help features/tooltips.],
    [Safety], [Error feedback, undo/redo mechanisms, input validation.],
    [Utility], [Does it provide all the required functionality?],
    [Effectiveness], [Can users achieve their goals accurately and efficiently?],
  )
]

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=TgqeRTwZvIo")[#image("../images/yt_usability_principles.jpg", width: 100%)],
    [*Video*: The 5 Usability Principles -- A detailed look at the core standards of quality design. \ https://www.youtube.com/watch?v=TgqeRTwZvIo],
  )
]


=== 2. #idx("Effectiveness")
Effectiveness is the ability of users to use the system to do the work they need to do. Users need to be able to interact with a digital solution quickly and easily. You can improve effectiveness by addressing:
- *Goal Achievement*: the ability to complete intended tasks.
- *Accuracy*: the ability to perform tasks with minimal errors.
- *Efficiency*: the ability to perform tasks in a timely manner.
- *Quality of Outcome*: the ability of the output to meet user expectations.

#figure(
  image("../images/up_effectiveness.png", width: 60%),
  caption: [Effectiveness principles.],
)

=== 3. #idx("Safety")
Safety is the ability for users to make errors and recover from the mistake. It considers: How many errors do users make? How severe are they? How easily can users recover? Safety is protecting users from dangerous errors (e.g. losing all data).
- *Error Prevention*: making it difficult to make mistakes.
- *Error Recovery*: providing mechanisms to recover from mistakes (e.g., Undo).
- *Warning Systems*: warning users of potential dangers before they occur.

#figure(
  image("../images/up_safety.png", width: 60%),
  caption: [Safety principles.],
)

A classic example of safety in technical systems is the prevention of accidental data corruption through robust input validation.

#figure(
  image("../images/xkcd_safety.jpg", width: 60%),
  caption: [The classic 'Bobby Tables' comic illustrating the importance of input validation for safety.#footnote[Source: xkcd.com/327]],
)

=== 4. #idx("Utility")
Utility is the ability of the system to provide all the functionality that users need. Does the solution have all the components needed to complete the task?
- *Relevance*: provide all relevant features and only relevant features.
- *Completeness*: ensure the user can complete tasks without resorting to alternative methods.
- *Availability*: ensure necessary functions are available when needed.
- *Understandability*: ensure users understand how to use features.

#figure(
  image("../images/up_utility.png", width: 60%),
  caption: [Utility principles.],
)

=== 5. #idx("Learnability")
Learnability is concerned with how easy a system is to learn. How intuitive or memorable is the digital solution?
- *Clear and Consistent Design*: Use a clean interface with clear visual hierarchy.
- *Intuitive Navigation*: easily identifiable navigation elements.
- *Interactive Tutorials*: introduce features gradually.
- *Visual Feedback*: immediate feedback when a user interacts.

#figure(
  image("../images/up_learnability.png", width: 60%),
  caption: [Learnability principles.],
)



#figure(
  image("../images/xkcd_bad_code.jpg", width: 60%),
  caption: [The relationship between code quality and user experience: bad code eventually leads to a broken interface.#footnote[Source: xkcd.com/1926]],
)

When these principles are applied correctly, they form the five pillars that support every high-quality digital solution.

#figure(
  image("../images/usability_principles.jpg", width: 60%),
  caption: [The five pillars of usability: the foundation of high-quality digital solutions.#footnote[Source: Gemini]],
)

These pillars manifest in a variety of features, from responsive layouts to integrated accessibility tools.

#figure(
  image("../images/accessibility_ui.jpg", width: 60%),
  caption: [Examples of accessibility features in a modern user interface.#footnote[Source: Gemini]],
)

== Visual Communication in Design

Effective interfaces rely on the strategic application of visual communication to guide the user's attention and facilitate intuitive interaction.

- *Tone*: The lightness or darkness of a colour, contrasted to provide hierarchy.

#info-box[
  *Elements of Visual Communication*:
  #table(
    columns: (1fr, 2fr),
    [*Element*], [*Definition*],
    [Space], [Used to group data or create zones.],
    [Point], [Smallest visual element (dots, pixels).],
    [Colour], [Choice of hue to unify or provide contrast.],
    [Line], [Directs attention or divides sections.],
    [Shape], [Two-dimensional zoning around data (e.g., tables).],
    [Texture], [Inferred tactile features of an object.],
    [Form], [Visual depth and 3D solid effects.],
  )
]

#women[
  *Susan Kare* #index("Kare, Susan") is an artist and graphic designer who created many of the interface elements for the original Apple Macintosh in the 1980s. She designed iconic fonts (like Chicago and Geneva) and many of the original icons (like the trash can, the paint bucket, and the "Happy Mac") that established the visual language of modern computing. Her work proves that even with limited pixels, good design can create a friendly and intuitive interface.#footnote[Source: #link("https://kare.com/")[*Susan Kare: Icons*]. Susan Kare Design.]

  #quotation(attribution: "Susan Kare")[Good design's not about what you put in, it's about what you leave out.]
]


- *Repetition*: Repeating the same element brings consistency, unity, and cohesion.

#info-box[
  *Principles of Visual Communication*:
  #table(
    columns: (1fr, 2fr),
    [*Principle*], [*Definition*],
    [Balance], [Arrangement around a central axis.],
    [Contrast], [Opposing aesthetic qualities for emphasis.],
    [Proximity], [Positioning elements to imply relationships.],
    [Harmony], [Complementary components working as a whole.],
    [Alignment], [Lining up elements (e.g., form fields).],
    [Repetition], [Repeated constructs for predictability.],
    [Hierarchy], [The intended reading order of a design.],
  )
]



#figure(
  image("../images/xkcd_kerning.jpg", width: 60%),
  caption: [The impact of subtle design flaws: Once you notice poor kerning (typography spacing), it's impossible to un-see.#footnote[Source: xkcd.com/1015]],
)

Professional designers avoid these pitfalls by adhering to the established elements and principles of visual communication.

#figure(
  image("../images/visual_comm.jpg", width: 60%),
  caption: [Applying elements and principles of visual communication to UI design.#footnote[Source: Gemini]],
)



#video[
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

#info-box[
  *Useful Prototyping Tools*:
  - Draw.io: link("https://github.com/jgraph/drawio-desktop/releases")
  - Wireframe.cc: link("https://wireframe.cc/")
  - Cantunsee (UI Games): link("https://cantunsee.space/")
]



#figure(
  image("../images/prototype_evolution.jpg", width: 60%),
  caption: [The evolution of a prototype from a rough sketch to a high-fidelity mock-up.#footnote[Source: Gemini]],
)



#video[
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



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=TQ5jY1kKUNk")[#image("../images/yt_heuristics.jpg", width: 100%)],
    [*Video*: 10 Usability Heuristics Explained -- A deep dive into Jakob Nielsen's classic evaluation framework. \ https://www.youtube.com/watch?v=TQ5jY1kKUNk],
  )
]




#figure(
  image("../images/xkcd_updates.jpg", width: 50%),
  caption: [The psychological impact of UI updates: users often perceive changes as a disruption to their established mental models.#footnote[Source: xkcd.com/2224]],
)

Even well-intentioned refinements can sometimes disrupt a user's established workflow if not communicated effectively.

#figure(
  image("../images/xkcd_workflow.jpg", width: 60%),
  caption: [The risk of "refinement": every change to a UI breaks someone's established workflow.#footnote[Source: xkcd.com/1172]],
)



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=6Bw0n6Jvwxk")[#image("../images/yt_testing.jpg", width: 100%)],
    [*Video*: How to Run a User Test -- Practical techniques for gathering feedback from real users. \ https://www.youtube.com/watch?v=6Bw0n6Jvwxk],
  )
]


#info-box[
  *Don Norman*, often called the "father of UX," coined the term "User Experience" while working at Apple. His book, *The Design of Everyday Things*, highlights how even simple objects like doors can have "usability" problems, emphasizing that designers are responsible for making technology intuitive. He famously said, "Design is really an act of communication, which means having a deep understanding of the person with whom the designer is communicating."#footnote[Source: #link("https://jnd.org/the-design-of-everyday-things-revised-and-expanded-edition/")[Norman, D. (2013). *The Design of Everyday Things*]. Basic Books.]
]

#women[
  *Brenda Laurel* is a pioneer in human-computer interaction (HCI) and VR. She advocated for "design as performance," suggesting that interfaces should be thought of as a stage where users act out their goals. Her work in the 1980s and 90s paved the way for modern interactive media and immersive user experiences. She was also a founder of Purple Moon, a company dedicated to creating digital games specifically designed for girls.#footnote[Source: #link("https://books.google.com/books/about/Computers_as_Theatre.html?id=uU1sAQAAQBAJ")[Laurel, B. (1991). *Computers as Theatre*]. Addison-Wesley.]

  #quotation(attribution: "Brenda Laurel")[Interface is a contact surface. It's a place where two entities... meet and interact.]
]


== Revision Questions
1. Differentiate between Accessibility and Effectiveness in the context of a public transport app.
2. How does the principle of *Hierarchy* guide a user through a complex news website?
3. Describe the purpose of *Annotations* in a high-fidelity mock-up.
4. Explain why evaluation must be an *iterative* process rather than a final step.
5. Identify a user characteristic and explain how it would influence the choice of *Colour* and *Scale* in an interface design.
6. Provide an example of a "Safety" feature in a professional coding environment (IDE).
7. What is a "User Persona," and how does it help a designer during the initial phase of a project?

