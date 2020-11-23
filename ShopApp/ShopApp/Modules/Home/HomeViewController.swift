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
        label.text = "Home"
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(titleLabel)
        title = "Home"
        
        let inset = CGFloat(16)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 160),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: inset),
            titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -inset),
            titleLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }


}

