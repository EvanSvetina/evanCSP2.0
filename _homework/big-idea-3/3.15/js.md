---
layout: post
title: "Escape Room 3.15 - Hack"
description: "Extended Javascript challenges and hacks for CSP 3.15 Escape Room - Random Values"
type: hacks
toc: true
comments: true
permalink: /homework/big-idea-3/3.15/js
author: Team Debuggers
---
# 🚀 Escape Room Javascript Hacks

1. Simulate drawing two random cards, where each card has a value between 1 and 10. Show the two card values and their total.



```python
%%js
// TODO: Generate a random value between 1 and 10 for the first card
let card1 = Math.ceil(10 * Math.random())

// TODO: Generate a random value between 1 and 10 for the second card
let card2 = Math.ceil(10 * Math.random())

// TODO: Add the two card values together
let total = card1+card2

// TODO: Print out the results
console.log("Card 1: " + card1);
console.log("Card 2: " + card2);
console.log("Total: " + total);

```


    <IPython.core.display.Javascript object>


2. Create a decision maker where "Definitely" appears 30% of the time


```python
// 🎲 Decision Maker
// Goal: "Definitely" should appear about 30% of the time when you run this code

// TODO: Generate a random number between 1 and 100
let rand = 100*Math.random();

// TODO: Use an if statement to make "Definitely" appear 30% of the time
if (rand <= 30) {
  console.log("Definitely");
} else {
  console.log("Not this time");
}

```

3. Simulate one coin flip and one dice roll.

- The coin flip should be 0 = Heads or 1 = Tails.

- The dice roll should be a number between 1 and 6.

- Print out both results.


```python
%%js
// TODO: Generate a random value 0 or 1 for the coin
let coin = Math.floor(2*Math.random());

if(coin === 1){
    console.log("Coin flip: Tails!");
} else {
    console.log("Coin flip: Heads!");
}

// TODO: Generate a random value between 1 and 6 for the dice
let dice = Math.floor(1+5*Math.random())

// TODO: Print out the dice roll result
console.log("Dice roll: " + dice);

```


    <IPython.core.display.Javascript object>


4. Write code that randomly picks one fortune from a list of 5 possible fortunes and prints it out.


```python
%%js
// TODO: Make a list (array) of fortunes
let fortunes = [d, i, b, h, s];

// TODO: Pick a random index
let index = Math.floor(1+4*Math.random())

console.log("Your fortune: " + fortunes[index]);

```


    <IPython.core.display.Javascript object>

