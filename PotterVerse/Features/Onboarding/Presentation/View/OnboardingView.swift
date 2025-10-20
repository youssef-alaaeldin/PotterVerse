//
//  OnboardingView.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 19/10/2025.
//

import SwiftUI
import Factory

struct OnboardingView: View {
    @InjectedObject(\.appState) private var appState

    @State private var counter: Int = 0
    @State private var currentPage: Int = 0
    
    private let onboardingContent: [Onboarding] = [
        Onboarding(title: "BROWSE CHARACTERS", icon: "wand.and.sparkles", descreption: "Discover witches, wizards, and magical creatures from the wizarding world"),
        Onboarding(title: "Learn Spells", icon: "book", descreption: "Master the art of magic with our comprehensive spell encyclopedia"),
        Onboarding(title: "Explore Houses", icon: "shield", descreption: "Dive deep into the history and traits of each Hogwarts house"),
        Onboarding(title: "Discover More", icon: "drop", descreption: "Books, potions, and countless magical artifacts await you"),
    ]
    
    var body: some View {
        ZStack {
            BackgroundGradient()
            
            VStack(spacing: 25) {
            
                OnboardingTabView(currentPage: $currentPage, onboardingContent: onboardingContent)
                
                onBoardingDots
                
                buttons
                
                Spacer()
                
            }
            .padding(.horizontal, 24)
        }
    }
    
    private var buttons: some View {
        HStack(spacing: 24) {
            CustomButton(title: "Skip", backgroundColor: .black, foregroundColor: .white) {
                
            }
            CustomButton(title: currentPage == 3 ? "Start": "Next") {
                buttonAction()
            }
        }
    }
}

// MARK: - Components
extension OnboardingView {
    private var onBoardingDots: some View {
        HStack(spacing: 12) {
            ForEach(0..<onboardingContent.count, id: \.self) { index in
                Rectangle()
                    .frame(width: currentPage == index ? 35 : 12, height: 12)
                    .foregroundStyle(.primaryGold)
                    .cornerRadius(12)
                    .animation(.spring(), value: currentPage)
                    .onTapGesture {
                        withAnimation {
                            currentPage = index
                        }
                    }
            }
        }
        .padding(.top, 13)
        .padding(.bottom, 46)
    }
}

// MARK: - Actions
extension OnboardingView {
    private func buttonAction() {
        if currentPage == onboardingContent.count - 1 {
            //TODO: Navigate to the next screen
            //SAVE TO USERDEFAULTS
//            savedSplashScreen = true
            appState.currentAppStateFlow = .bottomTabs
        } else {
            withAnimation {
                currentPage += 1
            }
            print(currentPage)
        }
    }
}

#Preview {
    OnboardingView()
}
