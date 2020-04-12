//
//  TeamViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 04/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit


class TeamViewController : UIViewController{

    @IBOutlet weak var noTeamFlag: UIStackView!
    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var createTeam: UIButton! // активная/неактивная
    
    override func viewDidLoad() {
        
        
        teamLogo.isHidden = true
        noTeamFlag.isHidden = true
        super.viewDidLoad()
        if (TEAM_ID == 0){
            teamLogo.isHidden = false
            noTeamFlag.isHidden = false

        }else{
            presentSecondViewController()
        }
    }
    
    
    func presentSecondViewController() {
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let secondVC = storyboard.instantiateViewController(identifier: "showteam")
           
           secondVC.modalPresentationStyle = .fullScreen
           secondVC.modalTransitionStyle = .crossDissolve
           
           present(secondVC, animated: true, completion: nil)
    }
}
