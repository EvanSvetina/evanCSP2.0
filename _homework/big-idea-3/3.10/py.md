---
layout: post
title: Lists Hacks Python
description: This is a CSP Hacks notebook based on the lists lesson
comments: true
permalink: /homework/big-idea-3/3.10/py
---
# Python Lists Homework

- After going through the lists lesson work on these hacks in your own repository

### Hack 1 – Add Up Numbers

Make a list of numbers. Write code to:
1. Find the total sum.
2. Find the average.


```python
# Hack 1 – Add Up Numbers
numbers = [4, 7, 1, 9, 6, 7, 10]

total = 0
for number in numbers:
    total += number
print(f"total: {total}")

```

    total: 44


### Hack 2 – Count Repeats

Make a list with repeated items. Write code to count how many times each item appears.


```python
# Hack 2 – Count Repeats
items = ["cat", "dog", "cat", "bird", "bird", "bird"]

frequency = {}

for item in items:
    if item in frequency:
        frequency[item] += 1
    else:
        frequency[item] = 1

print(frequency)
```

    {'cat': 2, 'dog': 1, 'bird': 3}


### Hack 3 – Keep Only Evens

Make a list of numbers. Write code to create a new list with only even numbers.


```python
# Hack 3 – Keep Only Evens
numbers = [3, 8, 5, 12, 7, 9, 13, 31, 66, 18]

evens = []
for number in numbers:
    if number % 2 == 0:
        print("even")
        evens.append(number)
    else:
        print("odd, purging")
print(evens)
```

    odd, purging
    even
    odd, purging
    even
    odd, purging
    odd, purging
    odd, purging
    odd, purging
    even
    even
    [8, 12, 66, 18]

