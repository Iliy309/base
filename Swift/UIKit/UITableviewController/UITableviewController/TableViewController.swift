//
//  TableViewController.swift
//  UITableviewController
//
//  Created by Macbook pro on 29/12/22.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayItem = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    let item = Model(name: "Илья", prof: "Программист")
    arrayItem.append(item)
        
         
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayItem.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell {
            
            let item  = arrayItem[indexPath.row]
            cell.refresh(item)
            return cell
        }
        return UITableViewCell()
    }

        // Configure the cell...
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    

}
