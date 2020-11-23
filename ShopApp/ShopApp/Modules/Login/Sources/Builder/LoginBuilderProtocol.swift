//
//  LoginBuilderProtocol.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

protocol LoginBuilderProtocol: class {
    
    func build(output: LoginModuleOutput?) -> UIViewController
}
