//
//  QuestionBank.swift
//  EWB
//
//  Created by Ritik Suryawanshi on 18/05/2020.
//  Copyright © 2020 Ritik Suryawanshi. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
        
        init()
        {
            // Creating a quiz item and appending it to the list
            let item = Question(text: " 1. How would you rate the services that you receive at your workplace")
            
            // Add the Question to the list of questions
            list.append(item)
            
            // skipping one step and just creating the quiz item inside the append function
            
            list.append(Question(text: "2. How would you describe the treatment that you receive from your immediate boss/superiors?"))
            
            list.append(Question(text: "3. How are the employee well-being policies at your current workplace?"))
            
            list.append(Question(text: "4. How would you describe your interpersonal relations with your co-workers?"))
            
            list.append(Question(text: "5. How would you rate the ways in which services are provided for the clients/end-users at your workplace?"))
            
            list.append(Question(text: "6. How would you describe the working hours at your workplace?"))
            
            list.append(Question(text: "7. How would you rate the extra benefits/incentives that are provided to you at your workplace?"))

            list.append(Question(text: "7. How would you rate the extra benefits/incentives that are provided to you at your workplace?"))
            
            list.append(Question(text: "8. How do you feel about the strictness of actions that are taken for misbehaviour at your workplace?"))
            
            list.append(Question(text: "9. How would you describe the scheme of the holidays that are given to the employees (and yourself) at your workplace?"))
            
            list.append(Question(text: "10. How would you rate your overall well-being levels when you are at work?"))
            
            list.append(Question(text: "11. How would you rate the approach of your employer to cope with the level of stress that you experience at work?"))
            
            list.append(Question(text: "12. How would you describe your work-life balance?"))
            
            list.append(Question(text: "13. How would you rate your physical health based on the nature of work that you do?"))
            
             list.append(Question(text: "14. How would you describe your mental health based on the nature of work that you do?"))
            
             list.append(Question(text: "15. How do you rate the efforts of your employer with respect to following employee wellness policies?"))
            
            list.append(Question(text: "16. How much do you rate the bond with your co-workers, or someone that you can talk to or ask for help with mental or physical health, or issues at work?"))
            
            list.append(Question(text: "17. How much would you rate the hours outside office devoted to work-related projects?"))
            
            list.append(Question(text: "18. How would you rate the level of security at your workplace?"))
            
            list.append(Question(text: "19. How would you rate yourself with respect to the level of dedication and seriousness that you give to work or projects that you have undertaken at your workplace?"))
            
            list.append(Question(text: "20. How would you describe the overall work culture at your workplace?"))
            }
 
}
