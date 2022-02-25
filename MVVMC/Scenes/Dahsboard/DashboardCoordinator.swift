//
//  DashboardCoordinator.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class DashboardCoordinator: BaseCoordinator {
    
    private let navigationController: UINavigationController
    private let appDependency: AppDependency
    
    init(navigationController: UINavigationController, appDependency: AppDependency) {
        self.navigationController = navigationController
        self.appDependency = appDependency
    }
    
    func setup() -> UIViewController {
        let viewController = DashboardViewController()
        let viewModel = DashboardViewModel(coordinator: self)
        viewController.viewModel = viewModel
        
        return viewController
    }
    
    override func start() {
        
    }
    
    override func finish() {
        
    }
    
}

extension DashboardCoordinator {
    
}
