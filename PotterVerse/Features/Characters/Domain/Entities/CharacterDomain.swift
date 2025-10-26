//
//  CharacterDomain.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 23/10/2025.
//

import Foundation

struct CharacterDomain {
    let fullName, nickname: String
    let hogwartsHouse: String
    let image: String
    let birthdate: String
}

// MARK: - Mock Data
extension CharacterDomain {
    static let mockList: [CharacterDomain] = [
        CharacterDomain(
            id: UUID().uuidString,
            name: "Harry Potter",
            alternateNames: ["The Boy Who Lived"],
            species: "Human",
            gender: "Male",
            house: "Gryffindor",
            dateOfBirth: "31-07-1980",
            yearOfBirth: 1980,
            wizard: true,
            ancestry: "Half-blood",
            eyeColour: "Green",
            hairColour: "Black",
            wand: Wand(wood: "Holly", core: "Phoenix feather", length: 11),
            patronus: "Stag",
            hogwartsStudent: true,
            hogwartsStaff: false,
            actor: "Daniel Radcliffe",
            alternateActors: [],
            alive: true,
            image: "https://ik.imagekit.io/hpapi/harry.jpg"
        ),
        CharacterDomain(
            id: UUID().uuidString,
            name: "Hermione Granger",
            alternateNames: [],
            species: "Human",
            gender: "Female",
            house: "Gryffindor",
            dateOfBirth: "19-09-1979",
            yearOfBirth: 1979,
            wizard: true,
            ancestry: "Muggle-born",
            eyeColour: "Brown",
            hairColour: "Brown",
            wand: Wand(wood: "Vine", core: "Dragon heartstring", length: 10.75),
            patronus: "Otter",
            hogwartsStudent: true,
            hogwartsStaff: false,
            actor: "Emma Watson",
            alternateActors: [],
            alive: true,
            image: "https://ik.imagekit.io/hpapi/hermione.jpeg"
        ),
        CharacterDomain(
            id: UUID().uuidString,
            name: "Ron Weasley",
            alternateNames: [],
            species: "Human",
            gender: "Male",
            house: "Gryffindor",
            dateOfBirth: "01-03-1980",
            yearOfBirth: 1980,
            wizard: true,
            ancestry: "Pure-blood",
            eyeColour: "Blue",
            hairColour: "Red",
            wand: Wand(wood: "Willow", core: "Unicorn tail hair", length: 14),
            patronus: "Jack Russell terrier",
            hogwartsStudent: true,
            hogwartsStaff: false,
            actor: "Rupert Grint",
            alternateActors: [],
            alive: true,
            image: "https://ik.imagekit.io/hpapi/ron.jpg"
        ),
        CharacterDomain(
            id: UUID().uuidString,
            name: "Albus Dumbledore",
            alternateNames: ["Professor Dumbledore"],
            species: "Human",
            gender: "Male",
            house: "Gryffindor",
            dateOfBirth: "Unknown",
            yearOfBirth: 1881,
            wizard: true,
            ancestry: "Half-blood",
            eyeColour: "Blue",
            hairColour: "Silver",
            wand: Wand(wood: "Elder", core: "Thestral tail hair", length: 15),
            patronus: "Phoenix",
            hogwartsStudent: false,
            hogwartsStaff: true,
            actor: "Richard Harris",
            alternateActors: ["Michael Gambon"],
            alive: false,
            image: "https://ik.imagekit.io/hpapi/dumbledore.jpg"
        ),
        CharacterDomain(
            id: UUID().uuidString,
            name: "Severus Snape",
            alternateNames: ["The Half-Blood Prince"],
            species: "Human",
            gender: "Male",
            house: "Slytherin",
            dateOfBirth: "09-01-1960",
            yearOfBirth: 1960,
            wizard: true,
            ancestry: "Half-blood",
            eyeColour: "Black",
            hairColour: "Black",
            wand: Wand(wood: "Unknown", core: "Unknown", length: 0),
            patronus: "Doe",
            hogwartsStudent: false,
            hogwartsStaff: true,
            actor: "Alan Rickman",
            alternateActors: [],
            alive: false,
            image: "https://ik.imagekit.io/hpapi/snape.jpg"
        )
    ]
}
