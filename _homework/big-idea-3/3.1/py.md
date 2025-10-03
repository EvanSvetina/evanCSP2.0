---
layout: post
title: "3.1 Variables & Assignments hacks - Python"
categories: [Programming Fundamentals, Tutorial]
tags: [python, variables, assignment, beginner]
description: Apply your understanding of Variables & Assignments with these Python hacks
permalink: /homework/big-idea-3/3.1/py
author: Aditya Srivastava
---
# 🐷 Peppa Maze Variables & Assignments Hacks (Python)
Welcome to the Peppa Maze hacks! These challenges will test your understanding of variables, assignments, and logic in Python. Read each task, then write or modify code to solve it.

## Hack 1: Python - Variable Assignment, Naming, and Operators
Create variables for Peppa's name, score, and level using good Python naming conventions. Assign initial values, then use operators to update score (add 10) and level (multiply by 2). Print all results.


```python
p_score = 15
p_level = 83764563
print("peppa has a score of " + str(p_score) + ". " + "peppa has a level of " + str(p_level) + ". ")
p_score = p_score+10
p_level = p_level*2
print("peppa has a score of " + str(p_score) + ". " + "peppa has a level of " + str(p_level) + ". ")

```

    peppa has a score of 15 .peppa has a level of 83764563 .
    peppa has a score of 25 .peppa has a level of 167529126 .


## Hack 2: Python - Variable Declaration, Assignment, and Operators
Declare variables for Peppa and George's scores using good Python naming conventions. Assign initial values, then use operators to update both scores (e.g., Peppa gets 15 points, George loses 5 points). Print both scores.


```python
peppa_score = 25  
george_score = 20  

peppa_score += 15    
george_score -= 5   

print("Peppa's score:", peppa_score)
print("George's score:", george_score)
```

    Peppa's score: 40
    George's score: 15


## Hack 3: Python - Multiple Assignment and Math Operators
Peppa and George both start at level 1. Use Python's multiple assignment feature to assign both their levels to 5 in one line. Then, calculate a combined score by multiplying their levels together and multiplying by 10. Print all results.


```python
peppa_level, george_level = 5, 5
combined_score = peppa_level * george_level * 10
print("Peppa's level:", peppa_level)
print("George's level:", george_level)
print("Combined score:", combined_score)
```

    Peppa's level: 5
    George's level: 5
    Combined score: 250

