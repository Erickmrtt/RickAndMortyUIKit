//
//  RMService.swift
//  RickAndMortyUIKit
//
//  Created by erick on 30/06/24.
//

import Foundation

final class RMService {
    static let shared = RMService()

    private init() {}
    
    /// Rick And Morty API request
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping(Result<String,Error>) -> Void) {

    }
}
