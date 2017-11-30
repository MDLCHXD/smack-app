//
//  ProfileVC.swift
//  Smack
//
//  Created by Andrew Smith on 11/28/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var image: CircleImage!
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var username: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       setupView()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logoutBtn(_ sender: Any) {
        
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    func setupView() {
        image.image = UIImage(named: UserDataService.instance.avatarName)
        image.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        email.text = UserDataService.instance.email
        username.text = UserDataService.instance.name
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
