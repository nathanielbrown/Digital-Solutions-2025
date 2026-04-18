#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Digital Methods for Exchanging Data", label: <ch:11>)

*Aims and Objectives:*
- Recognise encryption and authentication strategies for secure transmission.
- Analyse classical and modern encryption algorithms.
- Apply privacy principles and ethical considerations to data management.
- Understand network performance metrics and core transmission principles.
- Utilize modern data exchange methods including REST, JSON, and APIs.

== Security and Authentication Strategies
Securing data as it travels across networks is a multi-layered challenge involving identity verification and robust mathematical protection.

=== Identity and Authentication
Authentication strategies ensure that only authorized users can access sensitive data. Students distinguish between:
- *Two-Factor / Multi-Factor Authentication (2FA/MFA)*: Using verification codes sent to trusted devices.
- *Biometrics*: Using physical characteristics like fingerprints or facial recognition for identity verification [cite: 748, 749].

#tip-box[
  *Dorothy Denning* #index("Denning, Dorothy") is an American computer scientist known for her pioneering work in cryptography and network security. She developed several models for secure information flow and was one of the first to propose intrusion detection systems (IDS). Her research into the "lattice model" of secure information flow and her work on digital signatures and data encryption have made her one of the most influential figures in modern cybersecurity.#footnote[Source: National Security Agency. *Dorothy Denning: Hall of Honor*.]
]

#tip-box[
  *Example: 2FA in Practice*
  1. *Something you know*: User enters their password on a banking website.
  2. *Something you have*: The website sends a one-time password (OTP) to the user's smartphone.
  3. *Result*: Even if an attacker steals the password, they cannot access the account without physical possession of the smartphone.
]

=== #idx("Symmetric Encryption")
Symmetric encryption uses a single, shared key for both encryption and decryption. Key algorithms include:
- *DES & Triple DES*: Early standards, now largely replaced by more secure methods.
- *AES (Advanced Encryption Standard)*: The global standard for high-security data encryption.
- *Blowfish & Twofish*: Fast and flexible alternatives to traditional standards [cite: 750].


#pagebreak(weak: true)
#figure(
  image("../images/encryption_comparison.jpg", width: 80%),
  caption: [Comparing the mechanics of Symmetric vs. Asymmetric encryption.],
)

=== #idx("Asymmetric Encryption"): The #idx("RSA") Algorithm
Asymmetric encryption uses a pair of keys: a *public key* for encryption and a *private key* for decryption. The *RSA algorithm* is the primary example, relying on the mathematical complexity of factoring large prime numbers [cite: 750].


#pagebreak(weak: true)
#figure(
  image("../images/xkcd_security.jpg", width: 80%),
  caption: [The physical security layer is often the weakest link.#footnote[Source: xkcd.com/538]],
)

=== Storage and Transfer Techniques
Encryption is often paired with other data management techniques:
- *Compression*: Reducing file size for efficient transfer.
- *#idx("Hashing")*: Creating a unique fingerprint for data to ensure it hasn't been tampered with.
- *Checksums*: Simple error-detection methods to verify data integrity during transfer [cite: 751, 765].


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=NuyzuNBFWxQ")[#image("../images/yt_encryption.jpg", width: 100%)],
    [*Video*: How Encryption Works -- A visual guide to symmetric and asymmetric encryption. \ https://www.youtube.com/watch?v=NuyzuNBFWxQ],
  )
]

== Encryption Algorithms and Analysis
Understanding the evolution of encryption provides insight into the complexity of modern security.

=== Classical Encryption Methods
Students analyze and evaluate the foundations of secret writing:
- *Caesar Cipher*: A simple substitution shift.
- *Polyalphabetic Ciphers*: Using multiple substitution alphabets (e.g., Vigenere and Gronsfeld).
- *One-time Pad*: Theoretically unbreakable when keys are truly random and never reused [cite: 762].

=== Modern Algorithmic Contexts
Encryption and data processing algorithms vary significantly based on their application:
- *Machine Learning & Deep Learning*: processing data patterns for prediction.
- *Reinforcement Learning*: Optimizing decisions through feedback loops [cite: 753].

=== Algorithmic Lifecycle
Students develop algorithmic solutions (using pseudocode) to manage the secure exchange of data. This involves predicting how inputs are processed and output at various stages, ensuring constructs like sequence and modularisation are applied effectively [cite: 769, 751].
== Privacy, Ethics, and Data Management
Data exchange is not just a technical process; it is governed by legal and ethical frameworks that protect individuals.

=== Australian Privacy Principles (2014)
Students must understand the *Australian Privacy Principles (2014)*, which outline the standards for handling personally identifiable information (PII). This includes the right for individuals to know why their data is being collected and how it will be used [cite: 757].

=== Data Stewardship
Responsible data management involves:
- *Naming Conventions*: Using consistent and descriptive labels for data fields.
- *Logical Structures*: Organizing data in formats that ensure long-term usability and integrity [cite: 763].

=== Design for Users
The development of data exchange solutions is guided by:
- *Usability Principles*: Ensuring accessibility, effectiveness, safety, utility, and learnability [cite: 754].
- *Visual Communication*: Applying core elements and principles (like contrast and hierarchy) to create clear and helpful user interfaces [cite: 755].

== Network Principles and Performance
The efficiency and reliability of data exchange depend on the underlying network architecture and protocols.

=== Performance Metrics
Students analyze network performance using three critical metrics:
- *#idx("Latency")*: The time delay for a packet to travel across the network.
- *#idx("Jitter")*: The variation in latency, which can cause jittery video or audio.
- *Guarantee of Delivery*: Ensuring that data reaches its destination without loss [cite: 758].

#info-box[
  *Example: Gaming vs. Streaming*
  - *Gaming*: High *Latency* (lag) is the biggest issue. Even a 200ms delay can make a game unplayable.
  - *Streaming*: High *Jitter* is the biggest issue. If video packets arrive at irregular intervals, the video will stutter or buffer, even if the average speed is high.
]

=== Transmission Principles
Core principles govern how data moves through a network:
- *Packet Switching*: Breaking data into small packets for efficient routing.
- *Routing & Forwarding*: Determining the best path for data to travel.
- *Flow Control*: Managing the rate of data transfer to prevent network congestion [cite: 759].

=== Protocols and Standards
Standardized protocols ensure that disparate systems can communicate:
- *TCP/IP*: The fundamental suite of communication protocols for the internet.
- *HTTP/HTTPS*: For web traffic.
- *FTP*: For file transfers.
- *VPN*: For creating secure, encrypted tunnels over public networks [cite: 759].

=== Quality of Service (QoS)
Mechanisms for error detection and correction, alongside *Quality of Service (QoS)*, ensure that high-priority traffic (like video calls) is prioritized over less critical data [cite: 759].

=== The CIA Triad
Data security is evaluated through the *CIA Triad*:
- *Confidentiality*: Ensuring only authorized users can read the data.
- *Integrity*: Ensuring the data hasn't been changed.
- *Availability*: Ensuring the system is accessible when needed [cite: 760].


#pagebreak(weak: true)
#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=HXV3zeQKqGY")[#image("../images/yt_integrity.jpg", width: 100%)],
    [*Video*: Data Validation and Integrity -- Practical techniques for ensuring your database remains accurate and reliable. \ https://www.youtube.com/watch?v=HXV3zeQKqGY],
  )
]

== Modern Data Exchange Methods
Modern digital solutions often involve the exchange of data between disparate systems using standardized formats and interfaces.

=== REST, JSON, and XML
Data exchange is facilitated through:
- *REST (Representational State Transfer)*: An architectural style for networked applications.
- *JSON (JavaScript Object Notation)*: A lightweight, human-readable data format.
- *XML (eXtensible Markup Language)*: A flexible markup language for structured data [cite: 761].

#proof-box[
  *Code Comparison: Data Interchange*
  *JSON (Compact)*:
  ```json
  {"user": "Alice", "id": 101}
  ```
  *XML (Structured)*:
  ```xml
  <data>
    <user>Alice</user>
    <id>101</id>
  </data>
  ```
  *Analysis*: JSON is often preferred for web APIs due to its smaller size and direct compatibility with JavaScript.
]

=== APIs
*Application Programming Interfaces (#idx("API")s)* act as a bridge, allowing different software systems to talk to each other without needing to know their internal implementation details [cite: 761].

#info-box[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=lsMQRaeKNDk")[#image("../images/yt_api_postman.jpg", width: 100%)],
    [*Video*: What is a REST API? -- Standardizing data exchange between systems. \ https://www.youtube.com/watch?v=lsMQRaeKNDk],
  )
]

=== Front-End and Back-End Collaboration
A complete digital solution consists of multiple sub-systems. Students symbolize the relationship between the *front end* (user interaction) and the *back end* (data processing and storage), showing how they collaborate to deliver a functional product [cite: 764].

=== Modeling with DFDs
*Data Flow Diagrams (DFD)* are used to represent the movement of data through these sub-systems, identifying clear relationships and data dependencies [cite: 768].

#figure(
  image("../images/xkcd_standards.jpg", width: 80%),
  caption: [The challenge of universal standards in data exchange!#footnote[Source: xkcd.com/927]],
)

== Revision Questions
1. Compare *Symmetric* and *Asymmetric* encryption. Provide an example algorithm for each.
2. Explain how *Two-Factor Authentication (2FA)* improves security compared to a single password.
3. List the three critical network performance metrics and define *Jitter*.
4. How do the *Australian Privacy Principles (2014)* impact the way developers handle user data?
5. Describe the role of a *REST API* in modern web development.
6. What is the *CIA Triad*, and why is it used to evaluate data security?

---
