//
//  ProductVC.swift
//  codeSwag
//
//  Created by Stephan Ng on 5/8/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit


// UICollectionViewDelegate and UICollectionViewDataSource are requried for collection views

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Required for collection views to function
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    // Allows you to pass which products category from the click on the previous VC
    func initProducts (category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    // Collection view protocol stubs, clicked the red x after adding the UICollection types to the inherited classes
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Only have one section, so you only need to return products.count
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        return ProductCell()
    }
}
