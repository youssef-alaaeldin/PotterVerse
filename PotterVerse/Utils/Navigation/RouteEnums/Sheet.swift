//
//  Sheet.swift
//  Style-IT-IOS
//
//  Created by Mohamed Salah on 26/11/2024.
//

import SwiftUI

enum Sheet {
    case test
}

extension Sheet: Identifiable {
    var id: String {
        return String(describing: self).extractedStringBeforeParenthesis()
    }
}

extension Sheet: Equatable {
    public static func == (lhs: Sheet, rhs: Sheet) -> Bool {
        return lhs.id == rhs.id
    }
}

extension Sheet: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
