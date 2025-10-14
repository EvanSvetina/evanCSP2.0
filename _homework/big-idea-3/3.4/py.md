---
layout: post
title: Escape Room - Strings Homework
description: Quick practice with strings in Python.
permalink: /homework/big-idea-3/3.4/js
Author: Cyrus S, Rishabh J.
---
# AP CSP 3.4 — Python Strings: Free-Response Quiz

This quiz focuses only on Python string operations (no JavaScript). Type your answers and click Check Answers.
- Case-insensitive where appropriate
- Quotes around answers are optional
- True/False accepts yes/no, t/f, 1/0


```python

# Define password for Q8
password = "Escape123!"
password_length = len(password)

# Python-only Strings Quiz
from IPython.display import display, HTML, Javascript
import ipywidgets as widgets

print("🐍 Python Strings — Free-Response Quiz")
print("Answer the questions below and click Check Answers.\n")

# Q1: Slice
q1_label = widgets.HTML("<b>1. What does 'hello'[1:4] return?</b>")
q1 = widgets.Text(placeholder='e.g., ell')

# Q2: Length
q2_label = widgets.HTML("<b>2. What is len('Escape Room')?</b>")
q2 = widgets.Text(placeholder='Enter a number')

# Q3: Lowercase
q3_label = widgets.HTML("<b>3. What does 'Python'.lower() return?</b>")
q3 = widgets.Text(placeholder='e.g., python')

# Q4: Strip
q4_label = widgets.HTML("<b>4. If s = '   CS Rocks!  ', what does s.strip() return?</b>")
q4 = widgets.Text(placeholder='e.g., CS Rocks!')

# Q5: startswith (True/False)
q5_label = widgets.HTML("<b>5. Does 'algorithm' start with 'algo'?</b> (True/False)")
q5 = widgets.Text(placeholder='True/False')

# Q6: count
q6_label = widgets.HTML("<b>6. What is 'banana'.count('an')?</b>")
q6 = widgets.Text(placeholder='Enter a number')

# Q7: find
q7_label = widgets.HTML("<b>7. What index does 'debuggers'.find('bug') return?</b>")
q7 = widgets.Text(placeholder='Enter a number')

# Q8: password length (uses existing variable)
q8_label = widgets.HTML(f"<b>8. What is the length of the password '{password}'?</b>")
q8 = widgets.Text(placeholder='Enter a number')

submit_btn = widgets.Button(description='Check Answers', button_style='success', icon='check')
output = widgets.Output()

def parse_bool_like(s: str):
    v = s.strip().lower()
    if v in {'true','t','yes','y','1'}: return True
    if v in {'false','f','no','n','0'}: return False
    return None

def strip_quotes(s: str):
    return s.strip().strip("'").strip('"')

def clean_str(s: str):
    return s.strip().strip("'").strip('"')

def check_answers(btn):
    with output:
        output.clear_output()
        score, total = 0, 8
        print('📊 QUIZ RESULTS')
        print('='*40)

        # Q1
        a1 = clean_str(q1.value).lower()
        if a1 == 'ell':
            score += 1; print('✅ Q1: CORRECT')
        else:
            print('❌ Q1: INCORRECT — Correct: ell')

        # Q2 (len of 'Escape Room' is 11)
        a2 = clean_str(q2.value)
        if a2.isdigit() and int(a2) == 11:
            score += 1; print('✅ Q2: CORRECT')
        else:
            print('❌ Q2: INCORRECT — Correct: 11 (spaces count)')

        # Q3
        a3 = clean_str(q3.value).lower()
        if a3 == 'python':
            score += 1; print('✅ Q3: CORRECT')
        else:
            print("❌ Q3: INCORRECT — Correct: python")

        # Q4
        a4 = strip_quotes(q4.value)
        if a4 == 'CS Rocks!':
            score += 1; print('✅ Q4: CORRECT')
        else:
            print("❌ Q4: INCORRECT — Correct: CS Rocks!")

        # Q5
        a5 = parse_bool_like(q5.value)
        if a5 is None:
            print('⚠️ Q5: Could not parse. Please answer True/False.')
        elif a5 is True:
            score += 1; print('✅ Q5: CORRECT')
        else:
            print("❌ Q5: INCORRECT — Correct: True")

        # Q6
        a6 = clean_str(q6.value)
        if a6.isdigit() and int(a6) == 2:
            score += 1; print('✅ Q6: CORRECT')
        else:
            print("❌ Q6: INCORRECT — Correct: 2")

        # Q7 ('debuggers'.find('bug') is 2)
        a7 = clean_str(q7.value)
        if a7.isdigit() and int(a7) == 2:
            score += 1; print('✅ Q7: CORRECT')
        else:
            print("❌ Q7: INCORRECT — Correct: 2")

        # Q8 (password length)
        a8 = clean_str(q8.value)
        if a8.isdigit() and int(a8) == password_length:
            score += 1; print('✅ Q8: CORRECT')
        else:
            print(f"❌ Q8: INCORRECT — Correct: {password_length}")

        print('='*40)
        print(f'🎯 Your Score: {score}/{total}')
        print(f'📈 Percentage: {score/total*100:.1f}%')
        try:
            display(Javascript("localStorage.setItem('csp34_hw_py_quiz_tried','true');"))
        except Exception:
            pass

submit_btn.on_click(check_answers)

display(q1_label, q1, q2_label, q2, q3_label, q3, q4_label, q4, q5_label, q5, q6_label, q6, q7_label, q7, q8_label, q8, submit_btn, output)
```

    🐍 Python Strings — Free-Response Quiz
    Answer the questions below and click Check Answers.
    



    HTML(value="<b>1. What does 'hello'[1:4] return?</b>")



    Text(value='', placeholder='e.g., ell')



    HTML(value="<b>2. What is len('Escape Room')?</b>")



    Text(value='', placeholder='Enter a number')



    HTML(value="<b>3. What does 'Python'.lower() return?</b>")



    Text(value='', placeholder='e.g., python')



    HTML(value="<b>4. If s = '   CS Rocks!  ', what does s.strip() return?</b>")



    Text(value='', placeholder='e.g., CS Rocks!')



    HTML(value="<b>5. Does 'algorithm' start with 'algo'?</b> (True/False)")



    Text(value='', placeholder='True/False')



    HTML(value="<b>6. What is 'banana'.count('an')?</b>")



    Text(value='', placeholder='Enter a number')



    HTML(value="<b>7. What index does 'debuggers'.find('bug') return?</b>")



    Text(value='', placeholder='Enter a number')



    HTML(value="<b>8. What is the length of the password 'Escape123!'?</b>")



    Text(value='', placeholder='Enter a number')



    Button(button_style='success', description='Check Answers', icon='check', style=ButtonStyle())



    Output()


## Part 2: Python Password Strength Practice

Here you will make a password strength analyzer in Python. Complete the program so it checks:

- Password length ≥ 8 characters
- Contains uppercase letters
- Contains lowercase letters  
- Contains numbers
- Contains special characters (!@#$%^&*)

Then calculate a strength score and display appropriate feedback.

Try to fix the code to set your own password level.


```python
print("=== Password Strength Analyzer ===")

password = input("What is your password? ")

# Complete the validation checks below
password_length = len(password)
is_long_enough = password_length >= 8
has_uppercase = any(char.isupper() for char in password)
has_lowercase = any(char.islower() for char in password)  
has_numbers = any(char.isdigit() for char in password)
special_chars = "!@#$%^&*"
has_special = any(char in special_chars for char in password)

# Calculate strength score (1 point for each requirement met)
strength_score = sum([is_long_enough, has_uppercase, has_lowercase, has_numbers, has_special])
if strength_score <= 2:
    strength_rating = "Weak"
elif strength_score <= 3:
    strength_rating = "Medium"
else:
    strength_rating = "Strong"

# Generate suggestions for improvement
suggestions = []
if not is_long_enough:
    suggestions.append("Make password longer (at least 8 characters)")
if not has_uppercase:
    suggestions.append("Add uppercase letters")
if not has_lowercase:
    suggestions.append("Add lowercase letters")
if not has_numbers:
    suggestions.append("Add numbers")
if not has_special:
    suggestions.append("Add special characters: !@#$%^&*")

# Display results
print(f"Password: {password}")
print(f"Length: {password_length} characters")
print(f"Strength Score: {strength_score}/5 - {strength_rating}")
print("Requirements met:")
print(f"  Length >= 8: {is_long_enough}")
print(f"  Has uppercase: {has_uppercase}")
print(f"  Has lowercase: {has_lowercase}")
print(f"  Has numbers: {has_numbers}")
print(f"  Has special chars: {has_special}")

if suggestions:
    print("Suggestions for improvement:")
    for suggestion in suggestions:
        print(f"  • {suggestion}")
else:
    print("🎉 Excellent! Your password meets all security requirements!")
```

    === Password Strength Analyzer ===
    Password: SkIbIdI090***
    Length: 13 characters
    Strength Score: 5/5 - Strong
    Requirements met:
      Length >= 8: True
      Has uppercase: True
      Has lowercase: True
      Has numbers: True
      Has special chars: True
    🎉 Excellent! Your password meets all security requirements!

