//
//  TableViewController.swift
//  Notes
//
//  Created by Macbook pro on 02/01/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    var object = [Notes(name: "Илья Загуменный",
                        size: 17,
                        font: "TimesNewRoman",
                        description: "Хочу к Вам)",
                        label: "scribble")]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        self.title = "Notes"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    
    
    //MARK: Segue
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        
        guard segue.identifier == "saveSegue" else {return}
        let secondVC = segue.source as! CreateNotesTableViewController
        let notes = secondVC.object
        
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow{
            object[selectedIndexPath.row] = notes
            tableView.reloadRows(at: [selectedIndexPath], with: .fade)
        } else {
            let newIndexPath = IndexPath(row: object.count, section: 0)
            object.append(notes)
            tableView.insertRows(at: [newIndexPath], with: .fade)
        }
        print(object, "началось")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "editSegue" else {return}
        
        let indexPath = tableView.indexPathForSelectedRow!
        let object = object[indexPath.row]
        let navigationVC = segue.destination as! UINavigationController
        let newVC = navigationVC.topViewController as! CreateNotesTableViewController
        newVC.object = object
        newVC.title = "Edit"
        print(object, "редактируем" )
    }
    
    
    
    
    //MARK: TAbleView
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
    
    
    
    
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    }
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {  return true
    }
    
    
    
    
    
    //MARK: Data
    func saveData() {
        UserDefaults.standard.set(object, forKey: "object")
        UserDefaults.standard.synchronize()
    }
    
    func loadData() {
        if let array = UserDefaults.standard.array(forKey: "object") as? [Notes] {
            object = array
        } else {
            object = [Notes(name: "Илья Загуменный", size: 17.0, font: "TimesNewRoman", description: "Хочу к Вам)", label: "scribble")]
        }
    }
}
