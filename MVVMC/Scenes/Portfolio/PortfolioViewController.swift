//
//  PortfolioViewController.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class PortfolioViewController: UIViewController {
    
    var viewModel: PortfolioViewModel! {
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
        view.backgroundColor = .gray
        title = "Portfolio"
    }
    
    private func setupBindings() {
        
    }
    
    private func layout() {
        
    }
    
}

extension PortfolioViewController: PortfolioViewModelViewDelegate {
    
}
