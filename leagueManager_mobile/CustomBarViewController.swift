//
//  CustomBarViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 31/03/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

class CustomBarViewController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let nav = generateNavController(vc: MainViewController(), title: "First")

    
        UINavigationBar.appearance().prefersLargeTitles = true
        viewControllers = [MainViewController()]
        
    }
    
    fileprivate func generateNavController(vc: UIViewController, title: String) -> UINavigationController{
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        return navController
    }
}
