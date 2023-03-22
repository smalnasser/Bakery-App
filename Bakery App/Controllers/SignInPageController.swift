//
//  SignInPageController.swift
//  Bakery App
//
//  Created by sarah alnasser on 24/08/1444 AH.
//

import UIKit

class SignInPageController: UIViewController {

    
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var passTF: UITextField!
    @IBOutlet var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.titleLabel?.text = "Login"

    }
    
    
    @IBAction func btnAction(_ sender: Any) {
        
        if emailTF.text == "123" || passTF.text == "123" {
            dismiss(animated: true)
            
        }
    }
    


}


