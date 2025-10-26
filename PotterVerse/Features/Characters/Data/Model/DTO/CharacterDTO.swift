//
//  Character.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 21/10/2025.
//

import Foundation

struct CharacterDTO: Codable {
    let fullName, nickname: String
    let hogwartsHouse: String
    let interpretedBy: String
    let children: [String]
    let image: String
    let birthdate: String
    let index: Int
}
