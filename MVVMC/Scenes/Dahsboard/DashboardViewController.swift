//
//  DashboardViewController.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class DashboardViewController: UIViewController {
    
    var viewModel: DashboardViewModel! {
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
        view.backgroundColor = .lightGray
        title = "Dashboard"
    }
    
    private func setupBindings() {
        
    }
    
    private func layout() {
        
    }
    
}

extension DashboardViewController: DashboardViewModelViewDelegate {
    
}
