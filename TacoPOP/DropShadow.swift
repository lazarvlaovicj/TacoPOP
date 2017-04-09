//
//  DropShadow.swift
//  TacoPOP
//
//  Created by PRO on 2/15/17.
//  Copyright © 2017 Lazar. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
    
}

