//
//  WelcomeCoordinator.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class WelcomeCoordinator: BaseCoordinator {
    
    private let window: UIWindow
    private let appDependency: AppDependency
    private var navigationController: UINavigationController!
    
    init(window: UIWindow, appDependency: AppDependency) {
        self.window = window
        self.appDependency = appDependency
    }
    
    override func start() {
        let viewController = WelcomeViewController()
        let viewModel = WelcomeViewModel(coordinator: self)
        viewController.viewModel = viewModel
        
        let rootViewController = UINavigationController(rootViewController: viewController)
        self.navigationController = rootViewController
        
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
    override func finish() {
        
    }
    
}

extension WelcomeCoordinator {
    
    public func showLogin() {
        let coordinator = LoginCoordinator(navigationController: navigationController, appDependency: appDependency)
        coordinator.start()
    }
    
}

