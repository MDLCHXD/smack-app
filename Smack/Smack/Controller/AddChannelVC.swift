//
//  AddChannelVC.swift
//  Smack
//
//  Created by Andrew Smith on 11/20/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDesc: UIStackView!
    @IBOutlet weak var bgView: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    
    @IBOutlet weak var createChannelPressed: RoundedButton!
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        //nameTxt.attributedPlaceholder = NSAttributedString(string: "Name", attributes: NSAttributedStringKey.foregroundColor : smackPurplePlaceholder)
        //chanDesc.attributedPlaceholder = NSAttributedString(string: "Description", attributes: NSAttributedStringKey.foregroundColor : smackPurplePlaceholder)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    

}
