//
//  LoginRouter.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class LoginRouter {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
    
}

extension LoginRouter: LoginRouterInput {
    
    func openHome() {
        let controller = HomeBuilder().build(output: .none)
        viewController?.navigationController?.pushViewController(controller, animated: true)
    }
    
    func openRegistration() {
        let controller = RegistrationBuilder().build(output: .none)
        viewController?.navigationController?.pushViewController(controller, animated: true)

    }
    
}
