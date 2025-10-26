//
//  CharacterDomain.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 23/10/2025.
//

import Foundation

struct CharacterDomain {
    let id, name: String
    let alternateNames: [String]
    let species: String
    let gender: String
    let house: String
    let dateOfBirth: String
    let yearOfBirth: Int
    let wizard: Bool
    let ancestry: String
    let eyeColour: String
    let hairColour: String
    let wand: Wand
    let patronus: String
    let hogwartsStudent, hogwartsStaff: Bool
    let actor: String
    let alternateActors: [String]
    let alive: Bool
    let image: String
}
