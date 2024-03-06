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
            Rectangle()
                .fill(row % 2 == 0 ? col % 2 == 0 ? Color.orange : Color.blue : Color.green)
                .frame(width: 20, height: 20)
        })
    }
}

#Preview {
    ContentView()
}
