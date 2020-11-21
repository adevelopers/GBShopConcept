//
//  HomeBuilderProtocol.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

protocol HomeBuilderProtocol: class {
    
    func build(output: HomeModuleOutput?) -> UIViewController
}
