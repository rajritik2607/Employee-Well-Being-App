//
//  profileViewController.swift
//  EWB
//
//  Created by Ritik Suryawanshi on 18/05/2020.
//  Copyright © 2020 Ritik Suryawanshi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class profileViewController: UIViewController {
    
    @IBOutlet weak var logOut: UIButton!
    
    
     var finalName = "Ritik"
     var email = "abc123@gmail.com"
    
    @IBOutlet weak var displayName: UILabel!
    
    @IBOutlet weak var displayEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Utilities.styleHollowButton(logOut)
    
   
    
   
        
       
        displayEmail.text = email
    
        displayName.text = finalName
    }
    
    @IBAction func logoutPressed(_ sende: UIButton) {
        
        let firebaseAuth = Auth.auth()
        do
        {
            try firebaseAuth.signOut()
        }
        catch let signOutError as NSError {
            print("Error signing Out: %@", signOutError)
        }
        performSegue(withIdentifier: "abc6", sender: nil)
    }
    
    
}
