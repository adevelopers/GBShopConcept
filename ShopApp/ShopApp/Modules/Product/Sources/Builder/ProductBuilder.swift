//
//  ProductBuilder.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class ProductBuilder {
    
    init() {
        
    }
}

extension ProductBuilder: ProductBuilderProtocol {
    
    func build(output: ProductModuleOutput?) -> UIViewController {
        
        let view = ProductViewController()
        let interactor = ProductInteractor()
        let router = ProductRouter(viewController: view)
        let presenter = ProductPresenter(view: view, interactor: interactor, router: router, output: output)
        
        view.presenter = presenter
        interactor.output = presenter
        
        return view
    }
}
