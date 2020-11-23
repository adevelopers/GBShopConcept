//
//  RegistrationPresenter.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import Foundation

final class RegistrationPresenter {
            
    weak var view: RegistrationViewInput?
    let interactor: RegistrationInteractorInput
    let router: RegistrationRouterInput
    weak var output: RegistrationModuleOutput?
            
    init(view: RegistrationViewInput?,
         interactor: RegistrationInteractorInput,
         router: RegistrationRouterInput,
         output: RegistrationModuleOutput? = nil) {
        
        self.view = view
        self.interactor = interactor
        self.router = router
        self.output = output
    }
}

extension RegistrationPresenter: RegistrationViewOutput {
    
    func viewDidLoad() {
    }
}

extension RegistrationPresenter: RegistrationInteractorOutput {
    
}
