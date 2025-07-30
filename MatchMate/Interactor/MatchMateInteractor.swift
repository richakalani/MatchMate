//
//  MatchMateInteractor.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//
import Foundation
import Combine
enum NetworkError: Error {
    case invalidResponse
    case decodingError
    case unknown(Error)
}
protocol MatchMateInteractorInputProtocol: AnyObject {
    func fetchUsers() -> AnyPublisher<UserData, NetworkError>
}
class MatchMateInteractor: MatchMateInteractorInputProtocol {
    func fetchUsers() -> AnyPublisher<UserData, NetworkError> {
        let baseURL = URL(string: "https://dummyjson.com/users?limit=10")!
        return URLSession.shared.dataTaskPublisher(for: baseURL)
            .tryMap { output in
                guard let response = output.response as? HTTPURLResponse,
                      (200...299).contains(response.statusCode) else {
                    throw NetworkError.invalidResponse
                }
                return output.data
            }
            .decode(type: UserData.self, decoder: JSONDecoder())
            .mapError { error in
                if error is DecodingError {
                    return .decodingError
                } else if let netErr = error as? NetworkError {
                    return netErr
                } else {
                    return .unknown(error)
                }
            }
            .eraseToAnyPublisher()
    }
}
