//
//  RMCharacterModel.swift
//  RickAndMortyUIKit
//
//  Created by erick on 30/06/24.
//

import Foundation
struct RMCharacterModel: Codable {
    let results: [String]
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOriginModel
    let location: RMSingleLocationModel
    let image: String
    let episode: [String]
    let url: String
    let created: String
}


