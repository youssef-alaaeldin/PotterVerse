//
//  GetCharactersUseCase.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 26/10/2025.
//

import Foundation
import Factory

protocol GetCharactersUseCaseProtocol {
    func execute(charactersRequest: CharactersRequest) async throws ->  [CharacterDomain]
}

class GetCharactersUseCase: GetCharactersUseCaseProtocol {
    @Injected(\.characterRepository) private var characterRepository
    
    func execute(charactersRequest: CharactersRequest) async throws -> [CharacterDomain] {
        try await characterRepository.getCharacters(charactersRequest: charactersRequest)
    }
}
