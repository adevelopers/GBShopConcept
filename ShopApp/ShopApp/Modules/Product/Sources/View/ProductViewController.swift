//
//  ProductViewController.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class ProductViewController: UIViewController {

    var presenter: ProductViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
    }
}

extension ProductViewController: ProductViewInput {
    
}
