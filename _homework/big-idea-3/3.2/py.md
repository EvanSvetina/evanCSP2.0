---
toc: true
comments: false
layout: post
categories: [CSP Big Idea 3]
title: 3.2 Data Abstractions Python Hack
author: Jaynee Chauhan, Michelle Ji, Lucas Masterson
description: Hack(s) for intro to data abstractions in Python.
type: ccc
permalink: /homework/big-idea-3/3.2/py
---
## Python Lab: Simple DBs

In this lab, you'll be working on a simple "database" system consisting of dictionaries. The idea here is to understand some basic CRUD actions and how you can use data abstractions (dictionaries in this case) to represent redundant, similar data under a unified structure.

You'll have to do some research about some Python syntax for this!

You can complete the Python lab by simply running your code and getting your outputs in the Jupyter notebook.


```python
# Our "database" is a list of dictionaries, each representing a record (e.g., a student)
# Lists allow us to store multiple records in a single variable, making it easy to manage collections of data.
db = [
    {"name": "Alice", "age": 16, "grade": "A"},
    {"name": "Bob", "age": 17, "grade": "B"},
    {"name": "Charlie", "age": 16, "grade": "C"}
]

# Lists provide order and allow us to add, remove, or update records efficiently.
# Each element in the list is a dictionary, which abstracts the details of each student.

# Function to display all records
def display_db(database):
    print("All records in the list:")
    for i, record in enumerate(database):
        print(f"Index {i}: {record}")

# Function to add a new record (students: implement input and append logic)
def add_record(database):
    # Prompt the user to enter name, age, and grade separated by commas
    user_input = input("Enter name, age, and grade separated by commas: ")
    # Split the input string into a list of values
    name, age, grade = [item.strip() for item in user_input.split(",")]
    # Create a new dictionary for the student record
    new_record = {"name": name, "age": int(age), "grade": grade}
    # Append the new record to the database (list)
    database.append(new_record)
    pass

# Function to find a record by name (students: implement search logic)
def find_record(database, search_name):
    for record in database:
        if record["name"] == search_name:
            print(f"Record found: {record}")
            return record
    print("Record not found.")
    pass

# Function to update a record (students: implement update logic)
def update_record(database, search_name):
    for record in database:
        if record["name"] == search_name:
            print(f"Current record: {record}")
            user_input = input("Enter new name, age, and grade separated by commas: ")
            name, age, grade = [item.strip() for item in user_input.split(",")]
            record["name"] = name
            record["age"] = int(age)
            record["grade"] = grade
            print(f"Record updated: {record}")
            return
    print("Record" + search_name + " not found.")
    pass

# Function to delete a record (students: implement delete logic)
def delete_record(database, search_name):
    for i, record in enumerate(database):
        if record["name"] == search_name:
            del database[i]
            print(f"Record deleted: {record}")
            return
    print("Record not found.")
    pass

# Example usage
display_db(db)
add_record(db)
find_record(db, "Alice")
find_record(db, "gregorio the great")
update_record(db, "Bob")
delete_record(db, "Charlie")
find_record(db, "Charlie")

```

    All records in the list:
    Index 0: {'name': 'Alice', 'age': 16, 'grade': 'A'}
    Index 1: {'name': 'Bob', 'age': 17, 'grade': 'B'}
    Index 2: {'name': 'Charlie', 'age': 16, 'grade': 'C'}
    Record found: {'name': 'Alice', 'age': 16, 'grade': 'A'}
    Record not found.
    Current record: {'name': 'Bob', 'age': 17, 'grade': 'B'}
    Record updated: {'name': 'sajdh', 'age': 4, 'grade': 'eeee'}
    Record deleted: {'name': 'Charlie', 'age': 16, 'grade': 'C'}
    Record not found.

