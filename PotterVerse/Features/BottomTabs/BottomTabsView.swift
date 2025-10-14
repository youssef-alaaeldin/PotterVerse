//
//  BottomTabsVIew.swift
//  Fashly
//
//  Created by Yousuf Abdelfattah on 19/07/2025.
//

import SwiftUI
import Factory

public struct BottomTabsView: View {
    @InjectedObject(\.appState) private var appState
    
    @State private var renderedImage: UIImage? = nil

    public var body: some View {
        TabView(selection: $appState.selectedTab) {
            homeTabView()
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            notificationsTabView()
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
//            ordersTabView()
//                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            profileTabView()
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
        }
        
    }
    
    @ViewBuilder
    func homeTabView() -> some View {
        NavCoordinatorView(
            coordinator: appState.homeCoordinator,
            rootView: .home
        )
        .navigationViewStyle(.stack)
        .tag(Tabs.home)
        .tabItem {
            appState.selectedTab == .home ? Image(.homeSelected) : Image(.home)
        }
    }
    
    @ViewBuilder
    func notificationsTabView() -> some View {
        NavCoordinatorView(
            coordinator: appState.notificationCoordinator,
            rootView: .notifcaitons
        )
        .tag(Tabs.notifications)
        .tabItem {
            appState.selectedTab == .notifications ? Image(.notificationSelected) : Image(.notification)
        }
    }
    
    @ViewBuilder
    func ordersTabView() -> some View {
        NavCoordinatorView(
            coordinator: appState.ordersCoordinator,
            rootView: .orders
        )
        .tag(Tabs.profile)
        .tabItem {
            appState.selectedTab == .orders ? Image(.cartSelected) : Image(.orders)
        }
    }
    
    @ViewBuilder
    func profileTabView() -> some View {
        NavCoordinatorView(
            coordinator: appState.profileCoordinator,
            rootView: .profile
        )
        .tag(Tabs.profile)
        .tabItem {
            appState.selectedTab == .profile ? Image(.profileSelected) : Image(.profile)
        }
    }
}

#Preview {
    BottomTabsView()
}
