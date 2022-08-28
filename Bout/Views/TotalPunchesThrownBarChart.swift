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
            VStack(alignment: .leading) {
                Text("Previous Bout Stats")
                    .font(.title2).bold()
                Text("Duration: 6 minutes")
                    .font(.caption).italic()
                GroupBox("\(testTotalPunches) Total Punches Thrown") {
                    Chart(testTotalPunchesThrown) { punch in
                        BarMark(x: .value(LocalizedStringKey("Punch Type"), punch.type.rawValue.capitalized), y: .value(LocalizedStringKey("Punch Count"), punch.totalPunchesThrown))
                            .annotation(content: {
                                Text(punch.totalPunchesThrown.description)
                                    .font(.caption2).bold()
                            })
                            .foregroundStyle(PunchType.color(for: punch.type))
                    }
                }
                .frame(width: frame.size.width * 0.9, height: frame.size.height * 0.4, alignment: .center)
                .chartForegroundStyleScale([
                    PunchType.jab.rawValue.capitalized: PunchType.color(for: .jab),
                    PunchType.straight.rawValue.capitalized: PunchType.color(for: .straight),
                    PunchType.leftUppercut.rawValue.capitalized: PunchType.color(for: .leftUppercut),
                    PunchType.rightUppercut.rawValue.capitalized: PunchType.color(for: .rightUppercut),
                    PunchType.leftHook.rawValue.capitalized: PunchType.color(for: .leftHook),
                    PunchType.rightHook.rawValue.capitalized: PunchType.color(for: .rightHook)
                ])
                .chartXAxis(.hidden)
            }
            .padding()
        }
        
    }
}

struct TotalPunchesThrownBarChart_Previews: PreviewProvider {
    static var previews: some View {
        TotalPunchesThrownBarChart()
    }
}
struct TestPunch: Identifiable {
    var id: String {
        "\(totalPunchesThrown) \(type.rawValue)s"
    }
    var type: PunchType
    var totalPunchesThrown: Int
}

var testTotalPunches: Int {
    var total = 0
    testTotalPunchesThrown.forEach { punch in
        total += punch.totalPunchesThrown
    }
    return total
}

var testTotalPunchesThrown: [TestPunch] {
    var testPunches: [TestPunch] = [
        TestPunch(type: .jab, totalPunchesThrown: 46),
        TestPunch(type: .straight, totalPunchesThrown: 56),
        TestPunch(type: .leftUppercut, totalPunchesThrown: 21),
        TestPunch(type: .rightUppercut, totalPunchesThrown: 34),
        TestPunch(type: .leftHook, totalPunchesThrown: 12),
        TestPunch(type: .rightHook, totalPunchesThrown: 39)
    ]
    return testPunches
}
