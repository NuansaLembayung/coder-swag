//
//  ProductCell.swift
//  coder-swag
//
//  Created by Nuansa Lembayung on 6/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named:product.imageName)
        productTitle.text = product.productTitle
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        productPrice.text = "\(formatter.currencySymbol!) \(product.productPrice!)"
    }
}
