//
//  LeagueViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 04/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

var teams = [Team]()

class LeagueViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return teams.count
    }
       
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellteam") as! CustomTeamTableViewCell
        
        cell.points.text = String(36 - 3*indexPath.row)
        cell.team.text = teams[indexPath.row].teamName
        cell.picture.image =  UIImage(named: String(indexPath.row + 1))
                
        return cell
        
    }

    
    
}
