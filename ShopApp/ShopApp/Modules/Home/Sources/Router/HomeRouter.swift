//
//  HomeRouter.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class HomeRouter {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
    
}

extension HomeRouter: HomeRouterInput {
    func logout() {
        viewController?.navigationController?.popToRootViewController(animated: true)
    }
}
