//
//  ContentView.swift
//  Hello SwiftUI
//
//  Created by Hiren Rafaliya on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        NavigationStack {
            VStack {
                DatePicker("Please enter a date",
                           selection: $wakeUp,
                           in: Date.now...)
                Spacer()
            }
            .padding(20)
            .navigationTitle("Stepper")
        }
    }
}

#Preview {
    ContentView()
}
