//
//  TotalPunchesThrownBarChart.swift
//  Bout
//
//  Created by Erica Stevens on 8/26/22.
//

import Charts
import SwiftUI

struct TotalPunchesThrownBarChart: View {
    var body: some View {
        GeometryReader { frame in
            GroupBox("Total Punches Thrown") {
                Chart {
                    ForEach(testTotalPunchesThrown, id: \.type) { punch in
                        BarMark(x: .value(LocalizedStringKey("Punch Type"), punch.type.rawValue.capitalized), y: .value(LocalizedStringKey("Punch Count"), punch.totalPunchesThrown))
                            .foregroundStyle(PunchType.color(for: punch.type))
                    }
                }
                .frame(height: frame.size.height * 0.4)
                .padding()
                .chartForegroundStyleScale([
                    PunchType.jab.rawValue.capitalized: PunchType.color(for: .jab),
                    PunchType.straight.rawValue.capitalized: PunchType.color(for: .straight),
                    PunchType.leftUppercut.rawValue.capitalized: PunchType.color(for: .leftUppercut),
                    PunchType.rightUppercut.rawValue.capitalized: PunchType.color(for: .rightUppercut),
                    PunchType.leftHook.rawValue.capitalized: PunchType.color(for: .leftHook),
                    PunchType.rightHook.rawValue.capitalized: PunchType.color(for: .rightHook)
                ])
            }
        }
    }
}

struct TotalPunchesThrownBarChart_Previews: PreviewProvider {
    static var previews: some View {
        TotalPunchesThrownBarChart()
    }
}
struct TestPunch {
    var type: PunchType
    var totalPunchesThrown: Int
}

var testTotalPunchesThrown: [TestPunch] {
    var testPunches: [TestPunch] = []
    PunchType.allCases.forEach { punchType in
        testPunches.append(TestPunch(type: punchType, totalPunchesThrown: Int.random(in: 0..<100)))
    }
    return testPunches
}
