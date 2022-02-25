//
//  DashboardViewModel.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import Foundation

protocol DashboardViewModelViewDelegate: AnyObject {
    
}

class DashboardViewModel {
    
    weak var viewDelegate: DashboardViewModelViewDelegate?
    let coordinator: DashboardCoordinator
    
    init(coordinator: DashboardCoordinator) {
        self.coordinator = coordinator
    }
    
}
