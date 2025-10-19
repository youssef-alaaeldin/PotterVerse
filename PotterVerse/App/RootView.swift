//
//  RootView.swift
//  Fashly
//
//  Created by Yousuf Abdelfattah on 04/08/2025.
//

import SwiftUI
import Factory

struct RootView: View {
    @InjectedObject(\.appState) private var appState
    
    var body: some View {
        Group {
            switch appState.currentAppStateFlow {
            case .onboarding:
                OnboardingView()
            case .bottomTabs:
                BottomTabsView()
            }
        }
    }
    
    private func updateCurrentView(initial: Bool = false) {
//        let animationBlock = {
//            if !userToken.isEmpty && userCompletedAuthentication {
//                appState.navigateToHomeAfterSignedIn()
//            } else {
//                appState.navigateToAuthenticationAfterSignedOut()
//            }
//        }
//        
//        if initial {
//            // No animation during the initial rendering
//            animationBlock()
//        } else {
//            withAnimation {
//                animationBlock()
//            }
//        }
    }
}

#Preview {
    RootView()
}

