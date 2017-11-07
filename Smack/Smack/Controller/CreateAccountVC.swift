//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Andrew Smith on 11/5/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func pickBGPressed(_ sender: Any) {
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let password = passwordTxt.text ,passwordTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("registered user!")
            }
        }
        
    }
    
}
