---
layout: post
title: Lists Hacks Javascript
description: This is a CSP Hacks notebook based on the lists lesson
comments: true
permalink: /homework/big-idea-3/3.10/js
---
# Javascript Lists Homework

- After going through the lists lesson work on these hacks in your own repository

### Hack 1 – Add Up Numbers

Make a list of numbers. Write code to:
1. Find the total sum.
2. Find the average.


```python
%%js
let numbers = [4, 7, 1, 9, 6, 7, 10];
let total = 0;
for(let number of numbers){
    total += number
}
console.log(total);

```


    <IPython.core.display.Javascript object>


### Hack 2 – Count Repeats

Make a list with repeated items. Write code to count how many times each item appears.


```python
%%js
let items = ["cat", "dog", "cat", "bird", "bird", "bird"];
let frequency = {};
for(let item of items) {
    if(frequency[item]){
        frequency[item]++;
    } else {
        frequency[item] = 1;
    }
}
console.log(frequency)
```


    <IPython.core.display.Javascript object>


### Hack 3 – Keep Only Evens

Make a list of numbers. Write code to create a new list with only even numbers.


```python
%%js
let numbers = [3, 8, 5, 12, 7, 9, 13, 31, 66, 18];

let evens = [];
for(let number of numbers){
    if(number % 2 == 0){
        evens.push(number)
    }
}
console.log(evens)
```


    <IPython.core.display.Javascript object>

