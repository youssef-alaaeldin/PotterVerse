//
//  NetworkProviderContainerDI.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 21/10/2025.
//

import Foundation
import Factory

extension Container {
    var networkProvider: Factory<NetworkProviderProtocol> {
        Factory(self) { NetworkProvider() }.singleton
    }
}
