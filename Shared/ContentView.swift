//
//  ContentView.swift
//  Shared
//
//  Created by Neil Francis Hipona on 8/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
          MyCalendarView(model: .stub, geometry: geometry)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
