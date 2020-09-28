//
//  TabelViewController.swift
//  TabelViewCollectionViewSample1
//
//  Created by Ghassan  albakuaa  on 9/25/20.
//

import UIKit

class TabelViewController: UIViewController {

    @IBOutlet weak var sambleTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.sambleTableView.delegate = self
        self.sambleTableView.dataSource = self
  
        self.sambleTableView.register(UINib(nibName: "TableViewCellxib2", bundle: nil), forCellReuseIdentifier: "TableViewCellxib2")
 
    }
}
    
    extension TabelViewController: UITableViewDataSource , UITableViewDelegate {
        
        func tableView(_ tableView: UITableView , numberOfRowsInSection section: Int) -> Int {
            return 15
        }
        
        func tableView(_ tableView: UITableView , cellForRowAt indexPath: IndexPath) ->              UITableViewCell {
                      
            /*
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TabelViewCellStoryboardTableViewCell" , for: indexPath) as? TabelViewCellStoryboardTableViewCell else {
                return UITableViewCell()
            }
             */
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellxib2" , for: indexPath) as? TabelViewCellStoryboardTableViewCell else {
                return UITableViewCell()
            }
            /*
            let image = self.determineImage(index: indexPath.row)
            cell.configureCell(index: indexPath.row, image: image)
            print("Description: \(cell.description), IndexPath: \(indexPath)")
            
            return cell
            */
            
            let imag = UIImage(named:"one")
            cell.configureCell(index: indexPath.row, image: imag)
            print("Description: \(cell.description) ,indexpath \(indexPath)")
            return cell
        }    }
    

