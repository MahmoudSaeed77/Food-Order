//
//  PhoneVerificationViewController.swift
//  Food Order
//
//  Created by Mohamed Ibrahem on 6/8/19.
//  Copyright © 2019 Mahmoud Saeed. All rights reserved.
//

import UIKit

class PhoneVerificationviewController: UIViewController {
    
    let backbutton : UIButton = {
        let backbutton = UIButton(type: .system)
        backbutton.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "back")
        backbutton.setImage(image, for: .normal)
        return backbutton
    }()
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Phone Verification"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 35)
        return label
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Enter your OTP code here"
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    let bottomLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Didn’t you received any code? "
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    let resendButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Resent new code", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9871205688, green: 0.2082015574, blue: 0.3772976696, alpha: 1), for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backbutton)
        view.addSubview(topLabel)
        view.addSubview(secondLabel)
        view.addSubview(bottomLabel)
        view.addSubview(resendButton)
        
        backbutton.addTarget(self, action: #selector(backButtonAction), for: .touchUpInside)
        resendButton.addTarget(self, action: #selector(resendButtonAction), for: .touchUpInside)
        
        
        backbutton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        backbutton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        
        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        topLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        secondLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 30).isActive = true
        secondLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        
        resendButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resendButton.topAnchor.constraint(equalTo: bottomLabel.bottomAnchor, constant: 15).isActive = true
        
        
    }
    
    @objc func backButtonAction(sender: UIButton){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func resendButtonAction(sender: UIButton){
        let vc = DiscoverViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
