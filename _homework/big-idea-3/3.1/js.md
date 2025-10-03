---
layout: post
title: "3.1 Variables & Assignments hacks"
categories: [Programming Fundamentals, Tutorial]
tags: [python, javascript, variables, assignment, beginner]
description: Apply your understanding of Variables & Assignments with these hacks
author: Aditya Srivastava, Laya Balaji
permalink: /homework/big-idea-3/3.1/js
---
# 🐷 Peppa Maze Variables & Assignments Hacks
Welcome to the Peppa Maze hacks! These challenges will test your understanding of variables, assignments, and logic in Javascript. Read each task, then write or modify code to solve it.

## Hack 1: JavaScript - Variable Assignment, Naming, and Operators
Create variables for Peppa's name, score, and level using good JavaScript naming conventions. Assign initial values, then use operators to update score (add 10) and level (multiply by 2). Print all results.


```python
%%js
let peppaName = "pegba";
let score = 0;
let level = 1
console.log(peppaName + " is at level " + level + " with a score of " + score + ".");
score = score + 10;
level = level * 2;
console.log(peppaName + " is at level " + level + " with a score of " + score + ".");
// Write your code here
// Create variables for Peppa's name, score, and level
// Use operators to update score and level

```


    <IPython.core.display.Javascript object>


## Hack 2: JavaScript - Variable Declaration, Assignment, and Operators
Declare variables for Peppa and George's scores using good JavaScript naming conventions. Assign initial values, then use operators to update both scores (e.g., Peppa gets 15 points, George loses 5 points). Print both scores.


```python
%%js 
let peppaScore = 19;
let georgeScore = 489;
console.log("peppa has a score of " + peppaScore + " ." + "george has a score of " + georgeScore + " ." );
georgeScore = Math.floor(georgeScore * Math.random());
peppaScore++;
console.log("peppa has a score of " + peppaScore + " ." + "george has a score of " + georgeScore + " ." );

```


    <IPython.core.display.Javascript object>


## Hack 3: JavaScript - Multiple Assignment and Math Operators
Peppa and George both start at level 1. Use a single line to assign both their levels to 5. Then, calculate a combined score by multiplying their levels together and multiplying by 10. Print all results.


```python
%%js 
let peppaLevel = 1;
let georgeLevel = 1;
georgeLevel = peppaLevel = 5
let combinedScore = peppaLevel * georgeLevel * 10;
console.log("peppa has a level of " + peppaLevel + " ." + "george has a level of " + georgeLevel + " ." + "Peppa and George have a combined score of " + combinedScore + ".");
```


    <IPython.core.display.Javascript object>

