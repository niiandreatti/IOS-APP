//
//  SplashFactory.swift
//  bank-safra-ios-mobile
//
//  Created by Nicolas Santana on 07/04/23.
//

import Foundation
import UIKit

class SplashVCFactory {
    static func config() -> UIViewController {
        let presenter = SplashPresenter()
        let interactor = SplashInteractor(presenter: presenter)
        let router = SplashViewControllerRouter()
        let view = SplashViewController(interactor: interactor, router: router)
        
        presenter.vc = view
        router.viewController = view
        
        return view
    }
}
