//
//  ModulesAssembly.swift
//  ShopApp
//
//  Created by Kirill Khudiakov on 21.11.2020.
//

import Swinject


struct ModulesAssembly: Assembly {
    
    let assemblies: [Assembly] = [
        LoginAssembly(),
        RegistrationAssembly(),
        HomeAssembly(),
        ProductAssembly()
    ]
    
    func assemble(container: Container) {
        assemblies.forEach({ $0.assemble(container: container) })
    }
}


