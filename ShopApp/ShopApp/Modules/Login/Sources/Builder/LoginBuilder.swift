//
//  LoginBuilder.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit
import Swinject


final class LoginBuilder {
    
    var resolver: Resolver
    
    init(resolver: Resolver) {
        self.resolver = resolver
    }
}

extension LoginBuilder: LoginBuilderProtocol {
    
    func build(output: LoginModuleOutput?) -> UIViewController {
        
        let loginService = LoginService()
        let view = LoginViewController()
        let interactor = LoginInteractor(loginService: loginService)
        let router = LoginRouter(viewController: view)
        let presenter = LoginPresenter(view: view, interactor: interactor, router: router, output: output)
        
        view.presenter = presenter
        interactor.output = presenter
        
        return view
    }
}
