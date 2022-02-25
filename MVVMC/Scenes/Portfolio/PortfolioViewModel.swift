//
//  PortfolioViewModel.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import Foundation

protocol PortfolioViewModelViewDelegate: AnyObject {
    
}

class PortfolioViewModel {
    
    weak var viewDelegate: PortfolioViewModelViewDelegate?
    let coordinator: PortfolioCoordinator
    
    init(coordinator: PortfolioCoordinator) {
        self.coordinator = coordinator
    }
    
}
