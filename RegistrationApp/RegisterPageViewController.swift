//
//  RegisterPageViewController.swift
//  RegistrationApp
//
//  Created by Gurman Singh on 2020-07-23.
//  Copyright © 2020 Group6. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userNametxt: UITextField!
    @IBOutlet weak var userName2: UITextField!
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var userRePAssword: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerButton.layer.cornerRadius = 7
        registerButton.layer.shadowColor = UIColor.black.cgColor
        registerButton.layer.shadowRadius = 8
        registerButton.layer.shadowOpacity = 0.8
        registerButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        // Do any additional setup after loading the view.
    }
    
   
    
    
    @IBAction func OnClickRegister(_ sender: Any) {
        
        let fName = userNametxt.text;
        let lName = userName2.text;
        let email = userEmail.text;
        let pass1 = userPassword.text;
        let pass2 = userRePAssword.text;
        
        
        //check for empty feilds
        if( fName!.isEmpty || lName!.isEmpty || email!.isEmpty || pass1!.isEmpty || pass2!.isEmpty){
            
            alert( message: "All fields are required");
            return;
            
        }
        
        
        if(pass1 != pass2){
            alert( message: "Password do not match");
        }
        
        //Store Data
        UserDefaults.standard.set(fName, forKey: "User First Name")
        UserDefaults.standard.set(lName, forKey: "User Last Name")
        UserDefaults.standard.set(email, forKey: "User Email ID")
        UserDefaults.standard.set(pass1, forKey: "Password")
        UserDefaults.standard.synchronize()
        
        
        
        //Confirmation message
        let myAlert = UIAlertController(title: "Alert", message: "Registration is completed!", preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "OK" , style: UIAlertAction.Style.default){
            ACTION in
            self.dismiss(animated: true, completion: nil)
        }
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
        
        
    }
    
    
    func alert(message:String)
    {
        let myAlert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "OK" , style: UIAlertAction.Style.default, handler:nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert, animated: true, completion: nil)
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
