//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Andrew Smith on 11/5/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
  
}
