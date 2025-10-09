---
title: "Conditionals in Javascript - Hacks"
description: "Apply your skills to basic algorithmic design with conditionals."
layout: post
permalink: /homework/big-idea-3/3.6/js
---


# 🌐 CSP 3.6 Hacks — Conditionals (JavaScript)

You will complete **three** small programs that use selection with `if`, `else if`, `else` 

Answers to common errors:
- Please select the JavaScript sand fbkernel when running the code, do NOT select python
- If the code reports random errors try pressing restart at the top bar
- If you get stuck on a problem, make comments about what you understand so far and what you are stuck on



## 🟢 Hack 1 — Number Range Checker (Beginner)

**Requirements (spec):**
- Ask for a number.
- If the number is **between 0 and 10** (inclusive), print the number **then** print `Goodbye`.
- Otherwise, print only `Goodbye!`.
- Use one `if / else` and combine comparisons with `&&`.

**Tips:** use `parseInt(..., 10)`; inclusive means `>=` and `<=`.



```python
%%js 
var num = 7;  //  Change this number to test different inputs
if (num >= 0 && num <= 10) {
    console.log(num);
    console.log("it works");
} else {
    console.log("it does not work!");
}
```


    <IPython.core.display.Javascript object>



## 🟡 Hack 2 — Grade Evaluator (Intermediate)

**Requirements (spec):**
- Ask for a grade `0–100`.
- If `grade >= 75`, print two lines: `You get extra credit!` then `Have a good day`.
- Otherwise, print `Have a good day` only.





```python
%%js
let grade = 85;  // Change this grade to test different cases

// TODO:
// If grade >= 90 → print "A" then "Have a good day"
// If grade >= 87 but < 90 → print "Can be rounded to an "A", then "Have a good day"
// Else → print "Have a good day"
if (grade >= 90) {
    console.log("A");
    console.log("Have a good day");
} else if (grade >= 87 && grade < 90) {
    console.log("Can be rounded to an A");
    console.log("Have a good day");
} else {
    console.log("Have a good day");
}
```


    <IPython.core.display.Javascript object>



## 🔵 Hack 3 — Access Pass (Advanced)

**Inputs:** `age` (number), `has_ticket` (`"yes"/"no"`), `vip` (`"yes"/"no"`)

**Rules**
- If `vip === "yes"` → `VIP Entrance`
- Else if `has_ticket === "yes"` **and** `age >= 16` → `General Entrance`
- Else if `has_ticket === "yes"` **and** `age < 16` → `Minor Entrance (with guardian)`
- Else → `No Entrance`

**Tip:** normalize strings with `.trim().toLowerCase()`.



```python
%%js
let age = 15;           //  Change the age
let has_ticket = "yes"; //  Change to "yes" or "no"
let vip = "no";         //  Change to "yes" or "no"
if (vip === "yes") {
    console.log("VIP Entrance");
} else if (has_ticket === "yes" && age >= 16) {
    console.log("General Entrance");
} else if (has_ticket === "yes" && age < 16) {
    console.log("Minor Entrance (with guardian)");
} else {
    console.log("No Entrance");
}
```


    <IPython.core.display.Javascript object>



---
### Reflection: Think about the following question. Answer in 3-4 sentences
- Did any of the question trip you up? If yes, explain the problem and your solution. If no, give a brief, 1-2 sentence summary of conditionals.
- Can you think of real life examples where we would use conditionals? Please do NOT use one of the hacks as a real life example
- How is javascript different from python in terms of conditionals?


---
### 🧾 Turn-in checklist
- [ ] All three hacks run and match the rules above them. 
- [ ] You included at least one changed element for at least one hack, this can be change of message, the range, or the input information (not the input, the prompt for the input). Do not just change the input and call that your personal change.
- [ ] You wrote a 2–3 sentence reflection in your portfolio:  
  - What conditional form did you use most?  
  - What would you like to add to the lesson that would help you better understand the material?

