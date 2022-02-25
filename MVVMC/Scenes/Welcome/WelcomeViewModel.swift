//
//  WelcomeViewModel.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import Foundation

protocol WelcomeViewModelViewDelegate: AnyObject {
    func displayData(data: String)
}

class WelcomeViewModel {
    
    weak var viewDelegate: WelcomeViewModelViewDelegate?
    let coordinator: WelcomeCoordinator
    
    init(coordinator: WelcomeCoordinator) {
        self.coordinator = coordinator
    }
    
    @objc public func showDetail() {
        coordinator.showLogin()
    }
    
}
