//
//  TestData.swift
//  Bout
//
//  Created by Erica Stevens on 8/28/22.
//

import Foundation

struct TrackedPunch: Identifiable {
    var id: String {
        "\(totalPunchesThrownByType) \(type.rawValue)s"
    }
    var type: PunchType
    var totalPunchesThrownByType: Int
}

var testTotalPunches: Int {
    var total = 0
    testTotalPunchesThrown.forEach { punch in
        total += punch.totalPunchesThrownByType
    }
    return total
}

var testTotalPunchesThrown: [TrackedPunch] {
    let trackedPunchesByType: [TrackedPunch] = [
        TrackedPunch(type: .jab, totalPunchesThrownByType: 46),
        TrackedPunch(type: .straight, totalPunchesThrownByType: 56),
        TrackedPunch(type: .leftUppercut, totalPunchesThrownByType: 21),
        TrackedPunch(type: .rightUppercut, totalPunchesThrownByType: 34),
        TrackedPunch(type: .leftHook, totalPunchesThrownByType: 12),
        TrackedPunch(type: .rightHook, totalPunchesThrownByType: 39)
    ]
    return trackedPunchesByType
}






