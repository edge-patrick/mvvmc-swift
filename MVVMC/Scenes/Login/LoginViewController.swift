//
//  LoginViewController.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    var viewModel: LoginViewModel! {
        didSet {
            viewModel.viewDelegate = self
        }
    }
    
    // MARK: - UI
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
        setupUI()
        layout()
    }
    
    private func setupUI() {
        view.backgroundColor = .yellow
    }
    
    private func setupBindings() {
        
    }
    
    private func layout() {
        
    }
    
}

extension LoginViewController: LoginViewModelViewDelegate {
    
    func displayData(data: String) {
        
    }
    
}
