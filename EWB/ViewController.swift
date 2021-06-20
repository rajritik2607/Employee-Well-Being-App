//
//  ViewController.swift
//  EWB
//
//  Created by Ritik Suryawanshi on 17/05/2020.
//  Copyright © 2020 Ritik Suryawanshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "abc1", sender: nil)
    }
    
    
    @IBAction func signInTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "abc2", sender: nil)
    }
    
    @IBOutlet weak var loginTap: UIButton!
    @IBOutlet weak var SignInTap: UIButton!
    
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        Utilities.styleFilledButton(loginTap)
        Utilities.styleFilledButton(SignInTap)
        
}

}
