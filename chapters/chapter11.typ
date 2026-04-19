#import "@preview/bookly:3.0.0": *
#import "../utils.typ": *
#show: chapter.with(title: "Digital Methods for Exchanging Data", label: <ch:11>)

*Aims and Objectives:*
- Recognise encryption and authentication strategies for secure transmission.
- Analyse classical and modern encryption algorithms.
- Apply privacy principles and ethical considerations to data management.
- Understand network performance metrics and core transmission principles.
- Utilize modern data exchange methods including REST, JSON, and APIs.

#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=m4h8NqQG9Y0")[#image("../images/yt_ct.jpg", width: 100%)],
    [*Video*: IA2 Development Breakdown -- Preparing for the text-based programming internal assessment. \ https://www.youtube.com/watch?v=m4h8NqQG9Y0],
  )
]

== Security and Authentication Strategies
Securing data as it travels across networks is a multi-layered challenge involving identity verification and robust mathematical protection.

=== Identity and Authentication
Authentication strategies ensure that only authorized users can access sensitive data. Students distinguish between:
- *Two-Factor / Multi-Factor Authentication (2FA/MFA)*: Using verification codes sent to trusted devices.
- *Biometrics*: Using physical characteristics like fingerprints or facial recognition for identity verification [cite: 748, 749].

#women[
  *Dorothy Denning* #index("Denning, Dorothy") is an American computer scientist known for her pioneering work in cryptography and network security. She developed several models for secure information flow and was one of the first to propose intrusion detection systems (IDS). Her research into the "lattice model" of secure information flow and her work on digital signatures and data encryption have made her one of the most influential figures in modern cybersecurity.#footnote[Source: #link("https://www.nsa.gov/History/Cryptologic-History-Vault/Historical-Figures/Dorothy-Denning/")[National Security Agency. *Dorothy Denning: Hall of Honor*].]

  #quotation(attribution: "Dorothy Denning")[Information is the currency of the digital age.]
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



#figure(
  image("../images/encryption_comparison.jpg", width: 80%),
  caption: [Comparing the mechanics of Symmetric vs. Asymmetric encryption.],
)

=== #idx("Asymmetric Encryption"): The #idx("RSA") Algorithm
Asymmetric encryption uses a pair of keys: a *public key* for encryption and a *private key* for decryption. The *RSA algorithm* is the primary example, relying on the mathematical complexity of factoring large prime numbers [cite: 750].



#figure(
  image("../images/xkcd_security.jpg", width: 80%),
  caption: [The physical security layer is often the weakest link.#footnote[Source: xkcd.com/538]],
)

=== Storage and Transfer Techniques
Encryption is often paired with other data management techniques:
- *Compression*: Reducing file size for efficient transfer.
- *#idx("Hashing")*: Creating a unique fingerprint for data to ensure it hasn't been tampered with.
- *Checksums*: Simple error-detection methods to verify data integrity during transfer [cite: 751, 765].



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=sdpxddDzXfE")[#image("../images/yt_encryption.jpg", width: 100%)],
    [*Video*: The Science of Secrets -- An introduction to how encryption protects digital data. \ https://www.youtube.com/watch?v=sdpxddDzXfE],
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

=== The Australian Privacy Principles (APPs)
The *#idx("Australian Privacy Principles (APPs)")* are a set of 13 rules under the *Privacy Act 1988* that govern how organizations handle personal information. Key principles include:
- *APP 1: Open and Transparent Management*: Organizations must have a clear, up-to-date privacy policy.
- *APP 3: Collection of Solicited Info*: Only collect information that is *necessary* for the function.
- *APP 5: Notification*: Users must be informed when their data is collected and for what purpose.
- *APP 6: Use or Disclosure*: Data can only be used for the purpose it was collected.
- *APP 11: Security of Personal Info*: Reasonable steps must be taken to protect data from misuse or loss.

#info-box[
  *The Value of Data as a Commodity*
  In the digital age, data is often compared to "new oil." Corporations and *#idx("Data Brokers")* aggregate personal information to drive business decisions, predict consumer behavior, and tailor products. This commercial value creates a powerful incentive for collection, making ethical stewardship and legal compliance (like the APPs) critical.
]

=== #idx("De-identification")
To balance open data needs with privacy, organizations use *de-identification*—removing or altering personal information so individuals cannot be identified.
1. *Removing Direct Identifiers*: Deleting names, addresses, and ID numbers.
2. *Generalizing Indirect Identifiers*: Changing a birth date to a birth year or a specific address to a postcode.
3. *Data Masking*: Adding "noise" to the data to prevent re-identification through cross-referencing.

== Network Principles and Performance
The efficiency and reliability of data exchange depend on the underlying network architecture and protocols.

=== The CIA Triad
The *#idx("CIA Triad")* is the foundational model for information security:
- *#idx("Confidentiality")*: Ensuring only authorized users can access the data (often through encryption).
- *#idx("Integrity")*: Ensuring data remains accurate and hasn't been tampered with (using hashing or checksums).
- *#idx("Availability")*: Ensuring the system and data are accessible when needed (protecting against DDoS or hardware failure).

#quotation(attribution: "Bruce Schneier")[Security is a process, not a product.#footnote[Source: #link("https://www.schneier.com/")[Schneier.com].]]

#figure(
  image("../images/cia_triad.png", width: 60%),
  caption: [The CIA Triad: Confidentiality, Integrity, and Availability.#footnote[Source: digital-solutions-text-2025]],
)

=== Performance Metrics
Students analyze network performance using three critical metrics:
- *#idx("Latency")*: The time delay for a packet to travel from source to destination.
- *#idx("Jitter")*: The variation in latency (crucial for streaming and VoIP).
- *#idx("Guarantee of Delivery")*: Assurance that data reaches its destination (Quality of Service - QoS).



#video[
  #grid(
    columns: (100pt, 1fr),
    column-gutter: 1em,
    link("https://www.youtube.com/watch?v=HXV3zeQKqGY")[#image("../images/yt_integrity.jpg", width: 100%)],
    [*Video*: Data Integrity in Databases -- Why accuracy matters for security. \ https://www.youtube.com/watch?v=HXV3zeQKqGY],
  )
]

== Modern Data Exchange Methods
Modern digital solutions often involve the exchange of data between disparate systems using standardized formats and interfaces.

=== REST, JSON, and XML
Data exchange is facilitated through:
- *REST (Representational State Transfer)*: An architectural style for networked applications.
- *JSON (JavaScript Object Notation)*: A lightweight, human-readable data format.
- *XML (eXtensible Markup Language)*: A flexible markup language for structured data [cite: 761].

#code-box[
  *Pseudocode Plan: Data Interchange*
  ```pseudocode
  DEFINE user_data AS {user: "Alice", id: 101}
  ```

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      *JSON Format*
      ```json
      {"user": "Alice", 
       "id": 101}
      ```
    ],
    [
      *XML Format*
      ```xml
      <data>
        <user>Alice</user>
        <id>101</id>
      </data>
      ```
    ]
  )

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      *JavaScript Access*
      ```javascript
      // Accessing JSON
      console.log(data.user);
      ```
    ],
    [
      *Python Access*
      ```python
      # Accessing JSON
      print(data["user"])
      ```
    ]
  )
  *Analysis*: JSON is often preferred for web APIs due to its smaller size and direct compatibility with modern programming dictionaries and objects.
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

However, the proliferation of APIs and protocols often leads to a fragmented landscape of competing standards.

#figure(
  image("../images/xkcd_standards.jpg", width: 80%),
  caption: [The challenge of universal standards in data exchange!#footnote[Source: xkcd.com/927]],
)

== Online Resources

To further your understanding of secure data exchange and personal privacy, explore these specialized resources:

- *Data Privacy and Protection*:
  - #link("https://www.security.org/data-removal/data-broker/")[Security.org: The World of Data Brokers] -- A deep dive into how personal information is aggregated and sold as a commodity.
  - #link("https://au.pcmag.com/security/110363/personal-data-removal-services-how-they-work-and-why-you-need-one")[PCMag: Data Removal Services] -- Understanding the tools available to protect your digital footprint.
  - #link("https://www.oaic.gov.au/privacy/australian-privacy-principles")[OAIC: Australian Privacy Principles] -- The official regulatory guide to the 13 APPs that govern data handling in Australia.
- *Modern Data Interchange*:
  - #link("https://www.postman.com/")[Postman] -- The industry-standard tool for building, testing, and using REST APIs.
  - #link("https://www.json.org/json-en.html")[JSON.org] -- The official technical specification for the JavaScript Object Notation data format.
  - #link("https://www.w3.org/XML/")[W3C: XML] -- Documentation and standards for the eXtensible Markup Language.

== Revision Questions

1. Compare *Symmetric* and *Asymmetric* encryption. Provide an example algorithm for each.
2. Explain how *Two-Factor Authentication (2FA)* improves security compared to a single password.
3. List the three critical network performance metrics and define *Jitter*.
4. How do the *Australian Privacy Principles (2014)* impact the way developers handle user data?
5. Describe the role of a *REST API* in modern web development.
6. What is the *CIA Triad*, and why is it used to evaluate data security?

---

