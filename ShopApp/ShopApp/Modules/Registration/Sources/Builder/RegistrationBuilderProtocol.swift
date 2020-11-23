//
//  RegistrationBuilderProtocol.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

protocol RegistrationBuilderProtocol: class {
    
    func build(output: RegistrationModuleOutput?) -> UIViewController
}
