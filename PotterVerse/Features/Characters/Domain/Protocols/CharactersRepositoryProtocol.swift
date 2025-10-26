//
//  CharactersRepositoryProtocol.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 26/10/2025.
//

import Foundation

protocol CharactersRepositoryProtocol {
    func getCharacters(charactersRequest: CharactersRequest) async throws -> [CharacterDomain]
}
