//
//  LoginInteractorProtocols.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import Foundation

protocol LoginInteractorInput: class {
    func login(with login: String, and password: String)
}

protocol LoginInteractorOutput: class {
    func didLogin()
}
