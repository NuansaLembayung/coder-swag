//
//  Product.swift
//  coder-swag
//
//  Created by Nuansa Lembayung on 6/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var imageName: String!
    private(set) public var productTitle: String!
    private(set) public var productPrice: Int!
    
    init(image: String, title: String, price: Int) {
        imageName = image
        productTitle = title
        productPrice = price
    }
}
