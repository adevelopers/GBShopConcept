//
//  RegistrationBuilder.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class RegistrationBuilder {
    
    init() {
        
    }
}

extension RegistrationBuilder: RegistrationBuilderProtocol {
    
    func build(output: RegistrationModuleOutput?) -> UIViewController {
        
        let view = RegistrationViewController()
        let interactor = RegistrationInteractor()
        let router = RegistrationRouter(viewController: view)
        let presenter = RegistrationPresenter(view: view, interactor: interactor, router: router, output: output)
        
        view.presenter = presenter
        interactor.output = presenter
        
        return view
    }
}
