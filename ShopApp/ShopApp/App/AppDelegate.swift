//
//  AppDelegate.swift
//  ShopApp
//
//  Created by Kirill Khudiakov on 20.11.2020.
//

import UIKit
import Swinject


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private let container: Container = Container()
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupDependencies()
        start()
        return true
    }
    
}


// MARK: Сборка
extension AppDelegate {
    func setupDependencies() {
        Assembler(container: container).apply(assemblies: [
              ModulesAssembly()
        ])
      }
}

extension AppDelegate {
    func start() {
        window = UIWindow()
        if let controller = container.resolve(LoginBuilderProtocol.self)?.build(output: .none) {
            let navigationController = UINavigationController(rootViewController: controller)
            window?.rootViewController = navigationController
        }
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
    }
}
