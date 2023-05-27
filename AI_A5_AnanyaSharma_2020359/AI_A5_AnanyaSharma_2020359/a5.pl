interest(1, 'Networks', ['Networks and System Security II', 'Foundations of Parallel Programing','Information Retrieval',  'Theories of Deep Learning']).
interest(2, 'Design', ['Design of Interactive Systems','Introduction to Motion and Graphics', 'Game Design and Development','Introduction to Motion and Graphics']).
interest(3, 'Maths', ['Introduction to Mathematical logic','Graph Theory','Advanced Linear Algebra']).
interest(4, 'Psychology/Social Sciences', ['Cognitive Psychology','Social Psychology','Information Technology and Society','Advanced Sociological Theory']).
interest(5, 'Biology', ['Algorithms in Computational Biology','Data science in Genomics','Big Data Mining in Healthcare','Computer Aided Drug Design']).
interest(6, 'Electrical', ['Mixed Signal Design','VLSI Design Flow','Machine Learning Techniques for Real Time Control']).


% facts with the order - [Number, Field, Semester Code,Relevant Courses]
electivesFacts( 1, 'Data Analysis', 11, ['ML', 'Data Science', 'Math 3', 'PnS'] ).
electivesFacts( 2, 'Artificial Intelligence', 11, ['Artificial Intelligence', 'Machine Learning', 'Deep Learning', 'NLP']).
electivesFacts( 3, 'Software Development', 11, ['Data Structures and ALgorithms', 'Algorithm Design and Analysis', 'DBMS', 'CN'] ).
electivesFacts( 4, 'Research', 11,  ['ML', 'Data Science', 'Math 3', 'PnS']).


electivesFacts( 1, 'Data Analysis', 10, ['ML', 'Data Science', 'Math 3', 'PnS'] ).
electivesFacts( 2, 'Artificial Intelligence', 10, ['Artificial Intelligence', 'Machine Learning', 'Deep Learning', 'NLP']).
electivesFacts( 3, 'Software Development', 10, ['Data Structures and ALgorithms', 'Algorithm Design and Analysis', 'DBMS', 'CN'] ).
electivesFacts( 4, 'Research', 10, ['ML', 'Data Science', 'Math 3', 'PnS']).


field(1, 'Data Analysis').
field(2, 'Artificial Intelligence').
field(3, 'Software Development').
field(4, 'Research').

%Menu Functions


menuDisplay(Name, Sem, Branch):-
    write('Choose 1-3: \n1.Show Electives\n2.Restart\n3.Terminate.'),
    nl,read(Num),
    (Num==1 -> electives(Branch, Sem);
     Num==2 -> start;
     Num==3 -> exit()
    ).


%Helper Functions
hello(Name, Sem, Branch, Gpa):-
    year(Sem, X),
    format('Hello ~w, ~w branch!\nYou are in ' ,[Name, Branch]),
    (X==1 -> format('~wst', X);
    X==2 -> format('~wnd', X);
    X==3 -> format('~wrd', X);
    X==4 -> format('~wth', X)
    ),write(' year!!'),nl,nl,

    Gpa>=7-> write('You have a good GPA! Nice.\n'); write('Try to improve your GPA!\n').


year(Sem, X):-
    ( (Sem==1; Sem==2) -> X is 1;
      (Sem==3; Sem==4) -> X is 2;
      (Sem==5; Sem==6) -> X is 3;
      (Sem==7; Sem==8) -> X is 4
    ).

ssh3():-
    write('Electives for the SSH courses:\n\n'),
    printList(['Key Concepts in Economic Sociology','Research Methods in Social Science and Design', 'Social and Political Philosophy']).

ssh4():-
    write('Electives for the SSH courses:\n\n'),
    printList(['Ethics in AI (New)','Information Technology and Society', 'Science, Technology and Society']).

appendl([], L2, L2).
appendl([H|T], L2, [H|L3]):- appendl(T, L2, L3).


listSize([], 0).
listSize([_|Y], N ):- listSize(Y, N1), N is N1+1.


printList([]).
printList([H|T]):- write(H), nl, printList(T).


electivesML(CourseList):-
    write('\nEnter grades of each of them: '),
    write('\n1. ML:  '), read(GradeML),
    write('2. Data Science:  '), read(GradeDM),
    write('3. Math 3:  '), read(GradeMath3),
    write('4. PnS:  '), read(GradePnS),nl, nl,

    GradeML <7 -> appendl([], ['Machine Learning'], CourseList);
    GradeDM <7 -> appendl([], ['Data Science'], CourseList);
    GradeMath3 <7 -> appendl([], ['Math 1'], CourseList);
    GradePnS <7 -> appendl([], ['Math 2'], CourseList).


gradesML(CourseList, X):-
    X>0 -> write('\nYou have a low grade in this course. Try improving the grades in the same!\n - '),  printList(CourseList).


btpInterest(Field):-
    btp(Yn),nl,
    cred(Cred),
    (   
        Yn==no -> creds(Cred, Field);

        (Cred is 24; Cred is 22)-> write('You can\'t take more courses, all set to go!'),exit();

        Yn==yes ->  electivesInterest(Field)

    ), exit().



creds(Cred, Field):-
         Cred == 24 -> write('You can\'t take more courses, all set to go!');
         Cred == 22 -> write('You can\'t take another course!');
         Cred == 20 -> write('If you are willing to take overload this semester, go for a BTP in Data Analysis!');
         Cred == 18 -> format('Go for a BTP in ~w!', Field);
         Cred == 16 -> format('Go for a BTP in ~w!', Field),
         exit().
        


repeatCourse(Ch, X):-
    field(Ch, Field),
    repeat(Rep),nl,
    (
        Rep== yes-> write('It is suggested to repeat courses less than 7 grade.\n'), printList(X)  ;
        Rep== no-> btpInterest([Field])
    ), exit().



electivesInterest([H|_]):-

    write('Looks like you have it all sorted! You have\n - done the necessary courses,\n - completed them with good grades\n - and have taken up a BTP as well!\nLet\'s find out your interest and walk on the path of your field!\n'),
    interest_final(Interest),

    write('\nFollowing are the relevant courses!\n\n'),
    interest(Interest, _, X), printList(X),nl,

    (
        H== 'Research' -> extra(Extra), nl,
        write('Since you are researching, following are more courses for you to explore!\n1. Entrepreneurial Khichadi\n2. Neuroscience of Decision Making\n3. Gender and Media\n4. Environmental Science')
    ), exit().



% Electives For Semester 5 AND 7 Students
semester(Branch, 11):-
    nl,
    future(Ch),
    elec_done(Elec),

    (
        Elec== no -> write('Following are the relevant courses!\n'), electivesFacts(Ch, _, 11, X), printList(X);
        Elec== yes ->  electivesFacts(Ch, _, 11, X), repeatCourse(Ch, X)

    ), exit().

% Electives For Semester 6 AND 8 Students
semester(Branch, 10):-
    nl, write('\nWhere do you see yourself in 5 years... \nWhat is your career choice?\n1. Data Analysis \n2. Artificial Intelligence\n3. Software Development\n4. Research\n\n'),

    read(Ch),nl, nl,write('\nHave you done all of the following courses? (yes/no)\n'), nl,

    electivesFacts(Ch, _, 10, X) , printList(X),
    read(Choice),

    (
        Choice== no -> write('Following are the relevant courses!\n'), printList(X);
        Choice== yes ->  repeatCourse(Ch)
    ).


% Electives For Semester 1 Students
semester(Branch, 1):-
    write('\nNo electives to choose in 1st sem, see you next time!'), exit().

% Electives For Semester 2 Students
semester(Branch, 2):-    
    nl,
    Branch==csd  -> write('\nNo electives to choose in 2nd sem, see you next time!');
    Branch==csss -> write('\nYou should go with one of the following courses!\n1. Introduction to Sociology.\n2. Anthropology');
    
    (Branch==cse ; Branch==csb; Branch==csai; Branch==csam; Branch==ece)-> 
    write('You have these SSH courses to choose from!\n\n'),
    printList(['Democracy in India: Principles and Practices', 'Nation and her Narratives', 'Introduction to Digital Ethnography'])

    ; nl,exit().

% Electives For Semester 3 Students
semester(Branch, 3):-
    nl,
    (Branch==csb ;Branch==csss; Branch==csai) -> write('No electives to choose in 3rd sem, see you next time!');
    Branch== cse -> ssh3(), write('\nOther electives: \n\n'), printList(['Math3', 'Signals & Systems', 'Embedded Logic Design']);
    Branch== ece -> ssh3() , write('\nOther electives: \n\nAdvanced Programming');
    Branch== csam -> ssh3();
    Branch== csd -> write('You should go with one of the following courses!\nDiscrete Mathematics\nMultivariate Calculus\n')
    ; nl,exit().


% Electives For Semester 4 Students
semester(Branch, 4):-
    interest_sem4(Ch),
    nl,

    (Branch==csam;Branch==csss; Branch==csb ) -> write('\nNo electives to choose in 3rd sem, see you next time!');
    Branch== ece -> ssh4();

    Branch== csd -> write('\nYou should go with the following courses!\n'),
    interest_sem4(Ch),
    (
        Ch==1 -> ssh4();
        Ch==2 -> write('\nMaths IV\nTheory of Computation\n')
    );

    
    Branch== csai -> write('\nYou should go with the following electives: \n'),
    interest_sem4(Ch),
    (
        Ch==1-> printList(['Ethics in AI', 'Maths IV', 'Statistical Inference']);
        Ch==2-> printList(['Graph Theory', 'Introduction to Mathematical Logic','Theory of Computation']);
        Ch==3-> printList(['Fundamentals of Database Management Systems','Computer Organization'])
    );

    Branch== cse ->  write('\nYou should go with the following electives: \n'),
    nl,
    interest_sem4(Ch),
    (
        Ch==1-> printList(['Ethics in AI', 'Maths IV', 'Statistical Inference']);
        Ch==2-> printList(['Graph Theory', 'Introduction to Mathematical Logic','Theory of Computation']);
        Ch==3-> printList(['Fundamentals of Database Management Systems','Computer Organization'])
    );
    exit().


electives(Branch, Sem):-
    (Sem==1;Sem==2;Sem==3; Sem==4)  -> semester(Branch, Sem);
    
    (Sem==5; Sem==7) -> semester(Branch, 11);
    
    (Sem==6; Sem==8) -> semester(Branch, 10).
    

check:-
    write('We'), nl,
    write(Name).

start:-
    nl,nl,write('Welcome to the Advisory! Let\'s discuss your dilemmas :)'),nl,nl,
    
    consult('facts.txt'),
    name_fact(Name),
    branch_fact(Branch),
    sem_fact(Sem),
    gpa_fact(Gpa),
    
    hello(Name,Sem, Branch, Gpa),
    
    electives(Branch, Sem),


exit().