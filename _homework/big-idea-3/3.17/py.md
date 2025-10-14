---
layout: post
title: "Crashers - 3.17 Algorithmic Efficiency Python Hacks"
categories: [Python]
tags: [python, javascript, algorithms, lesson, beginner]
description: Learn about algorithms and how they can be more or less efficient
permalink: /homework/big-idea-3/3.17/py
---

## Algorithmic Efficiency Hacks: Python

Let\'s test your knowledge on algorithmic efficiency!

### Hack 1: How Much Time?

#### Objective: write the time complexity of the algorithm below using Big-O notation. {#objective-write-the-time-complexity-of-the-algorithm-below-using-big-o-notation}

(don\'t worry about special cases such as n = 1 or n = 0).
``` python
n = int(input()) # remember what O(n) means? This is a good way of visualizing n.

for i in range(n):
    print(i)

print("O(n)")
```
    0
    1
    2
    3
    4
    5
    6
    O(n)
### Hack 2: Your Turn!

#### Objective: `<strong>`{=html}write`</strong>`{=html} an algorithm with O(n\^2) time complexity. {#objective-write-an-algorithm-with-on2-time-complexity}

``` python
n = int(input())
for i in range(n):
    for j in range(n):
        print("quadratic complexity oooooh")

```

    quadratic complexity oooooh
    quadratic complexity oooooh
    quadratic complexity oooooh
    quadratic complexity oooooh
    quadratic complexity oooooh
    quadratic complexity oooooh
    quadratic complexity oooooh
    quadratic complexity oooooh
    quadratic complexity oooooh

### Hack 3: Gotta Go Fast!

#### Objective: Optimize this algorithm so that it has a lower time complexity `<strong>`{=html}without modifying the outer loop`</strong>`{=html}

``` python
import math
n = int(input())
count = 0

for i in range(n):
        count += math.ceil(math.sqrt(n)*2)

print(count)
```

### Hack 4: Extra Challenge

#### Objective: Write an algorithm that does `<strong>`{=html}NOT`</strong>`{=html} have a time complexity of O(1), O(n), or O(n\^x) and identify the time complexity

##### (I will not accept O(n\^3) or some other power, it needs to be more complex.) {#i-will-not-accept-on3-or-some-other-power-it-needs-to-be-more-complex}

``` python
n = int(input())
def exponential_complexity(n):
    for i in range(2 ** n):
        print(f"Step {i+1}")

exponential_complexity(n)
```

    Step 1
    Step 2
    Step 3
    Step 4
    Step 5
    Step 6
    Step 7
    Step 8
    Step 9
    Step 10
    Step 11
    Step 12
    Step 13
    Step 14
    Step 15
    Step 16
    Step 17
    Step 18
    Step 19
    Step 20
    Step 21
    Step 22
    Step 23
    Step 24
    Step 25
    Step 26
    Step 27
    Step 28
    Step 29
    Step 30
    Step 31
    Step 32
