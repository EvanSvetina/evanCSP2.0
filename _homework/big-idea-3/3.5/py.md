---
layout: post
title: Boolean Logic in Programming
description: Boolean Hacks For Students To Try In Python
comments: false
permalink: /homework/big-idea-3/3.5/py
comments: true
---
# 🔑 Boolean Hacks in Python: A Few New Codes!

This notebook has short Boolean challenges. Edit the code where it says `TODO` to make it work.

## Challenge 1: Positive Number
Fix the condition so it prints `num is positive` if the number is greater than 0.


```python
num = 899993  # Try changing this number!

# TODO: change the condition
if num > 0:  # <-- wrong, fix this
    print(num, "is positive")
else:
    print(num, "is NOT positive")
```

    899993 is positive


## Challenge 2: Is Even?
Change the condition so it prints `num is even` when the number is divisible by 2.


```python
num = 2934924380

# TODO: check if num is even
if ((num) % 2) == 0: 
    print(num, "is even")
else:
    print(num, "is odd")
```

    2934924380 is even


## Challenge 3: Teenager Check
Print `Teenager` if age is between 13 and 19 (inclusive). Otherwise print `Not Teenager`. Fix the condition.


```python
age = 15

# TODO: fix the condition
if 13 <= age <= 19:  # <-- wrong
    print("hoy es Teenager")
else:
    print("Not Teenager")
```

    hoy es Teenager


## Challenge 4: Lamp Logic
We have two switches: `a` and `b`. The lamp should turn ON if **at least one** is True.

Fix the condition.


```python
a, b = False, False

# TODO: fix condition for at least one True
if a or b:  # <-- wrong
    print("Lamp is ON")
else:
    print("Lamp is OFF")
```

    Lamp is OFF

