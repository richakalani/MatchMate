//
//  MatchMatePresenter.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//
import Foundation
import Combine
class MatchMatePresenter: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    var matchMateInteractor: MatchMateInteractorInputProtocol?
   
    @Published var userData: UserData? = nil
    func fetchUserData() {
        matchMateInteractor?.fetchUsers()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Successfully fetched users.")
                case .failure(let error):
                    print("Failed with error: \(error)")
                }
            }, receiveValue: { userData in
                print("Fetched users: \(userData.users?.count ?? 0)")
                self.userData = userData
            })
            .store(in: &cancellables)
    }
}
