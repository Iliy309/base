//
//  CreateTableViewController.swift
//  EmogiReader
//
//  Created by Macbook pro on 30/12/22.
//

import UIKit

class CreateTableViewController: UITableViewController {

    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var createDescriptionTextField: UITextField!
    @IBOutlet weak var createNameTextField: UITextField!
    @IBOutlet weak var createEmogiTextField: UITextField!
    public var emogi = Emogi(emogi: "", name: "", description: "", isFauvorite: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatesave()
        updateEdit () 
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        self.navigationItem.rightBarButtonItem = saveButton
//        self.navigationItem.leftBarButtonItem = cancelButton
    }

    func updatesave() {
        let createEmogi = createEmogiTextField.text ?? ""
        let createName = createNameTextField.text ?? ""
        let createDescription = createDescriptionTextField.text ?? ""
        
        saveButton.isEnabled = !createName.isEmpty && !createEmogi.isEmpty && !createDescription.isEmpty
    }
    func updateEdit () {
        createEmogiTextField.text = emogi.emogi
        createNameTextField.text = emogi.name
        createDescriptionTextField.text = emogi.description
    }
    @IBAction func textChange(_ sender: UITextField) {
        updatesave()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else {return}
        
        let emogi = createEmogiTextField.text ?? ""
        let name = createNameTextField.text ?? ""
        let description = createDescriptionTextField.text ?? ""
        
        self.emogi = Emogi(emogi: emogi, name: name, description: description, isFauvorite: self.emogi.isFauvorite)
    }
    // MARK: - Table view data source

  

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
