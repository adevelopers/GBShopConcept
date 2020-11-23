//
//  RegistrationAssembly.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import Swinject

struct RegistrationAssembly: Assembly {
    func assemble(container: Container) {
        container.register(RegistrationBuilderProtocol.self) { _ in
            return RegistrationBuilder()
        }
    }
}
