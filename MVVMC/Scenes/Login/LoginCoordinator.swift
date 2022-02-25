//
//  LoginCoordinator.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class LoginCoordinator: BaseCoordinator {
    
    private let navigationController: UINavigationController
    private let appDependency: AppDependency
    
    init(navigationController: UINavigationController, appDependency: AppDependency) {
        self.navigationController = navigationController
        self.appDependency = appDependency
    }
    
    override func start() {
        let viewController = LoginViewController()
        let viewModel = LoginViewModel(coordinator: self)
        viewController.viewModel = viewModel
        
        navigationController.pushViewController(viewController, animated: true)
//        navigationController.present(viewController, animated: true, completion: nil)
    }
    
    override func finish() {
        
    }
    
}

extension LoginCoordinator {
    
    public func showLogin() {
        
    }
    
}
