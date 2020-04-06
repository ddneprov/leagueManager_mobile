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
    @IBOutlet weak var surNameLabel: UILabel!
    @IBOutlet weak var ampluaLabel: UILabel!
    
//    struct Player: Codable { // or Decodable
//        let playerId: Int
//        let playerFirstName: String
//        let playerLastName: String
//        let playerEmail: String
//        let playerPassword: String
//        let playerIsACapitan: Int
//        let playerTeamId: Int
//        let playerAmplua: String
//    }
//
//    override func viewDidLoad() {
//        if let url = URL(string: "http://localhost:8080/player/getPlayer?playerId=32") {
//                  URLSession.shared.dataTask(with: url) { data, response, error in
//                     if let data = data {
//                        do {
//                           let res = try JSONDecoder().decode(Player.self, from: data)
//                           DispatchQueue.main.async { // Correct
//                                self.nameLabel.text = res.playerFirstName
//                                self.surNameLabel.text = res.playerLastName
//                                self.ampluaLabel.text = res.playerAmplua
//                           }
//                           print(res.playerEmail)
//                        } catch let error {
//                           print(error)
//                        }
//                     }
//                  }.resume()
//        }
//    }
}
