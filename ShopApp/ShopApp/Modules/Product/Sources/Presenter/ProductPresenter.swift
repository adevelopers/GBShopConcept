//
//  ProductPresenter.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import Foundation

final class ProductPresenter {
            
    weak var view: ProductViewInput?
    let interactor: ProductInteractorInput
    let router: ProductRouterInput
    weak var output: ProductModuleOutput?
            
    init(view: ProductViewInput?,
         interactor: ProductInteractorInput,
         router: ProductRouterInput,
         output: ProductModuleOutput? = nil) {
        
        self.view = view
        self.interactor = interactor
        self.router = router
        self.output = output
    }
}

extension ProductPresenter: ProductViewOutput {
    
    func viewDidLoad() {
    }
}

extension ProductPresenter: ProductInteractorOutput {
    
}
