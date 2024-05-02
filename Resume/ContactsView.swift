//
//  ContactsView.swift
//  Resume
//
//  Created by Theppitak M. on 02.05.2024.
//

import SwiftUI

struct ContactsView: View {
    let platformName: String
    let placeholder: String
    let url: String
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text("\(platformName)")
                    .font(.system(.title3, design: .rounded, weight: .semibold))
            }
            Spacer()
            Link("\(placeholder)",
                 destination: URL(string: "\(url)")!)
            .font(.system(.callout, design: .rounded, weight: .regular))
        }
    }
}

#Preview {
    ContactsView(platformName: "GitHub", placeholder: "mmmmmob", url: "https://github.com/mmmmmob")
}
