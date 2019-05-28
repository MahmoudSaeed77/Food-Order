//
//  ViewController.swift
//  Food Order
//
//  Created by Mohamed Ibrahem on 1/1/00.
//  Copyright © 2000 Mahmoud Saeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var topImageConstraints: [NSLayoutConstraint]!
    var bottomViewConstraints: [NSLayoutConstraint]!
    var labelStackConstraints: [NSLayoutConstraint]!
    var welcomeLabelConstraints: [NSLayoutConstraint]!
    var loginLabelConstraints: [NSLayoutConstraint]!
    var textfieldStackConstraints: [NSLayoutConstraint]!
    var emailTextfieldConstraints: [NSLayoutConstraint]!
    var passwordTextfieldConstraints: [NSLayoutConstraint]!
    var buttonStackConstraints: [NSLayoutConstraint]!
    var loginButtonConstraints: [NSLayoutConstraint]!
    var forgotPasswordButtonConstraints: [NSLayoutConstraint]!
    var signupStackConstraints: [NSLayoutConstraint]!
    var signupButtonConstraints: [NSLayoutConstraint]!
    var signupLabelConstraints: [NSLayoutConstraint]!
    
    let topImageView: UIImageView = {
        let img = UIImage(named: "brooke-lark")
        let image = UIImageView(image: img)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome back"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login to your account"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .gray
        label.textAlignment = .center
        return label
    }()
    
    let labelStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let textfieldStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let emailTextfield: LeftPaddingTextFiewld = {
        let text = LeftPaddingTextFiewld()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Email"
        text.keyboardType = .emailAddress
        text.layer.masksToBounds = true
        text.layer.cornerRadius = 25
        text.backgroundColor = #colorLiteral(red: 0.9252355695, green: 0.9291906953, blue: 0.945668757, alpha: 1)
        return text
    }()
    
    let passwordTextfield: LeftPaddingTextFiewld = {
        let text = LeftPaddingTextFiewld()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Password"
        text.layer.masksToBounds = true
        text.layer.cornerRadius = 25
        text.backgroundColor = #colorLiteral(red: 0.9252355695, green: 0.9291906953, blue: 0.945668757, alpha: 1)
        text.isSecureTextEntry = true
        return text
    }()
    
    let buttonStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9871205688, green: 0.2082015574, blue: 0.3772976696, alpha: 1)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 25
        return button
    }()
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .clear
        return button
    }()
    
    let signupStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let signupButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.backgroundColor = .clear
        return button
    }()
    
    let signupLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Don't have an account?"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .gray
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        setupConstraints()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNeedsStatusBarAppearanceUpdate()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    
    func addViews(){
        view.addSubview(topImageView)
        view.addSubview(bottomView)
        bottomView.addSubview(labelStack)
        labelStack.addSubview(welcomeLabel)
        labelStack.addSubview(loginLabel)
        bottomView.addSubview(textfieldStack)
        textfieldStack.addSubview(emailTextfield)
        textfieldStack.addSubview(passwordTextfield)
        bottomView.addSubview(buttonStack)
        buttonStack.addSubview(loginButton)
        buttonStack.addSubview(forgotPasswordButton)
        bottomView.addSubview(signupStack)
        signupStack.addSubview(signupLabel)
        signupStack.addSubview(signupButton)
    }
    
    
    func setupConstraints(){
        
        topImageConstraints = [
        topImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: -30),
        topImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        topImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        topImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ]
        NSLayoutConstraint.activate(topImageConstraints)
        
        
        bottomViewConstraints = [
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6)
        ]
        NSLayoutConstraint.activate(bottomViewConstraints)
        
        labelStackConstraints = [
            labelStack.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20),
            labelStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelStack.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.7),
            labelStack.heightAnchor.constraint(equalToConstant: 60)
        ]
        NSLayoutConstraint.activate(labelStackConstraints)
        
        welcomeLabelConstraints = [
            welcomeLabel.topAnchor.constraint(equalTo: labelStack.topAnchor),
            welcomeLabel.leadingAnchor.constraint(equalTo: labelStack.leadingAnchor),
            welcomeLabel.trailingAnchor.constraint(equalTo: labelStack.trailingAnchor),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 40)
        ]
        NSLayoutConstraint.activate(welcomeLabelConstraints)
        
        loginLabelConstraints = [
            loginLabel.bottomAnchor.constraint(equalTo: labelStack.bottomAnchor),
            loginLabel.leadingAnchor.constraint(equalTo: labelStack.leadingAnchor),
            loginLabel.trailingAnchor.constraint(equalTo: labelStack.trailingAnchor),
            loginLabel.heightAnchor.constraint(equalToConstant: 20)
        ]
        NSLayoutConstraint.activate(loginLabelConstraints)
        
        textfieldStackConstraints = [
            textfieldStack.topAnchor.constraint(equalTo: labelStack.bottomAnchor, constant: 30),
            textfieldStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textfieldStack.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.8),
            textfieldStack.heightAnchor.constraint(equalToConstant: 110)
        ]
        NSLayoutConstraint.activate(textfieldStackConstraints)
        
        emailTextfieldConstraints = [
            emailTextfield.topAnchor.constraint(equalTo: textfieldStack.topAnchor),
            emailTextfield.leadingAnchor.constraint(equalTo: textfieldStack.leadingAnchor),
            emailTextfield.trailingAnchor.constraint(equalTo: textfieldStack.trailingAnchor),
            emailTextfield.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(emailTextfieldConstraints)
        
        passwordTextfieldConstraints = [
            passwordTextfield.bottomAnchor.constraint(equalTo: textfieldStack.bottomAnchor),
            passwordTextfield.leadingAnchor.constraint(equalTo: textfieldStack.leadingAnchor),
            passwordTextfield.trailingAnchor.constraint(equalTo: textfieldStack.trailingAnchor),
            passwordTextfield.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(passwordTextfieldConstraints)
        
        buttonStackConstraints = [
            buttonStack.topAnchor.constraint(equalTo: textfieldStack.bottomAnchor, constant: 30),
            buttonStack.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor),
            buttonStack.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.8),
            buttonStack.heightAnchor.constraint(equalToConstant: 110)
        ]
        NSLayoutConstraint.activate(buttonStackConstraints)
        
        loginButtonConstraints = [
            loginButton.topAnchor.constraint(equalTo: buttonStack.topAnchor),
            loginButton.widthAnchor.constraint(equalTo: buttonStack.widthAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(loginButtonConstraints)
        
        forgotPasswordButtonConstraints = [
            forgotPasswordButton.bottomAnchor.constraint(equalTo: buttonStack.bottomAnchor),
            forgotPasswordButton.widthAnchor.constraint(equalTo: buttonStack.widthAnchor),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(forgotPasswordButtonConstraints)
        
        signupStackConstraints = [
            signupStack.topAnchor.constraint(equalTo: buttonStack.bottomAnchor, constant: 30),
            signupStack.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor),
            signupStack.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.6),
            signupStack.heightAnchor.constraint(equalToConstant: 50),
//            signupStack.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(signupStackConstraints)
        
        signupLabelConstraints = [
            signupLabel.leadingAnchor.constraint(equalTo: signupStack.leadingAnchor),
            signupLabel.widthAnchor.constraint(equalTo: signupStack.widthAnchor, multiplier: 0.7),
            signupLabel.topAnchor.constraint(equalTo: signupStack.topAnchor),
            signupLabel.bottomAnchor.constraint(equalTo: signupStack.bottomAnchor)
        ]
        NSLayoutConstraint.activate(signupLabelConstraints)
        
        signupButtonConstraints = [
            signupButton.trailingAnchor.constraint(equalTo: signupStack.trailingAnchor),
            signupButton.widthAnchor.constraint(equalTo: signupStack.widthAnchor, multiplier: 0.4),
            signupButton.topAnchor.constraint(equalTo: signupStack.topAnchor),
            signupButton.bottomAnchor.constraint(equalTo: signupStack.bottomAnchor)
        ]
        NSLayoutConstraint.activate(signupButtonConstraints)
    }

}

class LeftPaddingTextFiewld: UITextField {
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 15, height: bounds.height)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 15, height: bounds.height)
    }
}

