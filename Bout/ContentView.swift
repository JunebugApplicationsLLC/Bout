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
        CalendarProgressTracker(calendar: calendar, timeZone: timeZone)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
