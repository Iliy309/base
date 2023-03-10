//
//  TableViewController.swift
//  EmogiReader
//
//  Created by Macbook pro on 29/12/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    var object = [Emogi(emogi: "😄", name: "Хи-хи", description: "Смеюсь не могу ", isFauvorite: false),
                  Emogi(emogi: "🖕🏻", name: "фак", description: "Все что хочу говорить всем ", isFauvorite: false),
                  Emogi(emogi: "😎", name: "куулл", description: "Ну этс я ", isFauvorite: false),
                  Emogi(emogi: "🤬", name: "жарко", description: "Муд на каждый день ", isFauvorite: false)]

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.title = "Emogi"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        guard segue.identifier == "saveSegue" else {return}
        let secondVC = segue.source as! CreateTableViewController
        let emogi = secondVC.emogi
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow{
            object[selectedIndexPath.row] = emogi
            tableView.reloadRows(at: [selectedIndexPath], with: .fade)
        } else {
            let newIndexPath = IndexPath(row: object.count, section: 0)
            object.append(emogi)
            tableView.insertRows(at: [newIndexPath], with: .fade)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "editSegue" else {return}
        
        let indexPath = tableView.indexPathForSelectedRow!
        let emogi = object[indexPath.row]
        let navigationVC = segue.destination as! UINavigationController
        let newEmogiVC = navigationVC.topViewController as! CreateTableViewController
        newEmogiVC.emogi = emogi
        newEmogiVC.title = "Edit"
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return object.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell {
            
            let object = object[indexPath.row]
            cell.set(object: object)
            return cell
        }
        
        return UITableViewCell()
    }
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .delete
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            object.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade )
        }
        
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let isFauvorite = isFaiforite(indexPath: indexPath)
        let done = doneAction(indexPath: indexPath)
        return UISwipeActionsConfiguration(actions: [done, isFauvorite])
    }
    
    func doneAction(indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title: "Done") { (action, view, comletion) in
            self.object.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            comletion(true)
        }
        action.backgroundColor = UIColor.green
        action.image = UIImage(systemName: "pencil.circle")
        return action
    }
    
    func isFaiforite (indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .normal, title: "Faiforite") { ( action , view, completion) in
            self.object[indexPath.row].isFauvorite = !self.object[indexPath.row].isFauvorite
            
//            if self.object[indexPath.row].isFauvorite == true {
//                self.object[indexPath.row].isFauvorite = false
//            } else {self.object[indexPath.row].isFauvorite = true }; print(self.object[indexPath.row].isFauvorite)
            completion(true)
        }
        action.backgroundColor = {
            self.object[indexPath.row].isFauvorite ? UIColor.purple : UIColor.black
        }()
        action.image = UIImage(systemName: "heart")
        return action
        
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
