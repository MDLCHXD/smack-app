//
//  ChannelVC.swift
//  Smack
//
//  Created by Andrew Smith on 11/1/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //outlets
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.width - 60
        
    }

    
    @IBAction func loginButtionPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    

}
