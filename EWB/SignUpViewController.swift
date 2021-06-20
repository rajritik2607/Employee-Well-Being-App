//
//  signUpViewController.swift
//  EWB
//
//  Created by Ritik Suryawanshi on 18/05/2020.
//  Copyright © 2020 Ritik Suryawanshi. All rights reserved.
//

import UIKit
import FirebaseAnalytics
import FirebaseAuth

class SignUpViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var passwordConfirm: UITextField!
    
    @IBOutlet weak var signUpPress: UIButton!
    var nameText : String = ""
    var emailText : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
        email.delegate = self
        password.delegate = self
        passwordConfirm.delegate = self
        
        Utilities.styleFilledButton(signUpPress)
        Utilities.styleTextField(name)
          Utilities.styleTextField(email)
          Utilities.styleTextField(password)
          Utilities.styleTextField(passwordConfirm)
    }
    
    @IBAction func SignUp(_ sender: UIButton) {
        
        if password.text != passwordConfirm.text {
                   let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
                   let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                   
                   alertController.addAction(defaultAction)
                   self.present(alertController, animated: true, completion: nil)
               }
               else{
                   Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                       if error == nil {
                           self.performSegue(withIdentifier: "abc4", sender: nil)
                       }
                       else{
                           let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                           let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                           
                           alertController.addAction(defaultAction)
                           self.present(alertController, animated: true, completion: nil)
                       }
                    
            }
            
            
          
            
          
        }
       
                
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    name.resignFirstResponder()
    email.resignFirstResponder()
    password.resignFirstResponder()
    passwordConfirm.resignFirstResponder()
    return true
    }
    
    
}
