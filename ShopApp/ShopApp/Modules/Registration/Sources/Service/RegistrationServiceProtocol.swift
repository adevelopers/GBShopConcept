//
//  RegistrationServiceProtocol.swift
//  ShopApp
//
//  Created by Kirill Khudiakov on 21.11.2020.
//

import Foundation


protocol RegistrationServiceProtocol {
    func registerUser(with login: String, password: String, completion: (Result<RegistrationEntity, Error>) -> Void)
}
