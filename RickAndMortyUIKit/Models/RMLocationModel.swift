//
//  RMLocationModel.swift
//  RickAndMortyUIKit
//
//  Created by erick on 30/06/24.
//

import Foundation

struct RMLocationModel: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String

}
