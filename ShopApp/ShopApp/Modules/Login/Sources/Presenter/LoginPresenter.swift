//
//  LoginPresenter.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import Foundation

final class LoginPresenter {
            
    weak var view: LoginViewInput?
    let interactor: LoginInteractorInput
    let router: LoginRouterInput
    weak var output: LoginModuleOutput?
            
    init(view: LoginViewInput?,
         interactor: LoginInteractorInput,
         router: LoginRouterInput,
         output: LoginModuleOutput? = nil) {
        
        self.view = view
        self.interactor = interactor
        self.router = router
        self.output = output
    }
}

extension LoginPresenter: LoginViewOutput {
    
    func viewDidLoad() {}
    
    func didTapLogin(login: String?, password: String?) {
        if let login = login, let password = password {
            interactor.login(with: login, and: password)
        }
    }
    
    func didTapRegistration() {
        router.openRegistration()
    }
    
}

extension LoginPresenter: LoginInteractorOutput {
    func didLogin() {
        router.openHome()
    }
}
