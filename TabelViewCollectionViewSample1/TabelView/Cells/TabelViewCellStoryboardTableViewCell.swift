//
//  TabelViewCellStoryboardTableViewCell.swift
//  TabelViewCollectionViewSample1
//
//  Created by Ghassan  albakuaa  on 9/25/20.
//
//UITableViewCellContentView setImage
import UIKit

//class TabelViewCellStoryboard: UITableViewCell {
class TabelViewCellStoryboardTableViewCell: UITableViewCell {
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    func configureCell (index :Int , image: UIImage?) {
        DispatchQueue.main.async {
            self.cellImageView.image = image
            self.topLabel.text = "ghassan \(index)"
            self.bottomLabel.text = "albakuaa \(index)"
        }
    }
}
