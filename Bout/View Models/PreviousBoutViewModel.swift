//
//  PreviousBoutViewModel.swift
//  Bout
//
//  Created by Erica Stevens on 8/28/22.
//

import Foundation

class PreviousBoutViewModel: ObservableObject {
    var previousBoutStats: BoutSessionStats
    
    init(stats: BoutSessionStats) {
        previousBoutStats = stats
    }
}
