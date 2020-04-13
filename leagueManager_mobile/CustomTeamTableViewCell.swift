//
//  CustomTeamTableViewCell.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 13/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit
//cellteam
class CustomTeamTableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var team: UILabel!
    @IBOutlet weak var points: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
