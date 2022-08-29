//
//  TotalPunchesThrownBarChart.swift
//  Bout
//
//  Created by Erica Stevens on 8/26/22.
//

import Charts
import SwiftUI

struct TotalPunchesThrownBarChart: View {
    @ObservedObject var previousBoutViewModel: PreviousBoutViewModel
    
    init(_ previousBoutViewModel: PreviousBoutViewModel) {
        self.previousBoutViewModel = previousBoutViewModel
    }
    
    var body: some View {
        GeometryReader { frame in
            VStack(alignment: .leading) {
                Text("Previous Bout Stats")
                    .font(.title2).bold()
                Text("Duration: \(previousBoutViewModel.previousBoutStats.duration) minutes")
                    .font(.caption)
                GroupBox("\(previousBoutViewModel.previousBoutStats.totalPunchesTracked) Total Punches Thrown") {
                    Chart(previousBoutViewModel.previousBoutStats.totalPunchesTrackedInfo) { punch in
                        BarMark(x: .value(LocalizedStringKey("Punch Type"), punch.type.rawValue.capitalized), y: .value(LocalizedStringKey("Punch Count"), punch.totalPunchesThrownByType))
                            .annotation(content: {
                                Text(punch.totalPunchesThrownByType.description)
                                    .font(.caption2).bold()
                            })
                            .foregroundStyle(PunchType.color(scheme: .vibrant, for: punch.type))
                    }
                }
                .frame(width: frame.size.width * 0.9, height: frame.size.height * 0.4, alignment: .center)
                .chartForegroundStyleScale([
                    PunchType.jab.rawValue.capitalized: PunchType.color(scheme: .vibrant, for: .jab),
                    PunchType.straight.rawValue.capitalized: PunchType.color(scheme: .vibrant, for: .straight),
                    PunchType.leftUppercut.rawValue.capitalized: PunchType.color(scheme: .vibrant, for: .leftUppercut),
                    PunchType.rightUppercut.rawValue.capitalized: PunchType.color(scheme: .vibrant, for: .rightUppercut),
                    PunchType.leftHook.rawValue.capitalized: PunchType.color(scheme: .vibrant, for: .leftHook),
                    PunchType.rightHook.rawValue.capitalized: PunchType.color(scheme: .vibrant, for: .rightHook)
                ])
                .chartXAxis(.hidden)
            }
            .padding()
        }
        
    }
}

struct TotalPunchesThrownBarChart_Previews: PreviewProvider {
    static var previews: some View {
        TotalPunchesThrownBarChart(PreviousBoutViewModel(stats: BoutSessionStats(totalPunchesTracked: 0, totalPunchesTrackedInfo: [], duration: 0)))
    }
}

