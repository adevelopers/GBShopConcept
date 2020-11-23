//
//  LoginAssembly.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import Swinject

struct LoginAssembly: Assembly {
    func assemble(container: Container) {
        container.register(LoginBuilderProtocol.self) { resolver in
            return LoginBuilder(resolver: resolver)
        }
        
        container.register(LoginServiceProtocol.self) { _ in
            return LoginService()
        }
    }
}
