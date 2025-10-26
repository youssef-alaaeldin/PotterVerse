//
//  CharactersRemoteDS.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 21/10/2025.
//

import Foundation
import Factory


final class CharactersRemoteDS: CharactersRemoteDSProtocol {
    @Injected(\.networkProvider) private var networkProvider
    
    func getCharacters(charactersRequest: CharactersRequest) async throws -> [CharacterDTO] {
        try await networkProvider.get(endpoint: charactersRequest, responseType: [CharacterDTO].self)
    }
}
