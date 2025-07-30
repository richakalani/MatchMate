//
//  MatchMateRouter.swift
//  MatchMate
//
//  Created by Richa Kalani on 29/07/25.
//
import Foundation
final class MatchMateRouter {
    class func getMatMateView() -> MatchMateView {
        let interactor = MatchMateInteractor()
        let presenter = MatchMatePresenter()
        presenter.matchMateInteractor = interactor
        return MatchMateView(presenter: presenter)
    }
}
