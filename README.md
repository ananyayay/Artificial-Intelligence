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

<br>
2. For the Second Semester
Cse, Csss, Csai, Csam and Ece, are offered SSH electives based on their interest. Csd is not offered any choice.

<img width="291" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/84b7d10e-19f9-4e13-86d5-a98e10d5a280">

<br>
3. For the Third Semester
Cse, Csam and Ece, are offered SSH electives.
Cse, Csd and Ece are offered Math choices.
Csb, Csss, Csai are not offered any choice.

<br>
<img width="493" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/43c74b7f-4307-4bce-b36e-f817992ea8c6">

<br>
4. For the Fourth Semester
Cse and Ece, are offered SSH electives.
Csd has to choose between math and SSH electives.
Csam, Csss and Csb are offered no choice.
Csai has been given a range of options.
I have implemented the prediction system by prompting the user to tell about their interest. Based on that electives are suggested.

<br>
<img width="641" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/5772f04d-38a3-473a-8c02-c24c4542cf1f">

<br>
5. For the Fifth and Seventh Semester (5 & 7 have same electives)
Here the complexity of the program goes on to increase. All the branches are given a wide range of alternatives and options based on:

- their career choice
- grades in previous courses
- btp and credits acquired

<br>
<img width="519" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/49eabad1-32a6-4db1-8883-39f36566092e">


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

<br>
<img width="404" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/1ab70104-bf19-4756-98eb-1cc0bd0b3dd0">

<br>
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
      - if they have Credits>=22, they are not allowed to take up more courses
5. Asks the student about Interests
      - if they have done BTP, then Interests are asked
6. Finally checks if they have Research and completed BTP, then Extra-curriculars are asked
      - if they are willing to go for Research, further electives are suggested based on Extra-curriculars
        
Functionality is same as the 5th and 7th semesters, just the electives are different
according to the semesters, 6 and 8.

ABOUT THE CODE

Features:

● Lists, Input/ Output, Recursion, Backtracking and Binding have been used.
● Use of Lists
● Recursion and Backtracking in append to list, calculate size, print list

<img width="300" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/7935cf93-7177-4bcb-b87c-066b2a0faae3">

● Binding and facts

<img width="720" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/f9bba5a9-48d0-4105-a08b-45c1c9fc103d">

● Credits evaluation

<img width="431" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/5c9e20f2-088b-41c2-8bc3-bf36586e9803">

● Semester-wise code

<img width="646" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/4ab33342-af4e-4578-a62c-a556f3317613">

● Semester Classification

<img width="329" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/3dcddf5c-2888-4a06-ad0c-ca65f7d51f9f">

## Assignment 2

Show Breadth First Search and A* search on this data.

1. Breadth-First Search
Here I have implemented the bfs algorithm to calculate and print the distance between source city and destination city. It traverses through the branches and neighbours accordingly and gives the result as distance in km.

<img width="444" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/57bc9db5-ef63-4831-a2f6-024ab8dd0fac">

2. A* search
Here I have implemented the A* search algorithm to calculate and print the distance between source city and destination city. It follows f(n) = g(n) + h(n) to do so, where g(n) is the distance till that city, h(n) is the heuristics.

<img width="517" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/2cbad1ff-3eef-49fa-a37f-b5bd6fee4773">

3. Features used:

Lists, Write/ Read, Recursion, Backtracking, Pair, Key-Value list.
Library functions append, pairs, member etc

<img width="483" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/e206719f-efb1-4e20-a706-7d5e248b003f">

<img width="344" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/87c5942b-95a8-4511-bec0-a0d929700bf6">

4. Heuristics:
The heuristics used is Distance_between_cities - 100.

<img width="172" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/2a5048f3-13cb-428c-a2a4-3e25a9967485">


## Assignment 3

Features

- Forward Chaining -> It knows the grades and the subjects pursued by the user, along
with his interests and hobbies, and based on facts it recommends career choices.
- Durable_Rules -> Uses the durable_rules library to make facts
- Concise and clear Console UI

<img width="546" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/446215da-578f-4f66-bd1d-186016cf8a95">

<img width="541" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/9392138c-7025-4b2a-ae86-1fcf9dbf1957">


## Assignment 4

I have performed Job prediction for individuals using Artificial Neural Networks and libraries like sklearn. I was provided with a data set ‘roo.csv’ which contained 20,000 entries with 39 traits of each individual and the final job that they ended up with. The task was to read the entire data, and based on the test set, predict the jobs for the remaining set. This was accomplished by training a machine learning model using ANN’s and MLP classifiers. The entire process is explained below

Data set mapping

<img width="406" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/cc0a62c9-1d7a-47ff-b0b6-16f9247c8641">

Steps for data preparation

The data was first read using the pandas library. Pandas was the preferred choice as it is faster than the conventional python methods of reading a file. Then a list of columns was maintained which contained non-numerical values, to ensure not to encounter data type inconsistencies while normalizing data.

Bucketing the data
A description of the data field was made using pandas. The data field description was used to normalize the data ( make all entries between 0 - 1) to establish a common ground for comparison. After normalization, the data was bucketed. Values above the 75 percentile were given a value of 2, while values between the 25 and 75 percentile were given a value of 1, and the remaining values were given a value of 0.

Experiments Performed
Multiple different experiments were performed to ensure that the model achieved competent accuracy. The occupations of the subjects of the dataset were clubbed into 5 groups so that it becomes easier for the model to classify data. The updated groups were updated in the dataset as well.

The test train splits were also experimented with to get the highest level of accuracy. As of the moment of submission, 4 different test train splits are in the code. The test train splits were 60-40, 70-30, 80-20, and 90-10. As the training data set increased the accuracy of the model increased.

<img width="478" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/ef63c26d-a83a-4fed-8834-43ed5be58bb3">

Analysis of the obtained results
The accuracy of the model was 98% on average. The accuracy of the program can be further improved by reducing the consideration of columns that don’t provide much relevance to the job of the candidate. Lastly, the accuracy can be further improved by adding further data to the training set.


## Assignment 5
Integrated my Assignment 1 advisory system with a Natural Language Interface coded in python.

Input Interface
<br>
<img width="452" alt="image" src="https://github.com/ananyayay/Artificial-Intelligence/assets/84982597/5c28d558-599e-4d24-a47b-1b90f874a5a4">
<br>
It takes input for name, sem, GPA, branch, career choice,
electives already done, BTP interest, Credits done so far,
Interests in Extracurricular Activities.

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
