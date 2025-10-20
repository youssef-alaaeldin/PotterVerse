//
//  BackgroundGradient.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 20/10/2025.
//

import SwiftUI

struct BackgroundGradient: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(stops: [
                .init(color: .bgGradient, location: 0.2),
                .init(color: .bg, location: 0.5),
                .init(color: .bgGradient, location: 0.99)
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}
