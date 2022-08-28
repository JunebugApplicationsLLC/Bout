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
            NavigationView {
                Text("Camera View")
                    .navigationTitle("Bout")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Label("New Bout", systemImage: "camera")
            }
            NavigationView {
                CalendarProgressTracker(calendar: calendar, timeZone: timeZone)
                    .navigationTitle("Bout")
                    .navigationBarTitleDisplayMode(.inline)
                
            }
            .tabItem {
                Label("Monthly Progress", systemImage: "calendar")
            }
            NavigationView {
                TotalPunchesThrownBarChart()
                    .navigationTitle("Bout")
                    .navigationBarTitleDisplayMode(.inline)
                    
                
            }
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
