//
//  CreateTeamViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 13/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

var soloplayers = [Player]()


class CreateTeamViewController: UIViewController {

    override func viewDidLoad() {
        getPlayers()
        super.viewDidLoad()
    }
    
    
    func getPlayers(){
        if let url = URL(string: "http://localhost:8080/player/getTeammates?playerTeamId=" + String(0)) {
                  URLSession.shared.dataTask(with: url) { data, response, error in
                     if let data = data {
                        do {
                           soloplayers = try JSONDecoder().decode([Player].self, from: data)
                           DispatchQueue.main.async {
                                print(soloplayers)
                           }
                        } catch let error {
                            print(error)
                        }
                     }
                  }.resume()
        }
    }
}
