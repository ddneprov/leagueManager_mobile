//
//  TeamNavigationViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 12/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

class TeamNavigationViewController: UINavigationController {

    @IBOutlet weak var teamButton: UITabBarItem!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        


    func presentSecondViewController() {
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let secondVC = storyboard.instantiateViewController(identifier: "showteam")

           secondVC.modalPresentationStyle = .fullScreen
           secondVC.modalTransitionStyle = .crossDissolve

           present(secondVC, animated: true, completion: nil)
    }
}
