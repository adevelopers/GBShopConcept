//
//  ProductPresenterTests.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import XCTest
import SwiftyMocky

@testable import App

final class ProductPresenterTests: XCTestCase {
    
    var presenter: ProductPresenter!
    var view: ProductViewInputMock!
    var interactor: ProductInteractorInputMock!
    var router: ProductRouterInputMock!
    
    override func setUp() {
        super.setUp()
        view = ProductViewInputMock()
        interactor = ProductInteractorInputMock()
        router = ProductRouterInputMock()
        presenter = ProductPresenter(view: view, interactor: interactor, router: router)
    }

}
