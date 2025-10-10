---
toc: true
layout: post
categories: [Python]
title: Remakers - 3.13 Developing Procedures Python Hacks
description: "Apply your skills to basic procedure development in Javascript."
permalink: /homework/big-idea-3/3.13/py
author: Krishna Visvanath, Sloane Sommers
---
### Q1 (Easy)
Which of these procedures is named well, provide a **short** explanation of justification


```python
def mix_ingredients():

def do_it(): # this one is bad
    #too vague, doesnt really help

def make_move():
```

**Explanation Here:**
__ is right because..

NUH UH IM DOING IT IN COMMENTS AAAAAHAHAHAHAHAAAA

### Q2 (Medium)
Finish the code to have a correctly named procedure


```python

def move_forward():
    print("Moving forward.")

def rotate_90_left():
        print("Turning left")
        
def make_left_turn():
    move_forward()
    rotate_90_left()
    move_forward()

# Run the procedure
if __name__ == '__main__':
    make_left_turn()
```

    Moving forward.
    Turning left
    Moving forward.


### Q3 (Hard)
Write code to fulfill the requirements
Doing a dance! 🕺💃
Must have
1. A shimmy left procedure
- Print `super cool left slide`
2. A shimmy right procedure, print `even cooler right slide`
3. Doing a bow to the crowd, print `Great dance!`, `the audience claps at your bow!`


```python
def shimmy_left():
    print("sliiide to the left")
def shimmy_right():
    print("sliiiiide to the right")
def bow_crowd():
    print("criss cross!!!! cha cha real smooth")

def dance_moves():
    shimmy_left()
    shimmy_right()
    bow_crowd()

if __name__ == '__main__':
    dance_moves()
```

    sliiide to the left
    sliiiiide to the right
    criss cross!!!! cha cha real smooth

