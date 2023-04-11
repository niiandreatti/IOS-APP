//
//  SplashRouter.swift
//  bank-safra-ios-mobile
//
//  Created by Nicolas Santana on 07/04/23.
//

import Foundation
import UIKit

protocol RouterProtocol {
    func routeToFeedController()
}

final class SplashViewControllerRouter: RouterProtocol {
    weak var viewController: SplashViewController?
    
    func routeToFeedController() {
        let vc = FeedController()
        let navigation = UINavigationController(rootViewController: vc)
        navigation.modalPresentationStyle = .fullScreen
        navigation.modalTransitionStyle = .crossDissolve
        self.viewController?.present(navigation, animated: true)
    }
    
}
