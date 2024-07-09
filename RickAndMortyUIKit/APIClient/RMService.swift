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
    enum RMError: Error {
        case failedToCreateRequest
        case invalidURL
        case failedToGetData
    }
    /// Rick And Morty API request
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping(Result<T,Error>) -> Void) {
            guard let urlRequest = self.request(from: request) else {
                completion(.failure(RMError.failedToCreateRequest))
                return
            }
            let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(error ?? RMError.failedToGetData))
                    return
                }
                do {
                    let result = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(result))
                } catch {
                    completion(.failure(error))
                }
            }
            task.resume()
    }

    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
