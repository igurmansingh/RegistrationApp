//
//  ViewController.swift
//  RegistrationApp
//
//  Created by Gurman Singh on 2020-07-23.
//  Copyright © 2020 Group6. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoutButton.layer.cornerRadius = 8.0
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let isLogged = UserDefaults.standard.bool(forKey: "isUserLoggedin")
        if(!isLogged){
            self.performSegue(withIdentifier: "loginView", sender: self)
        }
    }
    
    
    @IBAction func onLogoutClick(_ sender: Any) {
        
        UserDefaults.standard.set(false,forKey: "isUserLoggedin")
        UserDefaults.standard.synchronize()
        
        self.performSegue(withIdentifier: "loginView", sender: self)
        
    }
    
}

