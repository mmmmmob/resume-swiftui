//
//  CapsuleTextView.swift
//  Resume
//
//  Created by Theppitak M. on 02.05.2024.
//

import SwiftUI

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...0.5),
            green: .random(in: 0...0.5),
            blue: .random(in: 0...0.5)
        )
    }
}

struct CapsuleTextView: View {
    let skillText: String
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 110, height: 30)
                .foregroundStyle(Color.random)
            HStack {
                Text("\(skillText)")
                    .foregroundStyle(Color.white)
                    .font(.system(.callout,design: .rounded,weight: .medium))
            }
        }
    }
}

#Preview {
    CapsuleTextView(skillText: "SwiftUI")
}
