//
//  PunchType.swift
//  Bout
//
//  Created by Erica Stevens on 8/26/22.
//

import SwiftUI

enum PunchType: String, CaseIterable {
    case jab
    case straight
    case leftUppercut = "Left Uppercut"
    case rightUppercut = "Right Uppercut"
    case leftHook = "Left Hook"
    case rightHook = "Right Hook"
    
    static func color(for punchType: PunchType) -> Color {
        switch punchType {
        case .jab:
            return .pink
        case .straight:
            return .orange
        case .leftUppercut:
            return .yellow
        case .rightUppercut:
            return .green
        case .leftHook:
            return .cyan
        case .rightHook:
            return .blue
        }
    }
}
