#import "../template.typ": *

= Unit 4: Digital impacts

== Chapter 11: Digital Methods for Exchanging Data

*Aims and Objectives:*
- Recognise encryption and authentication strategies.
- Understand network performance metrics and transmission principles.
- Use methods like REST, JSON, and XML for data exchange.

#key-info[
When transferring data over a network, security is paramount. Encryption ensures confidentiality, hashing ensures integrity, and authentication ensures identity.
]

=== Encryption Algorithms
Symmetric encryption uses the same key to encrypt and decrypt data (e.g., AES). Asymmetric encryption uses a public key to encrypt and a private key to decrypt (e.g., RSA).

#historical[
The Caesar cipher, named after Julius Caesar, is one of the simplest and most widely known encryption techniques. It is a substitution cipher where each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.
]

=== Revision Questions
1. Differentiate between symmetric and asymmetric encryption.
2. Explain how a hashing algorithm ensures data integrity.
3. Compare JSON and XML as formats for data exchange.

---

== Chapter 12: Complex Digital Data Exchange Problems

*Aims and Objectives:*
- Analyse factors and risks affecting data security and privacy.
- Develop data flow diagrams for complex exchanges.
- Evaluate the impact of emerging technologies in data exchange.

#women-in-tech[
Joan Clarke was an English cryptanalyst and numismatist best known for her work as a code-breaker at Bletchley Park during the Second World War. Her work on the Enigma project that decrypted Nazi Germany's secret communications earned her awards and citations.
]

=== Revision Questions
1. What are the Australian Privacy Principles, and how do they impact software developers?
2. Define latency and jitter in the context of network performance.
3. How can machine learning be used to detect anomalies in data exchange networks?

---

== Chapter 13: Prototype Digital Data Exchanges

*Aims and Objectives:*
- Use a suitable programming environment to implement data exchange.
- Manipulate JSON/XML data.
- Evaluate solutions against success criteria.

#code-columns(
  "// Worked Example 1: Parse JSON
// Extract 'name' from a JSON string.
BEGIN
  json_string = '{ \"name\": \"Alice\", \"age\": 18 }'
  data = PARSE_JSON(json_string)
  PRINT data.name
END",
  "// Worked Example 1: Parse JSON
const jsonString = '{ \"name\": \"Alice\", \"age\": 18 }';
const data = JSON.parse(jsonString);
console.log(data.name);",
  "# Worked Example 1: Parse JSON
import json
json_string = '{ \"name\": \"Alice\", \"age\": 18 }'
data = json.loads(json_string)
print(data['name'])"
)

#code-columns(
  "// Worked Example 2: Caesar Cipher Encrypt
// Shift letters by 3.
BEGIN
  FUNCTION encrypt(text, shift)
    result = \"\"
    FOR EACH char IN text:
      new_char = SHIFT_CHAR(char, shift)
      result = result + new_char
    ENDFOR
    RETURN result
  ENDFUNCTION
END",
  "// Worked Example 2: Caesar Cipher Encrypt
function encrypt(text, shift) {
  let result = \"\";
  for (let i = 0; i < text.length; i++) {
    let charCode = text.charCodeAt(i);
    // Simplified: assumes all uppercase letters
    result += String.fromCharCode((charCode - 65 + shift) % 26 + 65);
  }
  return result;
}",
  "# Worked Example 2: Caesar Cipher Encrypt
def encrypt(text, shift):
    result = \"\"
    for char in text:
        # Simplified: assumes all uppercase letters
        result += chr((ord(char) - 65 + shift) % 26 + 65)
    return result"
)

#code-columns(
  "// Scaffolded Question 1: Stringify JSON
// Convert an object to a JSON string.
BEGIN
  student = CREATE_OBJECT(name=\"Bob\", grade=\"A\")
  json_string = ______ (student)
  PRINT json_string
END",
  "// Scaffolded Question 1: Stringify JSON
const student = { name: \"Bob\", grade: \"A\" };
const jsonString = JSON.______(student);
console.log(jsonString);",
  "# Scaffolded Question 1: Stringify JSON
import json
student = { \"name\": \"Bob\", \"grade\": \"A\" }
json_string = json.______(student)
print(json_string)"
)

#code-columns(
  "// Scaffolded Question 2: Simple API Fetch
// Fetch data from a REST API endpoint.
BEGIN
  url = \"https://api.example.com/data\"
  response = ______ GET url
  PRINT response.data
END",
  "// Scaffolded Question 2: Simple API Fetch
const url = \"https://api.example.com/data\";
fetch(url)
  .then(response => response.json())
  .then(data => console.log(______));",
  "# Scaffolded Question 2: Simple API Fetch
import requests
url = \"https://api.example.com/data\"
response = requests.______(url)
print(response.______())"
)

#code-columns(
  "// Unscaffolded Question 1: Fetch and Parse XML
// Write an algorithm to fetch XML from a URL and extract a specific node.
",
  "// Unscaffolded Question 1: Fetch and Parse XML
// Write a JavaScript function to fetch and parse XML.
",
  "# Unscaffolded Question 1: Fetch and Parse XML
# Write a Python function using xml.etree.ElementTree to parse fetched XML.
"
)

#code-columns(
  "// Unscaffolded Question 2: Vigenère Cipher
// Write an algorithm to encrypt a string using the Vigenère cipher.
",
  "// Unscaffolded Question 2: Vigenère Cipher
// Write a JavaScript function to perform Vigenère encryption.
",
  "# Unscaffolded Question 2: Vigenère Cipher
# Write a Python function to perform Vigenère encryption.
"
)

=== Revision Questions
1. Why is data compression important when transmitting data over a network?
2. Describe the role of an API in data exchange.
3. Discuss the economic impacts of a major data breach on a business.
