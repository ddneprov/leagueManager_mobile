// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Team: Codable {
    let teamId: Int
    let teamLeagueId: Int
    let teamName: String
    let teamNumberOfPlayers:Int
}
