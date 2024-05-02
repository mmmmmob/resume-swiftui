//
//  CapsuleTextView.swift
//  Resume
//
//  Created by Theppitak M. on 02.05.2024.
//

import SwiftUI

struct CapsuleTextView: View {
    let skillText: String
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 110, height: 30)
                .foregroundStyle(Color.randomDark)
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
