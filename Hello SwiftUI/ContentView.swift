//
//  ContentView.swift
//  Hello SwiftUI
//
//  Created by Hiren Rafaliya on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Swift Playground")
                .font(.title)
            .foregroundStyle(.primary)
            Text("Joshua tree national park")
                .font(.subheadline)
        }
        .padding()
        .foregroundColor(Color.white)
        .background(Color.blue)
        .cornerRadius(22)
        .shadow(color: .blue.opacity(0.3), radius: 10)
        .padding()
    }
}

#Preview {
    ContentView()
}
