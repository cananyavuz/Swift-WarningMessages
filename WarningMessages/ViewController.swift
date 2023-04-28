//
//  ViewController.swift
//  WarningMessages
//
//  Created by Canan Yavuz on 28.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createdWarning(titleInput : String , messageInput : String ){
        let warningMessage = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){
            (UIAlertAction) in
            //when OK Button run
            print("OK Button run")
        }
        
        warningMessage.addAction(okButton)
        
        self.present(warningMessage, animated: true)
    }
    
    @IBAction func SignUpClick(_ sender: Any) {
        
        if emailTextField.text == "" {
            
            createdWarning(titleInput: "Error", messageInput: "Wrong E-mail!")
            
        }else if passwordTextField.text == ""{
            
            createdWarning(titleInput: "Error", messageInput: "Wrong Password!")
            
        }else if password2TextField.text == ""{
           
            createdWarning(titleInput: "Error", messageInput: "Wrong Password!")
            
        }else if passwordTextField.text != password2TextField.text{
            
            createdWarning(titleInput: "Error", messageInput: "Passwords are not same!")
    
        }else{
            //successfull
            createdWarning(titleInput: "Congratulations!", messageInput: "User Created")
        }
        
        
    }
    
}

