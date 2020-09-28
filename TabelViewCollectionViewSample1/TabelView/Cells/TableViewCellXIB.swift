//
//  TableViewCellXIB.swift
//  TabelViewCollectionViewSample1
//
//  Created by Ghassan  albakuaa  on 9/27/20.
//

import UIKit

class TableViewCellXIB: UITableViewCell {

    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    func configureCell (index :Int , image: UIImage?) {
        DispatchQueue.main.async {
            self.cellImageView.image = image
            self.topLabel.text = "XIB \(index)"
            self.bottomLabel.text = "XIB \(index)"
        }
    }
}
