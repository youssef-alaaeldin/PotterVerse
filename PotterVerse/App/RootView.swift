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
            case .mainScreen:
                MainScreenView()
            case .bottomTabs:
                BottomTabsView()
            }
        }
    }
}

#Preview {
    RootView()
}

