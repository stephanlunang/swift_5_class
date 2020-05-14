//
//  ViewController.swift
//  codeSwag
//
//  Created by Stephan Ng on 5/7/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
    }

    // Required the home screen table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    
    //Tells us what row is tapped which allows us to display the products page.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            
            // The button bar needs to be controlled from the VC that inited the segue
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn

            
            // Although you already assured that the sender was a category in the previous function
            // This assert makes sure that it doesn't crash at runtime.
            // Not necessary at production, but helps during buildtime/test time
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender! as! Category)
        }
    }
}
