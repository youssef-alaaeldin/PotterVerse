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
            fullName: model.fullName,
            nickname: model.nickname,
            hogwartsHouse: model.hogwartsHouse,
            image: model.image,
            birthdate: model.birthdate
        )
        
    }
    
    func dtoToDomain(_ list: [CharacterDTO]? ) -> [CharacterDomain] {
        return (list ?? []).map { dtoToDomain($0)}
    }
    
    typealias Dto = CharacterDTO
    
    typealias Domain = CharacterDomain
    
    
    
    
}
