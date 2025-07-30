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
    @Published var  acceptedUsers = [User]()
    @Published var rejectedUser = [User]()
    @Published var selectedIndex: Int = 0
    
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
    
    func userSelected(user: User) {
        userData?.users = userData?.users?.filter({$0.id != user.id})
        if user.isAccepted == true {
            acceptedUsers.append(user)
            selectedIndex = 1
        } else {
            rejectedUser.append(user)
            selectedIndex = 2
        }
    }
}
