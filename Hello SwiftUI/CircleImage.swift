//
//  CircleImage.swift
//  Hello SwiftUI
//
//  Created by Hiren Rafaliya on 09/03/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("sample")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 8)
            }
            .shadow(color: .gray.opacity(0.5), radius: 20)
        
    }
}

#Preview {
    CircleImage()
}
