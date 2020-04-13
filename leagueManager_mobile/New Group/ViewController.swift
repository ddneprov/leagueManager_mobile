//
//  ViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 14/03/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

var player: Player? = nil
var team: Team? = nil

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        password.isSecureTextEntry = true
    }

    
    /**
     # переход на главный экран
     */
    @IBAction func goIn(_ sender: Any) {
        if let url = URL(string: "http://localhost:8080/player/checkPlayerExists?playerEmail=" + email.text! + "&playerPassword=" + password.text!) {
                  URLSession.shared.dataTask(with: url) { data, response, error in
                     if let data = data {
                        do {
                           player = try JSONDecoder().decode(Player.self, from: data)
                           DispatchQueue.main.async {
                            
                            NAME = player!.playerFirstName
                            LASTNAME = player!.playerLastName
                            EMAIL = player!.playerEmail
                            PASSWORD = player!.playerPassword
                            CAPITAN = player!.playerIsACapitan
                            TEAM_ID = player!.playerTeamId
                            AMPLUA = player!.playerAmplua
                            
                            
                            self.getTeam()
                            
                            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                            let leagueViewController = storyBoard.instantiateViewController(identifier: "tab") as! MainViewController
                            leagueViewController.modalPresentationStyle = .fullScreen
                            self.present(leagueViewController, animated: true,completion: nil)

                           }
                        } catch let error {
                            DispatchQueue.main.async {
                                self.password.layer.borderColor = UIColor.systemYellow.cgColor
                                self.password.layer.borderWidth = 2.0
                                self.password.layer.cornerRadius = 5.0
                                
                                self.email.layer.borderColor = UIColor.systemYellow.cgColor
                                self.email.layer.borderWidth = 2.0
                                self.email.layer.cornerRadius = 5.0
                            }
                            print("несуществующий пользователь")
                            print(error)
                        }
                     }
                  }.resume()
        }
    }
    
    
    func getTeam(){
        if let url = URL(string: "http://localhost:8080/team/getTeamById?teamId=" + String(TEAM_ID)) {
                  URLSession.shared.dataTask(with: url) { data, response, error in
                     if let data = data {
                        do {
                           team = try JSONDecoder().decode(Team.self, from: data)
                           TEAM_NAME = team!.teamName
                        } catch let error {
                            print(error)
                        }
                     }
                  }.resume()
        }
    }
    
    
    /**
    # переход на экран регистрации
    */
    @IBAction func registration2(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
               let registrationViewController = storyBoard.instantiateViewController(identifier: "registration") as! RegistrationViewController
           
               registrationViewController.modalPresentationStyle = .fullScreen
               
               self.present(registrationViewController, animated: true,completion: nil)
    }
}

