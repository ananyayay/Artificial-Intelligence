from durable.lang import *
with ruleset('subject'):

    @when_all((m.choice == "ml") & (m.grade > 7))
    def machinelearning(var):
        
        var.assert_fact({'header':'Further Studies','object':'Machine Learning'})
        var.assert_fact({'header':'Selection as','object':'SDE role'})
    
    @when_all(( m.choice == "dl" ) & (m.grade > 7))
    def deeplearning(var):
       
        var.assert_fact({'header':'Further Studies','object':'Deep Learning'})
        var.assert_fact({'header':'Selection','object':'SDE role'})

   

    @when_all((m.choice == "fcs") & (m.grade > 7))
    def fcs(var):
        
        var.assert_fact({'header':'Further Studies','object':'Advanced System Security'})
        var.assert_fact({'header':'Selection','object':'Security engineer'})

   
    

    @when_all((m.choice == "dsa") & (m.grade > 7))
    def dsa(var):
        
        var.assert_fact({'header':'Freelancing','object':'Making Websites'})
        var.assert_fact({'header':'Selection','object':'SDE job'})
    
   

    @when_all(( m.choice == "dpp") & (m.grade > 7))
    def design(var):
        
        var.assert_fact({'header':'Freelancing','object':'design gigs'})
        var.assert_fact({'header':'Selection','object':'UI/UX developmet'})

   
    @when_all(( m.choice == "eco") & (m.grade > 7))
    def eco(var):
       
        
        var.assert_fact({'header':'Get employed','object':'Strategic roles'})
    
   

    @when_all(( m.choice == "sns") & (m.grade > 7))
    def hardware(var):
        
       
        var.assert_fact({'header':'Get employed','object':'On Site engineer'})
    

   
    @when_all(m.grade <= 7)
    def fallback(var):
        
        var.assert_fact('interest',{'activity':'Military'})
        var.assert_fact('interest',{'activity':'Pilot'})
       
    


    @when_all(+m.header)
    def output(var):
        
        print('Fact: You can pursue {0} in {1}'.format(var.m.header, var.m.object))



with ruleset('interest'):

    @when_all(m.activity == 'Coaching')
    def Coaching(e):
        e.assert_fact({'subject':'Open','header':'Coaching Institute'})

    @when_all(m.activity == 'Mba')
    def Mba(e):
        e.assert_fact({'subject':'further studies','header':'MBA Course'})

    
	
    @when_all(m.activity == 'Masters')
    def Masters(e):
        e.assert_fact({'subject':'further studies','header':'Masters Course'})

    

    @when_all(m.activity == 'Military')
    def Military(e):
        e.assert_fact({'subject':'Prepare','header':'Military examinations'})

    @when_all(m.activity == 'Pilot')
    def Pilot(e):
        e.assert_fact({'subject':'Prepare','header':'Government Jobs exams'})





    @when_all(+m.subject)
    def output(e):
        print('Fact: {0} for {1}'.format(e.m.subject, e.m.header))

    
with ruleset('hobby'):
	
    @when_all(m.hobby == 'Singing')
    def Signing(e):
        e.assert_fact({'verb':'Train','occupation':'becoming a Singer'})

    @when_all(m.hobby == 'Dancing')
    def Dancing(e):
        e.assert_fact({'verb':'Train','occupation':'becoming a Dancer'})

    @when_all(m.hobby == 'Editing')
    def Editing(e):
        e.assert_fact({'verb':'Train','occupation':'becoming a Video Editor'})

    @when_all(m.hobby == 'Talking')
    def Talking(e):
        e.assert_fact({'verb':'Train','occupation':'becoming a Salesman'})

    @when_all(m.hobby == 'MakingFood')
    def MakingFood(e):
        e.assert_fact({'verb':'Train','occupation':'becoming a Chef'})

   
    @when_all(+m.verb)
    def output(e):
        print('Fact: {0} for {1}'.format(e.m.verb, e.m.occupation))



if __name__ == '__main__':
    print("AI Assignmnent 3 - Career advisory System - ")
    print("This is a proactive AI system that advices career options to you")
    sD = {1:'ml', 2:'dl', 3:'fcs', 4:'dpp', 5:'ddv', 6:'dsa', 7:'sns', 8:'eco'}
    sDone = {}
    interests = {1:'Masters', 2:'Mba', 3:'Coaching', 4: 'Military', 5:'Pilot'}
    hobbyDict = {1:'Singing',2:'Dancing', 3:'Editing',4:'Talking',5:'MakingFood'}
    
    try:
        print("Please enter the index of the courses that you have done. Enter any other number and the program will terminate")
        course = 0
        print(" 1. Machine Learning \n 2. Deep Learning\n 3. Foundations of Computer Security\n 4. Design Perspective & Practices\n 5. Digital Design and Videography \n 6. Data Structures and Algorithms\n 7. Signals & Systems\n 8. Economics")
        while (course != -1):
            
            
            course = int(input("Please choose a subject from the above list: "))
            if (course > 8):
                course = -1
            if (course != -1):
                courseGrade = int(input("Please enter your grade in the selected subject: "))

                    
                sDone[course] = courseGrade
                
        
        for x in sDone:
           
            
            assert_fact('subject',{'choice':sD[x],'grade':sDone[x]})
        
        print("Please choose an interest from the below list. Enter any other number to skip")
        print(" 1. Masters Degree \n 2. MBA\n 3.Coaching\n 4. Military \n 5. Pilot")
        interest = int(input())

        if (interest > 0 and interest < 6):
            
            assert_fact('interest',{'activity':interests[interest]})

        print("Please choose a hobby from the list. Enter any other number to skip")
        print(" 1. Singing in the shower \n 2. Dancing in your bedroom \n 3.Making vidoes of your photos\n 4. Talking to yourself \n 5. Eating Food")
        hobby = int(input())

        if (hobby > 0 and hobby < 6):
            assert_fact('hobby',{'hobby':hobbyDict[hobby]})


    except Exception as exception:
        print("here")
        print(exception)
        
