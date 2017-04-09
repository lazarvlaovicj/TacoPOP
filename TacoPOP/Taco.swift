//
//  Taco.swift
//  TacoPOP
//
//  Created by PRO on 2/15/17.
//  Copyright © 2017 Lazar. All rights reserved.
//

import Foundation


class Taco {
    
    private var _id: Int!
    private var _productName: String!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    init(id: Int, productName: String) {
        self._id = id
        self._productName = productName
    }
    
    
}
