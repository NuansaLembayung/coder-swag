//
//  ProductDataService.swift
//  coder-swag
//
//  Created by Nuansa Lembayung on 6/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

class ProductDataService {
    static var instance = ProductDataService()
    
    private var collections = [
    Product(image: "hat01", title: "Hat Model 1", price:1000),
    Product(image: "hat02", title: "Hat Model 2", price:2000),
    Product(image: "hat03", title: "Hat Model 3", price:3000),
    Product(image: "hat04", title: "Hat Model 4", price:4000),
    ]
    
    func getCollections() -> [Product] {
        return collections
    }
}
