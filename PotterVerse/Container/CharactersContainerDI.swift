//
//  CharactersContainerDI.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 26/10/2025.
//

import Foundation
import Factory

extension Container {
    // MARK: - Remote DataSource
    var characterRemoteDS: Factory<CharactersRemoteDSProtocol> {
        Factory(self) { CharactersRemoteDS() }
    }
}
