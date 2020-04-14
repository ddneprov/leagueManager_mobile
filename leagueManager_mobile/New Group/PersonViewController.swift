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
    @IBOutlet weak var teamLabel: UILabel!
    
    override func viewDidLoad() {
        self.nameLabel.text = NAME + " " + LASTNAME
        if (TEAM_ID == 0){
            self.teamLabel.text = "свободный агент"
        }
        else{
            self.teamLabel.text = AMPLUA + " в команде " + TEAM_NAME
        }
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
