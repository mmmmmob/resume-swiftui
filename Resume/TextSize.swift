//
//  TextSize.swift
//  Resume
//
//  Created by Theppitak M. on 02.05.2024.
//
import SwiftUI

struct TextSize {
    
    static func headlineText(_ string: String) -> Text {
        return Text("\(string)").font(.system(.title, design: .rounded, weight: .black))
    }
    
    static func subHeadlineText(_ string: String) -> Text {
        return Text("\(string)").font(.system(.caption, design: .rounded, weight: .bold))
    }
    
    static func captionText(_ string: String) -> Text {
        return Text("\(string)").font(.system(.caption, design: .rounded, weight: .medium))
    }
    
    static func footerText(_ string: String) -> Text {
        return Text("\(string)").font(.system(.footnote, design: .rounded, weight: .light))
            .foregroundStyle(Color.gray)
    }
    
}

