//
//  AddingPhoneNumberExtension.swift
//  Food Order
//
//  Created by Mohamed Ibrahem on 6/8/19.
//  Copyright © 2019 Mahmoud Saeed. All rights reserved.
//

import UIKit

extension AddingPhoneNumberViewController {
    @objc func backButtonActionMethod(sender: UIButton){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func nextButtonAction(sender: UIButton){
        let vc = PhoneVerificationviewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

