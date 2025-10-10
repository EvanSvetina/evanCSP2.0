---
layout: post
title: Crashers - 3.9 Developing Algorithms Python Hacks
categories: [Python]
tags: [python, javascript, variables, assignment, beginner]
description: Learn how to develop algorithms through the Peppa Pig Maze game
permalink: /homework/big-idea-3/3.9/py
---

# 🐷 Peppa's Algorithm Adventures - Python Hacks

Welcome to Peppa's algorithm challenges! Complete these three hacks to master algorithm development with interactive Python examples.

## Hack 1: Peppa's Number Comparison Algorithm 🔢

Create algorithms that use Boolean expressions to compare numbers, just like in the lesson!

**Your task:** Complete the missing Boolean conditions to help Peppa make smart decisions.

```python
def algorithm_a_find_maximum(a, b):
    if a > b:
        return a
    else:
        return b

def algorithm_b_find_maximum(a, b):
    return a if a > b else b

def peppa_decision_maker():
    peppa_coins = 15
    toy_price = 12
    
    print("🐷 Peppa's Decision Algorithm")
    print(f"Peppa has {peppa_coins} coins")
    print(f"Toy costs {toy_price} coins")
    
    can_buy_toy = peppa_coins >= toy_price
    
    if can_buy_toy:
        print("✅ Peppa can buy the toy!")
    else:
        print("❌ Peppa needs more coins!")
    
    return can_buy_toy

print("=== Testing Maximum Algorithms ===")
x, y = 10, 7
print(f"Algorithm A result: {algorithm_a_find_maximum(x, y)}")
print(f"Algorithm B result: {algorithm_b_find_maximum(x, y)}")

print("\n=== Peppa's Decision ===")
peppa_decision_maker()
```

## Hack 2: George's Simple Movement Algorithm 🦖

Create a simple movement algorithm like the maze example from the lesson!

**Your task:** Complete the Boolean conditions to control George's movement.

```python
def george_movement_algorithm():
    george_x = 2
    george_y = 1
    
    max_x = 4
    max_y = 3
    min_x = 0
    min_y = 0
    
    print("🦖 George's Movement Algorithm")
    print(f"George is at position ({george_x}, {george_y})")
    print(f"Boundaries: x(0-{max_x}), y(0-{max_y})")
    
    print("\n--- Testing Movement ---")
    
    new_x = george_x + 1
    can_move_right = new_x <= max_x
    
    print(f"Move right to ({new_x}, {george_y}): {'✅ Valid' if can_move_right else '❌ Invalid'}")
    
    new_y = george_y + 1
    can_move_up = new_y <= max_y
    
    print(f"Move up to ({george_x}, {new_y}): {'✅ Valid' if can_move_up else '❌ Invalid'}")
    
    new_x = george_x - 1
    can_move_left = new_x >= min_x
    
    print(f"Move left to ({new_x}, {george_y}): {'✅ Valid' if can_move_left else '❌ Invalid'}")

def interactive_movement():
    print("\n🎯 Interactive Movement Test")
    
    x, y = 1, 1
    
    direction = input("Which way should George move? (up/down/left/right): ").lower()
    
    if direction == "right":
        new_x, new_y = x + 1, y
    elif direction == "left":
        new_x, new_y = x - 1, y
    elif direction == "up":
        new_x, new_y = x, y + 1
    elif direction == "down":
        new_x, new_y = x, y - 1
    else:
        print("❌ Invalid direction!")
        return
    
    is_valid_move = (0 <= new_x <= 4) and (0 <= new_y <= 3)
    
    if is_valid_move:
        print(f"✅ George moved {direction} to ({new_x}, {new_y})")
    else:
        print(f"❌ Can't move {direction} - out of bounds!")

george_movement_algorithm()
interactive_movement()
```

## Hack 3: Peppa's Pathfinding Adventure 🗺️

Create a pathfinding algorithm to help Peppa navigate through different terrains to reach her friends! This combines Boolean logic, conditional statements, and algorithm design.

**Your task:** Implement different pathfinding strategies and compare their effectiveness using interactive visualizations.

```python
def peppa_maze_pathfinder():
    maze = [
        [2, 0, 1, 0, 0],
        [0, 0, 1, 0, 1], 
        [0, 1, 0, 0, 0],
        [0, 0, 0, 1, 0],
        [1, 0, 0, 0, 3]
    ]
    
    def display_maze(path=None):
        symbols = {0: "⬜", 1: "⬛", 2: "🐷", 3: "👫"}
        print("\n🗺️ Peppa's Maze:")
        for r in range(5):
            row = ""
            for c in range(5):
                if path and (r, c) in path:
                    row += "🟨"
                else:
                    row += symbols[maze[r][c]]
            print(row)
    
    def is_valid_move(row, col):
        if row < 0 or row >= 5 or col < 0 or col >= 5:
            return False
        if maze[row][col] == 1:
            return False
        return True
    
    def find_path():
        start = (0, 0)
        goal = (4, 4)
        
        from collections import deque
        
        queue = deque([(start, [start])])
        visited = {start}
        
        directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]
        
        while queue:
            (row, col), path = queue.popleft()
            
            if (row, col) == goal:
                return path
            
            for dr, dc in directions:
                new_row, new_col = row + dr, col + dc
                new_pos = (new_row, new_col)
                
                if is_valid_move(new_row, new_col) and new_pos not in visited:
                    visited.add(new_pos)
                    new_path = path + [new_pos]
                    queue.append((new_pos, new_path))
        
        return None
    
    print("🎮 Welcome to Peppa's Mini Maze!")
    display_maze()
    
    path = find_path()
    if path:
        print("✅ Path found!")
        display_maze(path)
        print(f"Path length: {len(path)} steps")
        print(f"Path coordinates: {path}")
    else:
        print("❌ No path found! The maze might be unsolvable.")

peppa_maze_pathfinder()
```

## 📝 What You Should Complete

**After finishing the lesson, you should be able to:**

1. **Hack 1**: Fill in the Boolean comparison operators (`<=`, `>=`, `<`, `>`) to make the decision algorithms work correctly
2. **Hack 2**: Complete the Boolean conditions for George's movement validation (checking boundaries)
3. **Hack 3**: The pathfinding algorithm is complete! Run it and understand how BFS works to find the shortest path through the maze

**🎯 Learning Objectives:**
- Understand how Boolean expressions control program flow
- Learn to implement boundary checking with comparison operators
- See how pathfinding algorithms use queues and visited sets
- Practice reading and debugging algorithm implementations