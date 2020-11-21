//
//  LoginServiceProtocol.swift
//  ShopApp
//
//  Created by Kirill Khudiakov on 21.11.2020.
//

import Foundation

// GeekBrd3WekPnEski

protocol LoginServiceProtocol {
    func login(username: String, password: String, completion: @escaping (Bool) -> Void)
}
