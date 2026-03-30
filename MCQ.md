---
layout: post
title: MCQ
hide: false
---

# MakeUp of 2021 Practice Exam MCQ — Results
![img of score](image.png)
**Score: 68/70**

## MCQ: Review

I completed the MakeUp of 2021 Practice Exam MCQ and scored a 68/70. I felt very confident going into this one and my score reflects that. The vast majority of questions were straightforward for me, and I only slipped up on two. Compared to previous practice exams, this was a strong improvement and showed that my studying has been paying off.

Now, I will go into the questions I got wrong and include why I got them wrong and how to do better in the future.

---

## Corrections

### Content Issues (2)

- **Restaurant Spreadsheet Question (Filtering/Sorting Algorithm):** This question involved a spreadsheet of restaurant data and asked which sequences of filter/sort steps would correctly identify the highest-rated restaurant that accepts credit cards. I selected "II and III only," but the correct answer was "I, II, and III" — meaning *all* orderings work. My mistake was not recognizing that because the filters preserve relative row order, the filtering steps can happen either before or after the sort and still produce the correct result. I need to think more carefully about how stable filtering operations interact with sorting rather than assuming order dependence.

- **isIncreasing Procedure (Logic/Debugging):** This question presented a procedure meant to return `true` if a list is increasing and `false` otherwise, but it had a bug. I needed to identify the fix. The key insight was that the procedure, as written, returns `true` when it finds a value *less than* its predecessor and `false` if it never does — which is the opposite of the intended behavior. The fix is to swap lines 8 and 12 (interchange `RETURN(true)` and `RETURN(false)`). I need to slow down and carefully trace through the logic of procedures, paying close attention to what each return value actually means in context.

---

## Summary of Stuff to Work On

- Strengthen understanding of how filtering and sorting operations interact, especially regarding order independence when filters are stable
- Practice tracing through pseudocode procedures carefully, particularly around return value logic and early exits
- Continue doing practice exams to maintain momentum — the 68/70 shows solid progress