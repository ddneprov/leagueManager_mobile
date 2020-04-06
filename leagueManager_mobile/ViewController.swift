//
//  ViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 14/03/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    struct Response: Codable { // or Decodable
        let playerId: Int
        let playerFirstName: String
        let playerLastName: String
        let playerEmail: String
        let playerPassword: String
        let playerIsACapitan: Int
        let playerTeamId: Int
        let playerAmplua: String
    }
    
    
    /**
     # переход на главный экран
     */
    @IBAction func goIn(_ sender: Any) {
        if let url = URL(string: "http://localhost:8080/player/checkPlayerExists?playerEmail=" + email.text! + "&playerPassword=" + password.text!) {
                  URLSession.shared.dataTask(with: url) { data, response, error in
                     if let data = data {
                        do {
                           let res = try JSONDecoder().decode(Response.self, from: data)
                           DispatchQueue.main.async {
                                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                                let leagueViewController = storyBoard.instantiateViewController(identifier: "tab") as! MainViewController
                                leagueViewController.modalPresentationStyle = .fullScreen
                                self.present(leagueViewController, animated: true,completion: nil)
                           }
                           print(res.playerEmail)
                        } catch let error { 
                            print("несуществующий пользователь")
                           print(error)
                        }
                     }
                  }.resume()
        }
    }
    
    /**
    # переход на экран регистрации
    */
    @IBAction func registration(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let registrationViewController = storyBoard.instantiateViewController(identifier: "registration") as! RegistrationViewController
    
        registrationViewController.modalPresentationStyle = .fullScreen
        
        self.present(registrationViewController, animated: true,completion: nil)
    }
    
    
    
    
    //    @IBAction func updateDB(_ sender: Any) {
    //        let url = URL(string: "http://localhost:8080/index")!
    //
    //        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
    //            guard let data = data else { return }
    //            print(String(data: data, encoding: .utf8)!)
    //        }
    //
    //        task.resume()
    //    }
}

