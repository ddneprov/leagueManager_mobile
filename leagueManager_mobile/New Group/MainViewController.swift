//
//  MainViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 04/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

// Player Fields
var ID = Int()
var NAME = String()
var LASTNAME = String()
var EMAIL = String()
var PASSWORD = String()
var CAPITAN = Int()
var TEAM_ID = Int()
var AMPLUA = String()


var TEAM_NAME = String()


class MainViewController : UITabBarController{

    override func viewDidLoad() {
        print()
        print()
        print("NAME -" + NAME)
        print("LASTNAME -" + LASTNAME)
        print("EMAIL -" + EMAIL)
        print("PASSWORD -" + PASSWORD)
        print("CAPITAN -" + String(CAPITAN))
        print("TEAM_ID -" + String(TEAM_ID))
        print("AMPLUA -" + AMPLUA)
        print("TEAM_NAME -" + TEAM_NAME)
        print()
        print()
        
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
        
        if let url = URL(string: "http://localhost:8080/player/getTeammates?playerTeamId=" + String(TEAM_ID)) {
                  URLSession.shared.dataTask(with: url) { data, response, error in
                     if let data = data {
                        do {
                           teammates = try JSONDecoder().decode([Player].self, from: data)
                           DispatchQueue.main.async {
                                print(teammates)
                           }
                        } catch let error {
                            print(error)
                        }
                     }
                  }.resume()
        }
    }
}
