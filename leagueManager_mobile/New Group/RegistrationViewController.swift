//
//  RegistrationViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 15/03/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var passwordAgainLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "emailPassword", sender: self)
        //if(passwordLabel.text == passwordAgainLabel.text){
          //      go()
        //}//else{
//            DispatchQueue.main.async {
//                self.emailLabel.layer.borderColor = UIColor.systemYellow.cgColor
//                self.emailLabel.layer.borderWidth = 2.0
//                self.emailLabel.layer.cornerRadius = 5.0
//
//                self.passwordLabel.layer.borderColor = UIColor.systemYellow.cgColor
//                self.passwordLabel.layer.borderWidth = 2.0
//                self.passwordLabel.layer.cornerRadius = 5.0
//
//                self.passwordAgainLabel.layer.borderColor = UIColor.systemYellow.cgColor
//                self.passwordAgainLabel.layer.borderWidth = 2.0
//                self.passwordAgainLabel.layer.cornerRadius = 5.0
//            }
//        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let second = segue.destination as! SecondRegViewController
            second.playerEmail = emailLabel.text!
            second.playerPassword = passwordLabel.text! // TODO: проверка совпадения паролей
    }
}
