//
//  OnboardingView.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 15/10/2025.
//

import SwiftUI
import Factory

struct MainScreenView: View {
    @InjectedObject(\.appState) private var appState
    
    @State private var upAndDownAnimation: Bool = false
    
    var body: some View {
        ZStack {
            Image(.hogwarts)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            Rectangle()
                .opacity(0.5)
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                Text("POTTERVERSE")
                    .font(.heading1)
                    .foregroundStyle(.primaryGold)
                    .fontWeight(.heavy)
                
                Text("Explore The Wizarding World")
                    .font(.title3)
                    .foregroundStyle(.white)
                
                HStack {
                    Circle()
                        .frame(width: 6, height: 6)
                    
                    Circle()
                        .frame(width: 6, height: 6)
                    
                    Circle()
                        .frame(width: 6, height: 6)
                }
                .foregroundStyle(.primaryGold)
                .padding(.top, 14)
                .offset(y: upAndDownAnimation ? -6 : 6)
                .animation(.easeIn(duration: 1.2).repeatForever(autoreverses: true), value: upAndDownAnimation)
                
                CustomButton(title: "Enter the Magic") {
                    appState.currentAppStateFlow = .onboarding
                }
                .padding(.top, 24)
            }
            .padding(.horizontal, 24)
        }
        .onAppear {
            withAnimation {
                upAndDownAnimation.toggle()
            }
        }
    }
}

#Preview {
    MainScreenView()
}
