//
//  ProductBuilderProtocol.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

protocol ProductBuilderProtocol: class {
    
    func build(output: ProductModuleOutput?) -> UIViewController
}
