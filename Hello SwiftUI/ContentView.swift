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
        NavigationView {
            Form {
                TextField("Enter your amount", text: Binding<String>(
                    get: {
                        "\(amount)"
                    }, set: {
                        amount = Double($0) ?? 0.0
                    }
                    
                ))
                
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
