//
//  SplashPresenter.swift
//  bank-safra-ios-mobile
//
//  Created by Nicolas Santana on 07/04/23.
//

import Foundation

protocol SplashPresenterLogic {
    func fetch()
}

class SplashPresenter: SplashPresenterLogic {
    weak var vc: SplashViewController?
    
    func fetch() {
        vc?.setupUI()
        vc?.setupLayout()
    }
}
