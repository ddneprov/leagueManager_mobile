//
//  PersonViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 04/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

class PersonViewController : ViewController{
    

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        self.nameLabel.text = NAME + " " + LASTNAME
    }
    
    @IBAction func exitButton(_ sender: Any) {
        NAME = "nil"
        LASTNAME = "nil"
        EMAIL = "nil"
        PASSWORD = "nil"
        CAPITAN = 0
        TEAM_ID = 0
        AMPLUA = "nil"
        performSegue(withIdentifier: "exit", sender: self)
    }
}
