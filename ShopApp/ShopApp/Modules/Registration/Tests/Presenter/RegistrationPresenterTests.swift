//
//  RegistrationPresenterTests.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import XCTest
import SwiftyMocky

@testable import App

final class RegistrationPresenterTests: XCTestCase {
    
    var presenter: RegistrationPresenter!
    var view: RegistrationViewInputMock!
    var interactor: RegistrationInteractorInputMock!
    var router: RegistrationRouterInputMock!
    
    override func setUp() {
        super.setUp()
        view = RegistrationViewInputMock()
        interactor = RegistrationInteractorInputMock()
        router = RegistrationRouterInputMock()
        presenter = RegistrationPresenter(view: view, interactor: interactor, router: router)
    }

}
