//
//  TeamViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 04/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

var teammates = [Player]()

class TeamViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var teamName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamName.text = TEAM_NAME
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return teammates.count
    }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellplayer") as! CustomPlayerTableViewCell
            
            cell.name.text = teammates[indexPath.row].playerFirstName + " " + teammates[indexPath.row].playerLastName
            cell.amplua.text = teammates[indexPath.row].playerAmplua
            cell.number.text = String(indexPath.row + 1) + "."

            return cell
        }
    }

