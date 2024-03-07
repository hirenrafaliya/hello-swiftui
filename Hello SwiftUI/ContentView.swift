//
//  ContentView.swift
//  Hello SwiftUI
//
//  Created by Hiren Rafaliya on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 0.0
    
    var body: some View {
        NavigationStack {
            VStack {
                Stepper("\(amount.formatted()) Sleep Hours", value: $amount, step: 0.5)
            }
            .padding(20)
            .navigationTitle("Stepper")
        }
    }
}

#Preview {
    ContentView()
}
