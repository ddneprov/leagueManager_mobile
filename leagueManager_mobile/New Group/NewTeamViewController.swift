//
//  NewTeamViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 13/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

var player2: Player? = nil

class NewTeamViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var teamName: UITextField!
    
    
    
    
    @IBAction func createNewTeam(_ sender: Any) {
        let body: [String: Any] = ["teamName": teamName.text as Any,
        "teamNumberOfPlayers": 22,
        "teamLeagueId": 1]
        
        
        let bodyJson = try? JSONSerialization.data(withJSONObject: body)
                    let url = URL(string: "http://localhost:8080/team/setTeam")!
        
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
        
        

//        for i in soloplayers{
//            if (i.playerTeamId == 0){
//                changeTeam(playerId: i.playerId, teamId: 4) //
//            }
       
    }
        
        
        
        // меняем команду самому юзеру для этого дергаем его из БД
//        if let url = URL(string: "http://localhost:8080/player/getByEmail?playerEmail=" + EMAIL) {
//                  URLSession.shared.dataTask(with: url) { data, response, error in
//                     if let data = data {
//                        do {
//                           player2 = try JSONDecoder().decode(Player.self, from: data)
//                           print(player2)
//                        } catch let error {
//                            print(error)
//                        }
//                     }
//                  }.resume()
//        }
//
//        changeTeam(playerId: player2!.playerId, teamId: 4)
//    }
//
//
//    func changeTeam(playerId : Int, teamId : Int){
//        let url = URL(string: "http://localhost:8080/player/changeTeam?playerId=" + String(playerId) + "&teamId=" + String(teamId))!
//
//                    var request = URLRequest(url: url)
//
//                    request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
//                    request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
//
//                    request.httpMethod = "POST"
//
//                    let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
//                                guard let data = data, error == nil else { return }
//                                print(String(data: data, encoding: .utf8)!)
//                            }
//
//                    task.resume()
//    }


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    var numbers : [Bool] = []

    override func viewDidLoad() {
        super.viewDidLoad()
            
        print(soloplayers.count)
        for i in 0...soloplayers.count{
            numbers.append(false)
        }
       
        
        tableView.delegate = self
        tableView.dataSource = self
    }


    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            numbers[indexPath.row] = !numbers[indexPath.row]
            cell.accessoryType = numbers[indexPath.row] ? .checkmark : .none
            
        }
    }
    
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return soloplayers.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellplayer") as! CustomPlayerTableViewCell
    
        cell.accessoryType = numbers[indexPath.row] ? .checkmark : .none
        
        cell.name.text = soloplayers[indexPath.row].playerFirstName + " " + soloplayers[indexPath.row].playerLastName
        cell.amplua.text = soloplayers[indexPath.row].playerAmplua
        cell.number.text = String(indexPath.row + 1) + "."

        return cell
    }
    
    

}
