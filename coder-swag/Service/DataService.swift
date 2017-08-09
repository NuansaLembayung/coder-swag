//
//  DataService.swift
//  coder-swag
//
//  Created by Nuansa Lembayung on 30/7/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private var categories = [
        Category(title:"SHIRTS", imageName:"shirts.png"),
        Category(title:"HOODIES", imageName:"hoodies.png"),
        Category(title:"HATS", imageName:"hats.png"),
        Category(title:"DIGITAL", imageName:"digital.png")
    ]
    
    private var hats = [
        Product(image: "hat01", title: "Coder Swag Hat Model 1", price:100),
        Product(image: "hat02", title: "Coder Swag Hat Model 2", price:200),
        Product(image: "hat03", title: "Coder Swag Hat Model 3", price:300),
        Product(image: "hat04", title: "Coder Swag Hat Model 4", price:400),
        ]
    
    private var hoodies = [
        Product(image: "hoodie01", title: "Coder Swag Hoodie Model 1", price:150),
        Product(image: "hoodie02", title: "Coder Swag Hoodie Model 2", price:250),
        Product(image: "hoodie03", title: "Coder Swag Hoodie Model 3", price:350),
        Product(image: "hoodie04", title: "Coder Swag Hoodie Model 4", price:450),
        ]
    
    private var shirts = [
        Product(image: "shirt01", title: "Coder Swag Shirt Model 1", price:155),
        Product(image: "shirt02", title: "Coder Swag Shirt Model 2", price:255),
        Product(image: "shirt03", title: "Coder Swag Shirt Model 3", price:355),
        Product(image: "shirt04", title: "Coder Swag Shirt Model 4", price:455),
        Product(image: "shirt05", title: "Coder Swag Shirt Model 5", price:455),
        ]
    
    private var digitalGoods = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        default:
            return getDigital()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigital() -> [Product] {
        return digitalGoods
    }
}
