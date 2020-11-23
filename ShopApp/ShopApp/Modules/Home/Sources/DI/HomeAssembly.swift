//
//  HomeAssembly.swift
//  ShopApp
//
//  Created by Kirill Khudiakov on 21.11.2020.
//

import Swinject


struct HomeAssembly: Assembly {
    func assemble(container: Container) {
        container.register(HomeBuilderProtocol.self) { _ in
            return HomeBuilder()
        }
    }
}
