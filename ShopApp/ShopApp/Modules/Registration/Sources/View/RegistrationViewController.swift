//
//  RegistrationViewController.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class RegistrationViewController: UIViewController {

    var presenter: RegistrationViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Регистрация"
        
        presenter?.viewDidLoad()
    }
}

extension RegistrationViewController: RegistrationViewInput {
    
}
