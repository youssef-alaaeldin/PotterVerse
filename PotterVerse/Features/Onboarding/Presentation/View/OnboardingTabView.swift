//
//  OnboardingTabView.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 19/10/2025.
//

import SwiftUI

struct OnboardingTabView: View {
    @Binding var currentPage: Int
    let onboardingContent: [Onboarding]
    
    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(0..<onboardingContent.count, id: \.self) { index in
                VStack(spacing: 12) {
                    Circle()
                        .frame(width: 124, height: 124)
                        .overlay {
                            Image(systemName: onboardingContent[index].icon)
                                .foregroundStyle(.primaryGold)
                                .font(.system(size: 70))
                        }
                        .goldGlowShadow()
                    
                    Text(onboardingContent[index].title)
                        .font(.heading1)
                        .foregroundStyle(.primaryGold)
                        .multilineTextAlignment(.center)
                    
                    Text(onboardingContent[index].descreption)
                        .foregroundStyle(.text)
                        .multilineTextAlignment(.center)
                }
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}
