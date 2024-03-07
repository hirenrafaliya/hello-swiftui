//
//  ContentView.swift
//  Hello SwiftUI
//
//  Created by Hiren Rafaliya on 21/02/24.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var people = ["Virat", "Rohit", "Kedar", "Mahendra", "Jasprit"]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(people, id: \.self) {
                    Text("\($0)")
                }
            }
            .navigationTitle("Better rest")
        }
    }
}

#Preview {
    ContentView()
}
