# Artificial-Intelligence
This repository has 5 assignments from the course Artificial Intelligence.

## Assignment 1

ADVISORY SYSTEM

Functionality:

● The program runs for students of every branch and can suggest electives for all their semesters.

● Till the 4th semester, the offered electives are suggested and the derivation is straightforward.

● 5th sem onwards, the suggestions are made on a priority basis:

      ○ Their career plan is kept foremost
    
      ○ If the necessary courses according to the career choice have been done.
    
      ○ Marks obtained in the essential courses.
      
      ○ If BTP has been completed.
      
      ○ If credits are over the allowed number of credits
      
      ○ Finally, electives based on their interests.
    
● The system takes into account the necessary courses, relevance to career and finally the driving interest towards the courses.

● The freedom of electives has been taken care of. Interbranch electives are suggested as and when found suitable

### Semester wise actions:

1. For the First Semester
Here no elective courses are available to anyone despite the branch. Thus, just a Hello to the user.

<img width="379" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/99f28c82-f1b7-420b-9419-5e0aded52098">

2. For the Second Semester
Cse, Csss, Csai, Csam and Ece, are offered SSH electives based on their interest. Csd is not offered any choice.

<img width="291" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/84b7d10e-19f9-4e13-86d5-a98e10d5a280">

3. For the Third Semester
Cse, Csam and Ece, are offered SSH electives.
Cse, Csd and Ece are offered Math choices.
Csb, Csss, Csai are not offered any choice.

<img width="493" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/43c74b7f-4307-4bce-b36e-f817992ea8c6">

4. For the Fourth Semester
Cse and Ece, are offered SSH electives.
Csd has to choose between math and SSH electives.
Csam, Csss and Csb are offered no choice.
Csai has been given a range of options.
I have implemented the prediction system by prompting the user to tell about their interest. Based on that electives are suggested.

<img width="641" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/5772f04d-38a3-473a-8c02-c24c4542cf1f">


5. For the Fifth and Seventh Semester (5 & 7 have same electives)
Here the complexity of the program goes on to increase. All the branches are given a wide range of alternatives and options based on:

- their career choice
- grades in previous courses
- btp and credits acquired

<img width="519" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/49eabad1-32a6-4db1-8883-39f36566092e">

<br>

<img width="651" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/a391f5dc-cf32-4179-8af2-629b266e8244">

<br>

<img width="541" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/8434e544-1601-4d41-acf2-174582985878">

<br>

<img width="478" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/b622cbdc-4002-4d32-b915-ccee6d97b4b1">

<br>

<img width="501" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/6a214406-e345-4a61-b521-ef3823b18b2d">

<br>

<img width="529" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/317d7392-fb66-48e7-919b-63607bad365d">

<br>

<img width="544" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/175df43d-760f-43ba-a797-92a63e7c1e86">

<img width="444" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/1ab70104-bf19-4756-98eb-1cc0bd0b3dd0">

6. For the Sixth and Eighth Semester (6 & 8 have same electives)
Here the complexity of the program goes on to increase. All the branches are
given a wide range of alternatives and options based on:
- their career choice
- grades in previous courses
- btp and credits acquired
1. Checks if the student has minimum requirements for the career choice.
- if not done then it is suggested to complete the basic courses.
2. Checks if grades are more than 7 in each of them
- if it is suggested to repeat the courses if grades are less than 7
3. Checks if BTP is completed or not
- if they don’t want to repeat, BTP is asked
- if they have not done BTP, it is suggested to complete it
- also checks if Credits are enough for a BTP
4. Checks if Credits are not enough for a BTP or a course
- if they have Credits>=22, they are not allowed to take up more
courses
5. Asks the student about Interests
- if they have done BTP, then Interests are asked
6. Finally checks if they have Research and completed BTP, then
Extra-curriculars are asked
- if they are willing to go for Research, further electives are suggested
based on Extra-curriculars
Functionality is same as the 5th and 7th semesters, just the electives are different
according to the semesters, 6 and 8.

## Assignment 2

## Assignment 3

## Assignment 4

## Assignment 5
Integrated my Assignment 1 advisory system with a Natural Language Interface coded in python.

Input Interface
<br>
<img width="452" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/5c28d558-599e-4d24-a47b-1b90f874a5a4">
<br>
It takes input for name, sem, GPA, branch, career choice,
electives already done, BTP interest, Credits done so far,
Interests in, and Extracurricular Activities.

Output
This is presented in the swi prolog window.
It suggests electives based on the info collected above.

NLP used
Smaller case - all text was converted to lower in python prog.
Tokenization - sentence like “yeah i have done this” was
converted into “yes” fact in prolog

<br>
<img width="458" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/611eab21-6a8c-4b76-a65a-1f48972bd89b">
<br>
