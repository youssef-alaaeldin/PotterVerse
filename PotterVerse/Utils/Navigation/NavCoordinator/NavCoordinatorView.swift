//
//  NavCoordinatorView.swift
//  PotterVerse
//
//  Created by Youssef Alaaeldin on 26/11/2024.
//


import SwiftUI

struct NavCoordinatorView: View {
    @StateObject var coordinator: NavRouter
    var rootView: Screen
    
    public init(coordinator: NavRouter, rootView: Screen) {
        self._coordinator = StateObject(wrappedValue: coordinator)
        self.rootView = rootView
    }
    
    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(screen: rootView)
                .navigationDestination(for: Screen.self) { screen in
                    coordinator.build(screen: screen)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.build(fullScreenCover: fullScreenCover)
                }
        }
        .environmentObject(coordinator)
    }
}

