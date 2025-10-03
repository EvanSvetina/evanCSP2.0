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
    
    # Determine big idea
    if [[ $notebook == *"data_abst"* ]]; then
        idea="3.2"
    elif [[ $notebook == *"variable"* ]]; then
        idea="3.1"
    elif [[ $notebook == *"boolean"* ]]; then
        idea="3.5"
    elif [[ $notebook == *"codemaxx"* ]] || [[ $notebook == *"mathematical"* ]]; then
        idea="3.3"
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