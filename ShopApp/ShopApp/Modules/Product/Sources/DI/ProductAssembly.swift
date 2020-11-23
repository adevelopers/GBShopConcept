//
//  ProductAssembly.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import Swinject

struct ProductAssembly: Assembly {
    func assemble(container: Container) {
        container.register(ProductBuilderProtocol.self) { _ in
            return ProductBuilder()
        }
    }
}
