//
//  LoginViewModel.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import Foundation

protocol LoginViewModelViewDelegate: AnyObject {
    func displayData(data: String)
}

class LoginViewModel {
    
    weak var viewDelegate: LoginViewModelViewDelegate?
    let coordinator: LoginCoordinator
    
    init(coordinator: LoginCoordinator) {
        self.coordinator = coordinator
    }
    
}
