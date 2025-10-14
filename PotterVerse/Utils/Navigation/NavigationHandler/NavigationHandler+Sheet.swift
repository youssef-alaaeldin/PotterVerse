//
//  NavigationHandler+Sheet.swift
//  Style-IT-IOS
//
//  Created by Mohamed Salah on 26/11/2024.
//

import Foundation
import SwiftUI

//MARK: - Sheet builder -

extension NavRouter {
    @ViewBuilder
    public func build(sheet: Sheet) -> some View {
        switch sheet {
            default:
                EmptyView()
        }
    }
}
