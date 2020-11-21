//
//  RegistrationService.swift
//  ShopApp
//
//  Created by Kirill Khudiakov on 21.11.2020.
//

import Foundation


final class RegistrationService: RegistrationServiceProtocol {
    func registerUser(with login: String, password: String, completion: (Result<RegistrationEntity, Error>) -> Void) {
        completion(.success(.init(id: 123, login: login, password: password)))
    }
}
