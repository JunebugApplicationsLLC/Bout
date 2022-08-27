//
//  ContentView.swift
//  Bout
//
//  Created by Erica Stevens on 8/23/22.
//

import SwiftUI
import CalendarProgressTracker

struct ContentView: View {
    @Environment(\.calendar) private var calendar
    @Environment(\.timeZone) private var timeZone
    
    var body: some View {
        TabView {
            CalendarProgressTracker(calendar: calendar, timeZone: timeZone)
                .tabItem {
                    Label("Monthly Progress", systemImage: "calendar")
                }
            TotalPunchesThrownBarChart()
                .tabItem {
                    Label("Insights", systemImage: "chart.xyaxis.line")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
