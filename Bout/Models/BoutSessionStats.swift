//
//  BoutSessionStats.swift
//  Bout
//
//  Created by Erica Stevens on 8/28/22.
//

import Foundation

struct BoutSessionStats {
    var totalPunchesTracked: Int
    var totalPunchesTrackedInfo: [TrackedPunch]
    var duration: Int //measured in minutes (Bouts can be 3, 6, 9, or 15 minutes)
}
