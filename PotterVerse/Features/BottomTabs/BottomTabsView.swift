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
            searchTabView()
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            favoritesTabView()
                .toolbarBackground(.ultraThinMaterial, for: .tabBar)
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
            Image(systemName: "house")
        }
    }
    
    @ViewBuilder
    func searchTabView() -> some View {
        NavCoordinatorView(
            coordinator: appState.searchCoordinator,
            rootView: .search
        )
        .navigationViewStyle(.stack)
        .tag(Tabs.search)
        .tabItem {
            Image(systemName: "magnifyingglass")
        }
    }
    
    @ViewBuilder
    func favoritesTabView() -> some View {
        NavCoordinatorView(
            coordinator: appState.favoritesCoordinator,
            rootView: .favorites
        )
        .navigationViewStyle(.stack)
        .tag(Tabs.favorites)
        .tabItem {
            Image(systemName: "bookmark")
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
           Image(systemName: "person")
        }
    }
}

#Preview {
    BottomTabsView()
}
