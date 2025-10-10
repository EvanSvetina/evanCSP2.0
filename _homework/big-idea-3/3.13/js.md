---
toc: true
layout: post
categories: [JavaScript]
title: Remakers - 3.13 Developing Procedures JS Hacks
description: "Apply your skills to basic procedure development in Javascript."
permalink: /homework/big-idea-3/3.13/js
author: Krishna Visvanath, Sloane Sommers
---
### Q1 (Easy)
Which of these procedures is named wrong, provide a **short** explanation of justification

```python
%%js

function mixIngredients()

function doIt() //this is wrong
//too vague to be usable in a complex coding environment

function makeLeftTurn()
```

**Explanation Here:**
__ is right because..

### Q2 (Medium)
Finish the code to have a correctly named procedure


```python
%%js
function moveForward () {
    console.log("Moving forward.");
}

function rotateLeft (){
    console.log("Turning left.");
}
function makeLeftTurn() {
    moveForward();
    rotateLeft();
    moveForward();
}
//Run the procedure
makeLeftTurn()
//IM NOT DOING THAT ITS FASTER TO REUSE THE MOVE FORWARD COMMAND :ANGRY:

```


    <IPython.core.display.Javascript object>



### Q3 (Hard)
Write code to fulfill the requirements
Doing a dance! 🕺💃
Must have
1. A shimmy left procedure
- Print `super cool left slide`
2. A shimmy right procedure, print `even cooler right slide`
3. Doing a bow to the crowd, print `Great dance!`, `the audience claps at your bow!`


```python
%%js
function shimmyLeft() {
    console.log("super cool left slide");
}

function shimmyRight() {
    console.log("even COOLER right slide");
}

function bowCrowd() {
    console.log("Thank you, all! And for my next trick, I'll make all the crypto in your wallet disappear!");
}

function danceRobbery() {
    shimmyLeft();
    shimmyRight();
    bowCrowd();
}
danceRobbery();
```


    <IPython.core.display.Javascript object>

