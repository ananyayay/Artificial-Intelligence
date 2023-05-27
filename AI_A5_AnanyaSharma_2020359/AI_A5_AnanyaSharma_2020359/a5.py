import nltk
nltk.download('punkt')
from nltk.tokenize import word_tokenize
from nltk.stem import PorterStemmer
# from pyswip import Prolog

file=open( r"C:\Users\anan yaya\Desktop\anan\code\ai_a5\a5\facts.txt" , 'w')

name = input('Hello, please enter your name: ')
file.write('name_fact('+name+').\n')

branch = input('What is your branch? ')
file.write('branch_fact('+branch+').\n')

sem = input('What is your sem? ')
file.write('sem_fact('+sem+').\n')

gpa = input('What is your GPA? ')
file.write('gpa_fact('+gpa+').\n')



interest = ""


def func():
    
    if sem== '4' :
        if(branch== 'csd'):
            print('What are you more interested in?: \n1. Social Sciences\n2. Maths/Algorithms\n'),
            num = input()
            file.write('interest_sem4('+num+').\n')
        
        elif(branch== 'csai' or  branch== 'cse' ):
            print('What are you most likely to practice in future?\n1. Artificial Intelligence\n2. Algorithm Design\n3. Software Development\n'),
            num = input()
            file.write('interest_sem4('+num+').\n')
        
        else:
            file.write('interest_sem4('+0+').\n')

    if sem== '7' or sem== '5' or sem=='6' or sem=='8':
        print('\nWhere do you see yourself in 5 years... \nWhat is your career choice?\n1. Data Analysis \n2. Artificial Intelligence\n3. Software Development\n4. Research\n')
        num = input()        
        file.write('future('+num+').\n')

        inputs=[]
        ans=input("Have you done all of its electives? ")
        ans = ans.lower()
        words=word_tokenize(ans)
        inputs=inputs+words        

        if 'maybe' in inputs or 'no' in inputs or 'nope' in inputs or 'not' in inputs:
            file.write('elec_done(no).\n')

        
        elif 'yes' in inputs or 'yeah' in inputs or 'y' in inputs:
            file.write('elec_done(yes).\n')
            repeat = input('Would you want to repeat them and improve? ')
            if(repeat=='yes'):
                file.write('repeat(yes).\n')
            else:
                file.write('repeat(no).\n')
                btp = input('\nHave you completed your BTP? ')
                file.write('btp('+btp+').\n')
                cred = input('\nHow many credits have you already taken? (16/18/20/22/24) ')
                file.write('cred('+cred+').\n')

                if( cred!='22' and cred!='24' and btp=='yes'):
                    interest_final = input('What interests you most?\n1. Networks\n2. Design\n3. Maths\n4. Psychology/Social Sciences\n5. Biology\n6. Electrical\n')
                    file.write('interest_final('+interest_final+').\n')
                    if( num== '4'):
                        extra = input('\nWhat do you do in extra-curricular activities(in leisure time)!\n1. Socialize\n2. Finance\n3. Observe nature\n')
                        file.write('extra('+extra+').\n')



func()
print('Thank you for answering the questions, the results are in prolog window :))')


file.close()