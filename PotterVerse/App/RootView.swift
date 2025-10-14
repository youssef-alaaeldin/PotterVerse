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
    
    @Environment(\.colorScheme) private var systemColorScheme
    
    @State private var isFirstAppearance: Bool = true
    
    var body: some View {
        ZStack {
            
        }
//        ZStack {
//            if appState.currentView == .onboarding {
//                LoadingScreen()
//                    .transition(isFirstAppearance ? .identity : .opacity)
//            } else if appState.currentView == .login {
//                LoginTabView()
//                    .id(appState.rootViewID)
//                    .transition(isFirstAppearance ? .identity : .opacity)
//            }  else if appState.currentView == .bottomTabs {
//                BottomTabsView()
//                    .id(appState.rootViewID)
//                    .transition(isFirstAppearance ? .identity : .opacity)
//            }
//        }
//        .onChange(of: userCompletedAuthentication) { _, _ in
//            updateCurrentView()
//        }
//        .onAppear {
//            if isFirstAppearance {
//                updateCurrentView(initial: true)
//            }
//            isFirstAppearance = false
//        }
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

