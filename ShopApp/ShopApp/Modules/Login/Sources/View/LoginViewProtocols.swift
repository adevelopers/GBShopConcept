//
//  LoginViewProtocols.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol LoginViewInput: class {
    
}

protocol LoginViewOutput: class {
    
    func viewDidLoad()
    func didTapLogin(login: String?, password: String?)
    func didTapRegistration()
}
