//
//  CharactersRequest.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 21/10/2025.
//

import Foundation

struct CharactersRequest: Endpoint {
    var parameters: [String : Any]?
    
    var path: String {
        return "/characters"
    }
    
    var headers: [String : String]?
    
    var body: Any?
}
