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
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!

    @IBOutlet weak var userPassword: UITextField!
    
    
    
    @IBAction func setNewUser(_ sender: Any) {
        if(userName.text != "" && userEmail.text != "" && userPassword.text != ""){
            let body: [String: Any] = ["userFirstName": userName.text as Any,
                                       "userLastName": userName.text as Any,
                                       "userEmail": userEmail.text as Any,
                                       "userPassword": userPassword.text as Any,
                                       "userIsACapitan": 1,
                                       "userTeamId": 0,
                                       "userAmplua": "нападающий"]
            
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
            task.resume()
        }
    }
}
