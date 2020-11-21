//
//  HomeBuilder.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class HomeBuilder {
    
    init() {
        
    }
}

extension HomeBuilder: HomeBuilderProtocol {
    
    func build(output: HomeModuleOutput?) -> UIViewController {
        
        let view = HomeViewController()
        let interactor = HomeInteractor()
        let router = HomeRouter(viewController: view)
        let presenter = HomePresenter(view: view, interactor: interactor, router: router, output: output)
        
        view.presenter = presenter
        interactor.output = presenter
        
        return view
    }
}
