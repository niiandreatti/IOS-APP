//
//  SplashInteractor.swift
//  bank-safra-ios-mobile
//
//  Created by Nicolas Santana on 07/04/23.
//

import Foundation

protocol SplashInteractorLogic {
    func fetch()
}

class SplashInteractor: SplashInteractorLogic {
    var presenter: SplashPresenter?
    
    init(presenter: SplashPresenter) {
        self.presenter = presenter
    }
    
    func fetch() {}
}
