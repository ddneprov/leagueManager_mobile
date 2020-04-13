//
//  SecondRegViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 10/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

class SecondRegViewController : UIViewController{
        
    
    var playerEmail = String()
    var playerPassword = String()

    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var playerLastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func setBewPlayer(_ sender: Any) {
                if(playerName.text != "" && playerLastName.text != ""){
                    
                    let body: [String: Any] = ["playerFirstName": playerName.text as Any,
                                               "playerLastName": playerLastName.text as Any,
                                               "playerEmail": playerEmail as Any,
                                               "playerPassword": playerPassword,
                                               "playerIsACapitan": 0,
                                               "playerTeamId": 0,
                                               "playerAmplua": "-"]
        
                    
                    NAME = playerName.text!
                    LASTNAME = playerLastName.text!
                    EMAIL = playerEmail
                    PASSWORD = playerPassword
                    CAPITAN = 0
                    TEAM_ID = 0
                    AMPLUA = "-"
                    
                    let bodyJson = try? JSONSerialization.data(withJSONObject: body)
                    //let url = URL(string: "http://leaguemanagerapp.qjvacms4bu.eu-west-2.elasticbeanstalk.com/newUser")!
                    let url = URL(string: "http://localhost:8080/player/setPlayer")!
        
                    var request = URLRequest(url: url)
        
                    request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
                    request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
        
        
                    request.httpMethod = "POST"
                    request.httpBody = bodyJson
        
                    let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
                                guard let data = data, error == nil else { return }
                                print(String(data: data, encoding: .utf8)!)
                            }



                    performSegue(withIdentifier: "createteam", sender: self)

                
                    task.resume()
                }
    }
}
