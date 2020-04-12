//
//  LeagueViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 04/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

var teams = [Team]()

class LeagueViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getTeams()
    }
    
    private func getTeams(){
        if let url = URL(string: "http://localhost:8080/team/getTeams") {
                  URLSession.shared.dataTask(with: url) { data, response, error in
                     if let data = data {
                        do {
                           teams = try JSONDecoder().decode([Team].self, from: data)
                           DispatchQueue.main.async {
                                print(teams)
                           }
                        } catch let error {
                            print(error)
                        }
                     }
                  }.resume()
        }
    }
}
