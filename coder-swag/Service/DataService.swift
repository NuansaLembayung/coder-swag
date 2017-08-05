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
    
    private let categories:[Category] = [
        Category(title:"SHIRTS", imageName:"shirts.png"),
        Category(title:"HOODIES", imageName:"hoodies.png"),
        Category(title:"HATS", imageName:"hats.png"),
        Category(title:"DIGITAL", imageName:"digital.png")
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
}
