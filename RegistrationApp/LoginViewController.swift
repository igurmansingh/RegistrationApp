//
//  LoginViewController.swift
//  RegistrationApp
//
//  Created by Gurman Singh on 2020-07-23.
//  Copyright © 2020 Group6. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPass: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.cornerRadius = 7
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowRadius = 8
        loginButton.layer.shadowOpacity = 0.8
        loginButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        registerButton.layer.cornerRadius = 7
        registerButton.layer.shadowColor = UIColor.black.cgColor
        registerButton.layer.shadowRadius = 8
        registerButton.layer.shadowOpacity = 0.8
        registerButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func OnClickLogin(_ sender: Any) {
        
        let email = userEmail.text
        let pass = userPass.text
        
        let storedemail = UserDefaults.standard.string(forKey: "User Email ID")
        let storedpass = UserDefaults.standard.string(forKey: "Password")
        
        if(email == storedemail){
            if(pass == storedpass){
                UserDefaults.standard.set(true,forKey: "isUserLoggedin")
                UserDefaults.standard.synchronize()
                
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
