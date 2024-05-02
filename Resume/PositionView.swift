//
//  PositionView.swift
//  Resume
//
//  Created by Theppitak M. on 02.05.2024.
//

import SwiftUI

struct PositionView: View {
    let company: String
    let position: String
    let duration: String
    let url: String?
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                if let url {
                    Link("\(company)",
                         destination: URL(string: "\(url)")!)
                    .font(.system(.title3, design: .rounded, weight: .semibold))
                } else {
                    Text("\(company)")
                        .font(.system(.title3, design: .rounded, weight: .semibold))
                }
                Text("\(position)")
                    .font(.system(.caption, design: .rounded, weight: .light))
            }
            Spacer()
            Text("\(duration)")
                .font(.system(.caption, design: .rounded, weight: .regular))
        }
        .padding()
    }
}

#Preview {
    PositionView(company: "Self-employed", position: "Creative Copywriter", duration: "2023 - Presents", url: "test")
}
