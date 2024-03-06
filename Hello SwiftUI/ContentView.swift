//
//  ContentView.swift
//  Hello SwiftUI
//
//  Created by Hiren Rafaliya on 21/02/24.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let cols: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<cols, id: \.self) { col in
                        content(row, col)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    @State private var amount = 0.0
    
    var body: some View {
        GridStack(rows: 20, cols: 10, content: { row, col in
            Circle()
                .stroke(.blue, lineWidth: 100)
                .stroke(.green, lineWidth: 80)
                .stroke(.yellow, lineWidth: 60)
                .stroke(.orange, lineWidth: 40)
                .stroke(.red, lineWidth: 20)
                .frame(width: 100, height: 100)
        })
    }
}

#Preview {
    ContentView()
}
