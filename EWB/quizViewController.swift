//
//  quizViewController.swift
//  EWB
//
//  Created by Ritik Suryawanshi on 18/05/2020.
//  Copyright © 2020 Ritik Suryawanshi. All rights reserved.
//

import UIKit

class quizViewController : UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Int = 0
    var questionNumber : Int = 0
    var score: Int = 0
    var totalText : String = ""
    var model =  final_covid_model()
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
        
        Utilities.styleFilledButton(button1)
        Utilities.styleFilledButton(button2)
        Utilities.styleFilledButton(button3)
        Utilities.styleFilledButton(button4)
    }
   
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func optionOne(_ sender: UIButton) {
       
        if questionNumber == 0
        {
            score = 0
        }
        else
        {
        score = 100 + score
        }
        
        questionNumber+=1
        nextQuestion()
        
        
    }
    
    @IBAction func optionTwo(_ sender: UIButton) {
        
      if questionNumber == 0
       {
           score = 0
       }
       else
       {
       score = 75 + score
       }
            
        
        questionNumber+=1
        nextQuestion()
    }
    
    @IBAction func optionThree(_ sender: UIButton) {
        
      if questionNumber == 0
       {
           score = 0
       }
       else
       {
       score = 50 + score
       }
            
        
        questionNumber+=1
        nextQuestion()
    }
    
    @IBAction func optionFour(_ sender: UIButton) {
       if questionNumber == 0
       {
           score = 0
       }
       else
       {
       score = 25 + score
       }
            
        
        questionNumber+=1
        nextQuestion()
    }
    
    func nextQuestion() {
    
    if questionNumber <= 20
    {
    questionLabel.text=allQuestions.list[questionNumber].questionText
    
    }
    else
    {
        score = (score * 100)/2000
        
        totalText = String(score)
        print(totalText)
        let alert = UIAlertController(title: "Good Job: You have scored \(totalText)%", message: "You can exit the quiz now", preferredStyle: .alert)
        let proceedAction = UIAlertAction(title: "Exit", style: .default) { (UIAlertAction) in
            self.nextController()
        }
        alert.addAction(proceedAction)
        present(alert, animated: true, completion: nil)
       
        }}
    
        func nextController ()
        {
            performSegue(withIdentifier: "abc5", sender: nil)
        }

}
