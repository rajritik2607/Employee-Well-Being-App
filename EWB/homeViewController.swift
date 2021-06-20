//
//  homeViewController.swift
//  EWB
//
//  Created by Ritik Suryawanshi on 18/05/2020.
//  Copyright © 2020 Ritik Suryawanshi. All rights reserved.
//

import UIKit

class HomeViewController : UIViewController {
    
    @IBOutlet weak var `continue`: UIButton!
    
    override func viewDidLoad() {
        super .viewDidLoad()
          Utilities.styleFilledButton(`continue`)
    }
}


