//
//  AddingPhoneNumberViewController.swift
//  Food Order
//
//  Created by Mohamed Ibrahem on 1/1/00.
//  Copyright © 2000 Mahmoud Saeed. All rights reserved.
//

import UIKit

class AddingPhoneNumberViewController: UIViewController {
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "back")
        button.setImage(image, for: .normal)
        return button
    }()
    
    let topLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Verify your phone number please"
        label.numberOfLines = 3
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 35)
        return label
    }()
    let toplabel2 : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "we have sent you an SMS with a code \nto\n number +9040498488"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    let toplabel3 : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Or Login with"
        label.textColor = UIColor.lightGray
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18)
        return label
        
        
    }()
    let button : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Social network", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
        
    }()
    let Next : UIButton = {
        let Next = UIButton(type: .system)
        Next.translatesAutoresizingMaskIntoConstraints = false
        Next.setTitle("Next", for: .normal)
        Next.setTitleColor(.white, for: .normal)
        Next.backgroundColor = #colorLiteral(red: 0.9871205688, green: 0.2082015574, blue: 0.3772976696, alpha: 1)
        return Next
        
    }()
    
    let signupStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraint()
        addTargets()
    }
    
    
    
   
    
    
    func setupView(){
        view.backgroundColor = .white
        view.addSubview(backButton)
        view.addSubview(topLabel)
        view.addSubview(toplabel2)
        view.addSubview(signupStack)
        signupStack.addSubview(toplabel3)
        signupStack.addSubview(button)
        view.addSubview(Next)
    }
    
    func setupConstraint(){
        backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        
        
        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive =  true
        topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        topLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        
        toplabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        toplabel2.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 30).isActive = true
        toplabel2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        signupStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signupStack.widthAnchor.constraint(equalToConstant: 210).isActive = true
        signupStack.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signupStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        
        
        toplabel3.leadingAnchor.constraint(equalTo: signupStack.leadingAnchor).isActive = true
        toplabel3.centerYAnchor.constraint(equalTo: signupStack.centerYAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: signupStack.trailingAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: signupStack.centerYAnchor).isActive = true
        
        
        Next.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        Next.topAnchor.constraint(equalTo: signupStack.bottomAnchor, constant: 20).isActive = true
        Next.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func addTargets(){
        backButton.addTarget(self, action: #selector(backButtonActionMethod), for: .touchUpInside)
        Next.addTarget(self, action: #selector(nextButtonAction), for: .touchUpInside)
    }
    
}




