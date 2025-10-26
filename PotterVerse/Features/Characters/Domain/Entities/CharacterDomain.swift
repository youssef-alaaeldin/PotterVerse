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
    let index: Int
}

// MARK: - Mock Data
extension CharacterDomain {
    static let mockList: [CharacterDomain] = {
        let characters: [CharacterDomain] = [
            CharacterDomain(
                fullName: "Harry Potter",
                nickname: "The Boy Who Lived",
                hogwartsHouse: "Gryffindor",
                image: "https://ik.imagekit.io/hpapi/harry.jpg",
                birthdate: "31-07-1980",
                index: 0
            ),
            CharacterDomain(
                fullName: "Hermione Granger",
                nickname: "Brightest Witch of Her Age",
                hogwartsHouse: "Gryffindor",
                image: "https://ik.imagekit.io/hpapi/hermione.jpeg",
                birthdate: "19-09-1979",
                index: 1
            ),
            CharacterDomain(
                fullName: "Ron Weasley",
                nickname: "Ron",
                hogwartsHouse: "Gryffindor",
                image: "https://ik.imagekit.io/hpapi/ron.jpg",
                birthdate: "01-03-1980",
                index: 2
            ),
            CharacterDomain(
                fullName: "Draco Malfoy",
                nickname: "Draco",
                hogwartsHouse: "Slytherin",
                image: "https://ik.imagekit.io/hpapi/draco.jpg",
                birthdate: "05-06-1980",
                index: 3
            ),
            CharacterDomain(
                fullName: "Luna Lovegood",
                nickname: "Loony",
                hogwartsHouse: "Ravenclaw",
                image: "https://ik.imagekit.io/hpapi/luna.jpg",
                birthdate: "13-02-1981",
                index: 4
            ),
            CharacterDomain(
                fullName: "Neville Longbottom",
                nickname: "Neville",
                hogwartsHouse: "Gryffindor",
                image: "https://ik.imagekit.io/hpapi/neville.jpg",
                birthdate: "30-07-1980",
                index: 5
            )
        ]
        
        // Randomize and repeat list
        let repeated = (0..<10).flatMap { _ in characters.shuffled() }
        return repeated.shuffled()
    }()
}
