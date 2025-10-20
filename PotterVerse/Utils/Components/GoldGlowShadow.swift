//
//  GoldGlowShadow.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 19/10/2025.
//

import SwiftUI

struct GoldGlowShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.primaryGold.opacity(0.3),
                    radius: 4, x: 0, y: 0)
    }
}


extension View {
        func goldGlowShadow() -> some View {
            self.modifier(GoldGlowShadow())
        }
}
