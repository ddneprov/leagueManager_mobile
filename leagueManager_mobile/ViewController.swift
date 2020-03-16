//
//  ViewController.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 14/03/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goIn(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let registrationViewController = storyBoard.instantiateViewController(identifier: "registration") as! RegistrationViewController
        
        registrationViewController.modalPresentationStyle = .fullScreen
        
        self.present(registrationViewController, animated: true,completion: nil)
    }
    
//    @IBAction func updateDB(_ sender: Any) {
//        let url = URL(string: "http://localhost:8080/index")!
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//            guard let data = data else { return }
//            print(String(data: data, encoding: .utf8)!)
//        }
//
//        task.resume()
//    }
}

