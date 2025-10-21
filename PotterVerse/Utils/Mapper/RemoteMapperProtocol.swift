//
//  RemoteMapperProtocol.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 21/10/2025.
//


import Foundation

protocol RemoteMapperProtocol {
    associatedtype Dto
    associatedtype Domain
    
    func dtoToDomain(_ model: Dto) -> Domain
}

extension RemoteMapperProtocol {
    func dtoToDomain(_ list: [Dto]?) -> [Domain] {
        return (list ?? []).map { dtoToDomain($0) }
    }
}