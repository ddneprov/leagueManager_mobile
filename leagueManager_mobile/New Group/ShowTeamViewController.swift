//
//  ShowTeamViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 12/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

var teammates = [Player]()

class ShowTeamViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var teamName: UILabel!
    
    override func viewDidLoad() {
        getTeammates()
        teamName.text = TEAM_NAME
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return teammates.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamcustomcell") as! CustomTeamTableViewCell
        
        cell.ampluaCell.text = teammates[indexPath.row].playerAmplua
        cell.nameCell.text = teammates[indexPath.row].playerFirstName + " " + teammates[indexPath.row].playerLastName
        cell.numberCell.text = String(indexPath.row + 1)
                
        return cell
    }
    
    
// TODO: вынести во вход
    private func getTeammates(){
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
