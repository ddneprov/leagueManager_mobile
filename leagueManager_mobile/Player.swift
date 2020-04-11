//
//  Player.swift
//  leagueManager_mobile
//
//  Created by 18177231 on 09/04/2020.
//  Copyright © 2020 18177231. All rights reserved.
//

import Foundation

struct Player: Codable {
    let playerId: Int
    let playerFirstName: String
    let playerLastName: String
    let playerEmail: String
    let playerPassword: String
    let playerIsACapitan: Int
    let playerTeamId: Int
    let playerAmplua: String
}
