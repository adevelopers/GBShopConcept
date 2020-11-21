//
//  LoginPresenterTests.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import XCTest
import SwiftyMocky

@testable import ShopApp

final class LoginPresenterTests: XCTestCase {
    
    var presenter: LoginPresenter!
    var view: LoginViewInputMock!
    var interactor: LoginInteractorInputMock!
    var router: LoginRouterInputMock!
    
    override func setUp() {
        super.setUp()
        view = LoginViewInputMock()
        interactor = LoginInteractorInputMock()
        router = LoginRouterInputMock()
        presenter = LoginPresenter(view: view, interactor: interactor, router: router)
    }

}
