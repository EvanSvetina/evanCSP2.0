#!/bin/bash

echo "Converting notebooks in homework/big-idea-3 to markdown..."

find homework/big-idea-3 -name "*.ipynb" | while read notebook; do
    echo "Processing: $notebook"
    
    # Determine language
    if [[ $notebook == *"_py"* ]] || [[ $notebook == *"python"* ]]; then
        lang="py"
    elif [[ $notebook == *"_js"* ]] || [[ $notebook == *"javascript"* ]] || [[ $notebook == *"java"* ]]; then
        lang="js"
    else
        echo "  Skipping - cannot determine language"
        continue
    fi
    
    # Determine big idea - CSP Big Idea 3 Topics
    if [[ $notebook == *"variable"* ]] || [[ $notebook == *"3.1"* ]]; then
        idea="3.1"  # Variables and Assignments
    elif [[ $notebook == *"data_abst"* ]] || [[ $notebook == *"3.2"* ]]; then
        idea="3.2"  # Data Abstraction
    elif [[ $notebook == *"codemaxx"* ]] || [[ $notebook == *"mathematical"* ]] || [[ $notebook == *"math"* ]] || [[ $notebook == *"3.3"* ]]; then
        idea="3.3"  # Mathematical Expressions
    elif [[ $notebook == *"string"* ]] || [[ $notebook == *"3.4"* ]]; then
        idea="3.4"  # Strings
    elif [[ $notebook == *"boolean"* ]] || [[ $notebook == *"3.5"* ]]; then
        idea="3.5"  # Boolean Expressions
    elif [[ $notebook == *"conditional"* ]] || [[ $notebook == *"3.6"* ]]; then
        idea="3.6"  # Conditionals
    elif [[ $notebook == *"nested"* ]] || [[ $notebook == *"3.7"* ]]; then
        idea="3.7"  # Nested Conditionals
    elif [[ $notebook == *"iteration"* ]] || [[ $notebook == *"loop"* ]] || [[ $notebook == *"3.8"* ]]; then
        idea="3.8"  # Iteration
    elif [[ $notebook == *"list"* ]] || [[ $notebook == *"array"* ]] || [[ $notebook == *"3.10"* ]]; then
        idea="3.10"  # Lists
    elif [[ $notebook == *"search"* ]] || [[ $notebook == *"3.11"* ]]; then
        idea="3.11"  # Binary Search
    elif [[ $notebook == *"procedure"* ]] || [[ $notebook == *"function"* ]] || [[ $notebook == *"3.12"* ]]; then
        idea="3.12"  # Calling Procedures
    elif [[ $notebook == *"parameter"* ]] || [[ $notebook == *"3.13"* ]]; then
        idea="3.13"  # Developing Procedures
    elif [[ $notebook == *"library"* ]] || [[ $notebook == *"3.14"* ]]; then
        idea="3.14"  # Libraries
    elif [[ $notebook == *"random"* ]] || [[ $notebook == *"3.15"* ]]; then
        idea="3.15"  # Random Values
    elif [[ $notebook == *"simulation"* ]] || [[ $notebook == *"3.16"* ]]; then
        idea="3.16"  # Simulations
    elif [[ $notebook == *"algorithm"* ]] || [[ $notebook == *"3.17"* ]]; then
        idea="3.17"  # Algorithmic Efficiency
    elif [[ $notebook == *"undecidable"* ]] || [[ $notebook == *"3.18"* ]]; then
        idea="3.18"  # Undecidable Problems
    else
        echo "  Skipping - cannot determine big idea"
        continue
    fi
    
    # Get base filename without extension
    filename=$(basename "$notebook" .ipynb)
    
    # Create target directory
    target_dir="_homework/big-idea-3/$idea"
    mkdir -p "$target_dir"
    
    # Convert to markdown
    jupyter nbconvert --to markdown "$notebook" --output-dir="$target_dir" --output="$lang"
    
    echo "  Created: $target_dir/$lang.md"
done

echo ""
echo "Done! Restart your Jekyll server to see changes."