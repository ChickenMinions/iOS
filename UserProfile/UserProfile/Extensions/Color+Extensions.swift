//
//  Color+Extensions.swift
//  UserProfile
//
//  Created by Ohlulu on 2021/7/7.
//

import SwiftUI

extension Color {
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

// MARK: - Primary Color

extension Color {
    
    /// #272E34
    static let primary90 = Color(hex: "#272E34")
    
    /// #1A1A19
    static let primary80 = Color(hex: "#393939")
    
    /// #4C5760
    static let primary70 = Color(hex: "#4C5760")
    
    /// #8F969C
    static let primary60 = Color(hex: "#8F969C")
    
    /// #8F969C
    static let primary50 = Color(hex: "#8F969C")
    
    /// #B9B9B9
    static let primary40 = Color(hex: "#B9B9B9")
    
    /// #D5D7DD
    static let primary30 = Color(hex: "#D5D7DD")
    
    /// #F3F3F3
    static let primary20 = Color(hex: "#F3F3F3")
    
    /// #FCFCFC
    static let primary10 = Color(hex: "#FCFCFC")
}

// MARK: - Secondary Color

extension Color {
    
    /// #C4C4C4
    static let secondary80 = Color(hex: "#C4C4C4")
    
    /// #D2D2D2
    static let secondary70 = Color(hex: "#D2D2D2")
    
    /// #DFDFDF
    static let secondary60 = Color(hex: "#DFDFDF")
}

// MARK: - Red Color

extension Color {
    
    /// #D86767
    static let red80 = Color(hex: "#D86767")
    
    /// #FF8A8C
    static let red70 = Color(hex: "#FF8A8C")
    
    /// #FFE0E0
    static let red60 = Color(hex: "#FFE0E0")
}
