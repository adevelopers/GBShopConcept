//
//  LoginViewController.swift
//  ShopApp
//
//  Created Kirill Khudiakov on 21.11.2020.
//  
//

import UIKit

final class LoginViewController: UIViewController {

    var presenter: LoginViewOutput?
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.text = "Login"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loginField: UITextField = {
        let field = UITextField()
        field.textAlignment = .left
        field.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        field.backgroundColor = UIColor(named: "field")
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    private lazy var passwordField: UITextField = {
        let field = UITextField()
        field.textAlignment = .left
        field.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        field.backgroundColor = UIColor(named: "field")
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 15
        button.backgroundColor = .black
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(titleLabel)
        view.addSubview(loginField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        
        let inset = CGFloat(16)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: inset),
            titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -inset),
        ])
        
        NSLayoutConstraint.activate([
            loginField.topAnchor.constraint(equalTo:  titleLabel.bottomAnchor, constant: 16),
            loginField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: inset),
            loginField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -inset),
            loginField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo:  loginField.bottomAnchor, constant: 16),
            passwordField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: inset),
            passwordField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -inset),
            passwordField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo:  passwordField.bottomAnchor, constant: 16),
            loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: inset),
            loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -inset),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        presenter?.viewDidLoad()
    }
    
    @objc
    private func didTapLogin() {
        presenter?.didTapLogin(login: loginField.text,
                               password: passwordField.text)
    }
}

extension LoginViewController: LoginViewInput {
    
}
