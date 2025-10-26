//
//  Repository.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 21/10/2025.
//

import Foundation
import Factory

protocol CharactersRepositoryProtocol {
    func getCharacters(charactersRequest: CharactersRequest) async throws -> [CharacterDomain]
}

class CharactersRepository: CharactersRepositoryProtocol {
    @Injected(\.characterRemoteDS) private var characterRemoteDS
    
    func getCharacters(charactersRequest: CharactersRequest) async throws -> [CharacterDomain] {
        let mapper = CharactersMapper()
        
        let characterDTO = try await characterRemoteDS.getCharacters(charactersRequest: charactersRequest)
        
        return mapper.dtoToDomain(characterDTO)
    }
}
