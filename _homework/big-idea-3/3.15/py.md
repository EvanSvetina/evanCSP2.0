---
layout: post
title: "Escape Room 3.15 - Hacks & Extensions"
description: "Extended Python challenges and hacks for CSP 3.15 Escape Room - Random Values"
type: hacks
toc: true
comments: true
permalink: /homework/big-idea-3/3.15/py
author: Team Debuggers
---

# 🚀 Escape Room Python Hacks


1. Simulate rolling two dice and show all possible sums of their outcomes.


```python
import random

sums = []
for i in range(1, 7):
    for j in range(1, 7):
        sums.append(i + j)
print("All possible sums of two dice rolls:", sorted(set(sums)))
```

    All possible sums of two dice rolls: [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]


2. Create a fortune teller program. The response "Try Again" should appear 40% of the time, while the other possible responses are "Yes", "No", and "Maybe".


```python
import random
num = random.randint(1, 100)
# 🔮 Fortune Teller
# TODO: Generate a random number between 1 and 100

if num <= 40:
    print("Try Again")
elif num <= 60:
    print("Yes")
elif num <= 80:
    print("No")
else:
    print("Maybe")

```

    Try Again


3. Create a program that randomly selects a meal from a menu list. For example: "Pizza", "Burger", "Salad", "Pasta", "Sushi".


```python
import random

# 🍔 Menu list of meals
meals = ["goon juice", "white monster", "$6 sushi special", "cheese pizza", "pohano"]

meal = meals[random.randint(0, 4)]
print(meal)
```

    pohano


4. Practice using random.choice() and random.shuffle().

- Use random.choice() to select one random card from a deck.

- Use random.shuffle() to shuffle the entire deck.


```python
import random

# 🃏 Deck of cards (simplified as numbers 1–10 for this example)
deck = [1,2,3,4,5,6,7,8,9,10]

card = random.choice(deck)
random.shuffle(deck)
print(card)
print(deck)
```

    4
    [5, 3, 7, 8, 2, 1, 6, 4, 10, 9]

