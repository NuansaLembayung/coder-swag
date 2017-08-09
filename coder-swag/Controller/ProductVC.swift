//
//  ProductVC.swift
//  coder-swag
//
//  Created by Nuansa Lembayung on 6/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var ProductCollection: UICollectionView!
    
    private(set) public var products:[Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ProductCollection.delegate = self
        ProductCollection.dataSource = self
    }
    
    func initProducts(selectedCategory: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: selectedCategory.title)
        navigationItem.title = selectedCategory.title
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let productCell = products[indexPath.row]
            cell.updateViews(product: productCell)
            return cell
        } else {
            return ProductCell()
        }
    }
}
