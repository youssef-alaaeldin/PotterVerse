//
//  Screen.swift
//  Style-IT-IOS
//
//  Created by Youssef Abdelfattah on 26/11/2024.
//

import Foundation

enum Screen {
    case mainScreen
    case onboarding
    case home
    case search
    case favorites
    case profile
}

extension Screen: Identifiable {
    var id: String {
        return String(describing: self).extractedStringBeforeParenthesis()
    }
}

extension Screen: Equatable {
    public static func == (lhs: Screen, rhs: Screen) -> Bool {
        return lhs.id == rhs.id
    }
}

extension Screen: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
