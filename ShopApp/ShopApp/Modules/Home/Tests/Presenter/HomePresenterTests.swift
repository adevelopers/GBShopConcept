//
//  HomePresenterTests.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import XCTest
import SwiftyMocky

@testable import App

final class HomePresenterTests: XCTestCase {
    
    var presenter: HomePresenter!
    var view: HomeViewInputMock!
    var interactor: HomeInteractorInputMock!
    var router: HomeRouterInputMock!
    
    override func setUp() {
        super.setUp()
        view = HomeViewInputMock()
        interactor = HomeInteractorInputMock()
        router = HomeRouterInputMock()
        presenter = HomePresenter(view: view, interactor: interactor, router: router)
    }

}
