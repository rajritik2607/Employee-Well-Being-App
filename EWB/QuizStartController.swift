//
//  QuizStartController.swift
//  EWB
//
//  Created by Ritik Suryawanshi on 18/05/2020.
//  Copyright © 2020 Ritik Suryawanshi. All rights reserved.
//

import UIKit

class QuizStartController : UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Utilities.styleFilledButton(startButton)
        
        
    }
}
