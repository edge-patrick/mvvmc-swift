//
//  AppDependency.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import Foundation

class AppDependency {
    
    let authenticationService: AuthenticationService
    
    init() {
        self.authenticationService = AuthenticationService()
    }
    
}
