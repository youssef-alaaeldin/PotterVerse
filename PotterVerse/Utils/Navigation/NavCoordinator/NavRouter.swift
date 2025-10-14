//
//  NavCoordinator.swift
//  PotterVerse
//
//  Created by Youssef Alaaeldin on 26/11/2025.
//

import Foundation
import SwiftUI
import Combine

class NavRouter: ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ screen: Screen) {
        path.append(screen)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    func popCount(_ count: Int) {
        guard count > 0 else { return }
        let safeCount = min(count, path.count)
        path.removeLast(safeCount)
    }
    
    func popToRoot() {
        guard !path.isEmpty else { return }
        path.removeLast(path.count)
    }
    
//    func popTo(_ screen: Screen) {
//        //TODO: 
//    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
}
