//
//  LoginInteractor.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  Copyright © 2020. All rights reserved.
//

import Foundation


final class LoginInteractor {

    let loginService: LoginServiceProtocol
    
    weak var output: LoginInteractorOutput?
    
    init(loginService: LoginServiceProtocol) {
        self.loginService = loginService
    }
}

extension LoginInteractor: LoginInteractorInput {
    func login(with login: String, and password: String) {
        loginService.login(username: login,
                           password: password,
                           completion: logged)
    }
    
    private func logged(_ isAuthorized: Bool) {
        output?.didLogin()
    }
    
}
