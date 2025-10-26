//
//  CharactersRemoteDSProtocol.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 23/10/2025.
//

import Foundation

protocol CharactersRemoteDSProtocol {
    func getCharacters(charactersRequest: CharactersRequest) async throws -> [CharacterDTO]
}

