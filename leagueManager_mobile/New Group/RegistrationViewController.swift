//
//  RegistrationViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 15/03/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var passwordAgainLabel: UITextField!
    
    
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "emailPassword", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let second = segue.destination as! SecondRegViewController
            second.playerEmail = emailLabel.text!
            second.playerPassword = passwordLabel.text! // TODO: проверка совпадения паролей
    }
}
