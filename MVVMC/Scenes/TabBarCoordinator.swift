//
//  TabBarCoordinator.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class TabBarCoordinator: BaseCoordinator {
    
    private let window: UIWindow
    private let appDependency: AppDependency
    
    init(window: UIWindow, appDependency: AppDependency) {
        self.window = window
        self.appDependency = appDependency
    }
    
    override func start() {
        let tabBarController = UITabBarController()
        
        let dashboard = DashboardCoordinator(navigationController: UINavigationController(), appDependency: appDependency)
        let dashboardVC = dashboard.setup()
        
        let portfolio = PortfolioCoordinator(navigationController: UINavigationController(), appDependency: appDependency)
        let portfolioVC = portfolio.setup()
        
        tabBarController.viewControllers = [dashboardVC, portfolioVC]
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
    
    private func configureTabBar() {
        
    }
    
    override func finish() {
        
    }
    
}
