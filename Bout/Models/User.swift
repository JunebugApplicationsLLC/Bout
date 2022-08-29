//
//  User.swift
//  Bout
//
//  Created by Erica Stevens on 8/28/22.
//

import Foundation

struct User {
    // Authentication
    var username: String
    var password: String
    
    // Fighter Info
    var totalBoutsFought: Int
    var totalPunchesThrown: Int
    var fighterLevel: Rank
    var statistics: [BoutSessionStats]?
}
