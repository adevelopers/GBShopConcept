//
//  RegistrationRouter.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class RegistrationRouter {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
    
}

extension RegistrationRouter: RegistrationRouterInput {
    
}
