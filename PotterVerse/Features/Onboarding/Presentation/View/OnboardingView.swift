//
//  OnboardingView.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 15/10/2025.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            Image(.hogwarts)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                Text("POTTERVERSE")
                    .font(.heading1)
                    .foregroundStyle(.primaryGold)
                    .fontWeight(.heavy)
            }
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    OnboardingView()
}
