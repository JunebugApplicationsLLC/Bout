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
    case leftUppercut = "Left\nUppercut"
    case rightUppercut = "Right\nUppercut"
    case leftHook = "Left\nHook"
    case rightHook = "Right\nHook"
    
    static func color(scheme: ChartColorScheme,for punchType: PunchType) -> Color {
        switch scheme {
        default:
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
}
