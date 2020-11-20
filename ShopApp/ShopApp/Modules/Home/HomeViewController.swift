//
//  ViewController.swift
//  ShopApp
//
//  Created by Kirill Khudiakov on 20.11.2020.
//

import UIKit

class HomeViewController: UIViewController {

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(titleLabel)
        
        title = "Home"
        
        let inset = CGFloat(1)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: inset),
            titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -inset),
            titleLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }


}

