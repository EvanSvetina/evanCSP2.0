---
layout: post
title: "Crashers - 3.17 Algorithmic Efficiency Javascript Hacks"
categories: [Javascript]
tags: [python, javascript, algorithms, lesson, beginner]
description: Learn about algorithms and how they can be more or less efficient
permalink: /homework/big-idea-3/3.17/js
---
## Algorithmic Efficiency Hacks: Javascript

Let's test your knowledge on algorithmic efficiency!

### Hack 1: How Much Time?

#### Objective: write the time complexity of the algorithm below using Big-O notation.
(don't worry about special cases such as n = 1 or n = 0).


```javascript
%%javascript
let n = 10; // change this value to test different outputs!

for (let i = 0; i < n * 2; i++) {
    console.log(i);
}

console.log("O(n)")
//TODO: print the above algorithm's time complexity
//BE CAREFUL - This one might trick some people. Remember that Big-O notation shows how much an algorithm's time complexity GROWS, so coefficients don't matter...
```


    <IPython.core.display.Javascript object>


### Hack 2: Your Turn!

#### Objective: <strong>write</strong> an algorithm with O(n^2) time complexity.


```javascript
%%javascript
const n = 10; // change this if you want.
for (let i = 0; i < n; i++){
    console.log("i=" + i);
    while (i + n < 2n){
        n--
        
    }
    console.log("n=" + n);
}
//TODO: Write an algorithm with O(n^2) time complexity
//Hint: think about nested loops...
```


    <IPython.core.display.Javascript object>


### Hack 3: Gotta Go Fast!

#### Objective: Optimize this algorithm so that it has a lower time complexity <strong>without modifying the outer loop</strong>


```javascript
%%javascript
const n = 10; // change this
let count = 0;

for(let i = 0; i < n; i++){ //Outer loop, DO NOT MODIFY
        count += i;
}
console.log(count);

//TODO: Modify the algorithm so that it has a lower time complexity but same output, and keep the outer loop the same
//Hint: This algorithm has a time complexity of O(n^2).
```


    <IPython.core.display.Javascript object>


### Hack 4: Extra Challenge 

#### Objective: Write an algorithm that does <strong>NOT</strong> have a time complexity of O(1), O(n), or O(n^x) and identify the time complexity
##### (I will not accept O(n^3) or some other power, it needs to be more complex.)


```python
%%js
function fib(n) {
  if (n < 0) {
    return "undefined";
  } else if (n === 0) {
    return 0;
  } else if (n === 1) {
    return 1;
  }

  let a = 0;
  let b = 1;
  for (let i = 2; i <= n; i++) {
    let store = a + b;
    a = b;
    b = store;
  }
  return b;
}
//TODO: Write an algorithm that has a more complicated time complexity than O(n^x).
//Complexity: 2^n
console.log(fib(37))


function factorial(n) {
  let temp = 1;
  for (let i = n; i > 0; i-=1){
    temp = temp * i;
  }
  console.log(n+ " factorial = " + temp);
}
factorial(19)

```


    <IPython.core.display.Javascript object>

