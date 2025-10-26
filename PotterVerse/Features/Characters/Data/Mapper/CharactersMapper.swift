//
//  CharactersMapper.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 26/10/2025.
//

import Foundation

struct CharactersMapper: RemoteMapperProtocol {
    func dtoToDomain(_ model: CharacterDTO) -> CharacterDomain {
        return CharacterDomain(
            id: model.id,
            name: model.name,
            alternateNames: model.alternateNames,
            species: model.species,
            gender: model.gender ?? "",
            house: model.house ?? "",
            dateOfBirth: model.dateOfBirth ?? "",
            yearOfBirth: model.yearOfBirth ?? 0,
            wizard: model.wizard,
            ancestry: model.ancestry ?? "",
            eyeColour: model.eyeColour ?? "",
            hairColour: model.hairColour ?? "",
            wand: model.wand,
            patronus: model.patronus ?? "",
            hogwartsStudent: model.hogwartsStudent,
            hogwartsStaff: model.hogwartsStaff,
            actor: model.actor,
            alternateActors: model.alternateActors,
            alive: model.alive,
            image: model.image
        )
    }
    
    func dtoToDomain(_ list: [CharacterDTO]? ) -> [CharacterDomain] {
        return (list ?? []).map { dtoToDomain($0)}
    }
    
    typealias Dto = CharacterDTO
    
    typealias Domain = CharacterDomain
    
    
    
    
}
