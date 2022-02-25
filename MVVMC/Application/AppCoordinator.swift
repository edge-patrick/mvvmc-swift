//
//  AppCoordinator.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    
    private let window: UIWindow
    private let application: UIApplication
    private let appDependency: AppDependency

    init(window: UIWindow, application: UIApplication) {
        self.window = window
        self.application = application
        self.appDependency = AppDependency()
    }

    override func start() {
        coordinateToRoot()
    }
    
    private func coordinateToRoot() {
        if appDependency.authenticationService.signedIn {
            showTabBarCoordinator()
        } else {
            showWelcomeCoordinator()
        }
    }

    override func finish() {

    }

}

extension AppCoordinator {
    
    private func showWelcomeCoordinator() {
        let coordinator = WelcomeCoordinator(window: window, appDependency: appDependency)
        coordinator.start()
    }

    private func showTabBarCoordinator() {
        let coordinator = TabBarCoordinator(window: window, appDependency: appDependency)
        coordinator.start()
    }
    
}
