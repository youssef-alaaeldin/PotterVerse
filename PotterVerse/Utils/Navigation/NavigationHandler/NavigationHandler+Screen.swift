//
//  NavigationHandler+Screen.swift
//  Style-IT-IOS
//
//  Created by Mohamed Salah on 26/11/2024.
//

//MARK: - Screen builder

import SwiftUI
extension NavRouter {
    @ViewBuilder
    public func build(screen: Screen) -> some View {
        switch screen {
        case .home:
            HomeView()
        case .search:
            Text("Search")
        case .favorites:
            Text("Favorites")
        case .profile:
            Text("Profile")
        case .characters:
            CharactersView()
        default:
            EmptyView()
        }
    }
}
