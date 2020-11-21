//
//  Login.swift
//  ShopApp
//
//  Created by Kirill Khudiakov on 21.11.2020.
//

import Foundation

class LoginService: LoginServiceProtocol {
    
    func login(username: String, password: String, completion: @escaping (Bool) -> Void) {
        completion(true)
    }
    
}
