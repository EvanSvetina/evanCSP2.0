---
toc: true
comments: false
layout: post
categories: [CSP Big Idea 3]
title: 3.2 Data Abstractions JS Hack
author: Jaynee Chauhan, Michelle Ji, Lucas Masterson
description: Hack(s) for intro to data abstractions in JS.
type: ccc
permalink: /homework/big-idea-3/3.2/js
---
## JS Lab: Library

In this lab, similarly to the Python lab, you'll be working on a simple "database" for a library to understand CRUD operations in relation to representing redundant, similar data under one structure -- an abstraction.

For JavaScript, you'll have to open the web console from Developer Tools (`ctrl + shift + p` -> `Developer: Toggle developer tools`).


```python
%%js
// Our "database" is an array of objects, each representing a book in a library.
// Arrays allow us to store multiple records in a single variable, making it easy to manage collections of data.
let library = [
    { title: "1984", author: "George Orwell", checkedOut: false },
    { title: "To Kill a Mockingbird", author: "Harper Lee", checkedOut: true },
    { title: "The Great Gatsby", author: "F. Scott Fitzgerald", checkedOut: false }
];
// Function to display all books
function displayLibrary(lib) {
    console.log("All books in the library:");
    lib.forEach((book, i) => {
        console.log(`Index ${i}:`, book);
    });
}

// Function to add a new book (students: implement prompt and push logic)
function addBook(lib) {
    const title = prompt("Enter book title:");
    const author = prompt("Enter book author:");
    const checkedOutInput = prompt("Is the book checked out? (yes/no):");
    const checkedOut = checkedOutInput.toLowerCase() === "yes";
    lib.push({ title, author, checkedOut });
    console.log(`Book "${title}" added.`);
}

// Function to find a book by title (students: implement search logic)
function findBook(lib, searchTitle) {
    const found = lib.find(book => book.title.toLowerCase() === searchTitle.toLowerCase());
    if (found) {
        console.log("Book found:", found);
    } else {
        console.log(`Book titled "${searchTitle}" not found.`);
    }
}

// Function to update a book's checkedOut status (students: implement update logic)
function updateBook(lib, searchTitle) {
    const book = lib.find(book => book.title.toLowerCase() === searchTitle.toLowerCase());
    if (book) {
        const checkedOutInput = prompt("Update checked out status (yes/no):");
        book.checkedOut = checkedOutInput.toLowerCase() === "yes";
        console.log(`Book "${searchTitle}" updated:`, book);
    } else {
        console.log(`Book titled "${searchTitle}" not found.`);
    }
}

// Function to delete a book (students: implement delete logic)
function deleteBook(lib, searchTitle) {
    const index = lib.findIndex(book => book.title.toLowerCase() === searchTitle.toLowerCase());
    if (index !== -1) {
        const removed = lib.splice(index, 1)[0];
        console.log(`Book "${removed.title}" deleted.`);
    } else {
        console.log(`Book titled "${searchTitle}" not found.`);
    }
}

// Example usage
displayLibrary(library);
// Students: Uncomment and complete the following as you implement
addBook(library);
findBook(library, "1984");
updateBook(library, "To Kill a Mockingbird");
deleteBook(library, "The Great Gatsby");
```


    <IPython.core.display.Javascript object>

