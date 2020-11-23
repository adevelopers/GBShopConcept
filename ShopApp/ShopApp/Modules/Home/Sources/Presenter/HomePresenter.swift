//
//  HomePresenter.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import Foundation

final class HomePresenter {
            
    weak var view: HomeViewInput?
    let interactor: HomeInteractorInput
    let router: HomeRouterInput
    weak var output: HomeModuleOutput?
            
    init(view: HomeViewInput?,
         interactor: HomeInteractorInput,
         router: HomeRouterInput,
         output: HomeModuleOutput? = nil) {
        
        self.view = view
        self.interactor = interactor
        self.router = router
        self.output = output
    }
}

extension HomePresenter: HomeViewOutput {
    
    func viewDidLoad() {}
    
    func logout() {
        router.logout()
    }
}

extension HomePresenter: HomeInteractorOutput {
    
}
