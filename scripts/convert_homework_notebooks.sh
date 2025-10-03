#!/bin/bash

# Script to update permalinks in notebooks to /homework/big-idea-3/3.X/py or /js format

echo "Updating permalinks in homework/big-idea-3 notebooks..."

find homework/big-idea-3 -name "*.ipynb" | while read notebook; do
    echo "Processing: $notebook"
    
    # Determine if it's Python or JavaScript based on filename
    if [[ $notebook == *"_py_"* ]] || [[ $notebook == *"python"* ]]; then
        lang="py"
    elif [[ $notebook == *"_js_"* ]] || [[ $notebook == *"javascript"* ]]; then
        lang="js"
    else
        echo "  Cannot determine language (py/js) from filename, skipping..."
        continue
    fi
    
    # Extract the big idea number (3.1, 3.2, 3.3, etc.)
    # Looking for patterns like "data_abstractions" -> 3.2, "variables" -> 3.1, "boolean" -> 3.4
    if [[ $notebook == *"data_abstraction"* ]]; then
        idea="3.2"
    elif [[ $notebook == *"variable"* ]]; then
        idea="3.1"
    elif [[ $notebook == *"boolean"* ]]; then
        idea="3.4"
    elif [[ $notebook == *"codemaxx"* ]] || [[ $notebook == *"math"* ]]; then
        idea="3.3"
    else
        echo "  Cannot determine big idea number, skipping..."
        continue
    fi
    
    new_permalink="/homework/big-idea-3/$idea/$lang"
    
    # Use Python to update the permalink in the notebook JSON
    python3 << EOF
import json

with open('$notebook', 'r') as f:
    nb = json.load(f)

# Find and update the permalink in the first raw cell
for cell in nb['cells']:
    if cell['cell_type'] == 'raw':
        content = ''.join(cell['source'])
        if 'permalink:' in content:
            lines = content.split('\n')
            for i, line in enumerate(lines):
                if 'permalink:' in line:
                    lines[i] = 'permalink: $new_permalink'
                    break
            cell['source'] = '\n'.join(lines)
            break

# Write back to file
with open('$notebook', 'w') as f:
    json.dump(nb, f, indent=1)

print("  Updated permalink to: $new_permalink")
EOF

done

echo ""
echo "Done! All permalinks updated."
echo ""
echo "Add this to your _config.yml:"
echo ""
echo "collections:"
echo "  homework:"
echo "    output: true"
echo "    permalink: :path"