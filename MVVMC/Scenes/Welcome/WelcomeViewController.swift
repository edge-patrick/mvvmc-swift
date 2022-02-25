//
//  WelcomeViewController.swift
//  MVVMC
//
//  Created by Patrik Roh on 25/02/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var viewModel: WelcomeViewModel! {
        didSet {
            viewModel.viewDelegate = self
        }
    }
    
    // MARK: - UI
    let button = UIButton(frame: CGRect(x: 20, y: 200, width: 200, height: 60))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
        setupUI()
        layout()
    }
    
    private func setupUI() {
        view.backgroundColor = .green
        
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(UIColor.black, for: .normal)
        view.addSubview(button)
    }
    
    private func setupBindings() {
        button.addTarget(viewModel.self, action: #selector(viewModel.showDetail), for: .touchUpInside)
    }
    
    private func layout() {
//        button.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.top.equalTo(view.safeArea.top).offset(60)
//            make.width.equalTo(120)
//            make.height.equalTo(60)
//        }
        

    }
    
}

extension WelcomeViewController: WelcomeViewModelViewDelegate {
    
    func displayData(data: String) {
        
    }
    
}
