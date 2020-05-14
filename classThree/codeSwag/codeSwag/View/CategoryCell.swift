//
//  CategoryCell.swift
//  codeSwag
//
//  Created by Stephan Ng on 5/7/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews (category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
