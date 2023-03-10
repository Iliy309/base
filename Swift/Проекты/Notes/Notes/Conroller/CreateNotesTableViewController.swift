//
//  CreateNotesTableViewController.swift
//  Notes
//
//  Created by Macbook pro on 02/01/23.
//

import UIKit

class CreateNotesTableViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    
    @IBOutlet weak var boldButtom: UIButton!
    @IBOutlet weak var cursiveButtom: UIButton!
    @IBOutlet weak var clearButtom: UIButton!
    @IBOutlet weak var savebuttonNotes: UIBarButtonItem!
    @IBOutlet weak var createNameNotes: UITextField!
    @IBOutlet weak var createDescriptionNotes: UITextView!
    @IBOutlet weak var pikerFontNotes: UIPickerView!
    @IBOutlet weak var pikerSizeNotes: UIPickerView!
    
    
    public var object = Notes(name: "", size: 17.0, font: "Arial", description: "", label: "")
    public var font = ["Arial", "Didot", "Georgia", "Monaco", "Times New Roman"]
    public var size = ["17", "18", "19", "20", "21"]
    public var finishSize = 17.0
    public var finishFont = "Arival"

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatesave()
        updateEdit ()
        pikerSizeNotes.dataSource = self
        pikerFontNotes.dataSource = self
        pikerSizeNotes.delegate = self
        pikerFontNotes.delegate = self
    }


    
    

    //MARK: Piker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1   }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        5
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView {
        case pikerFontNotes: return font[row]
        case pikerSizeNotes: return size[row]
        default: break
        }
        return ""
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pikerSizeNotes{
            finishSize = Double(size[row]) ?? 17.0
        } else if pickerView == pikerFontNotes {
            finishFont = font[row]
        }
        createNameNotes.font = UIFont(name: finishFont, size: finishSize)
        createDescriptionNotes.font = UIFont(name: finishFont, size: finishSize)
    }
        
    
    
    
    
    
        //MARK: Update
        func updatesave() {
            let name = createNameNotes.text ?? ""
            savebuttonNotes.isEnabled = !name.isEmpty 
        }
        
        func updateEdit () {
            createNameNotes.text = object.name
            createDescriptionNotes.text = object.description
            createNameNotes.font = UIFont(name: finishFont, size: finishSize)
            createDescriptionNotes.font = UIFont(name: finishFont, size: finishSize)
        }
        
        @IBAction func textChange(_ sender: UITextField) {
            updatesave()
        }
    
    
    
    
    
    
        // MARK: Segue
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            super.prepare(for: segue, sender: sender)
            guard segue.identifier == "saveSegue" else {return}
            
            let name = createNameNotes.text ?? ""
            let size = finishSize
            let font = finishFont
            let description = createDescriptionNotes.text ?? ""
            let label = "pencil"
            createNameNotes.font = UIFont(name: font, size: size)
            createDescriptionNotes.font = UIFont(name: font, size: size)
            
            self.object = Notes( name: name, size: size, font: font, description: description, label: label)
        }
    
        @IBAction func unwindSegue(segue: UIStoryboardSegue){
            guard segue.identifier == "editSegue" else {return}

            createNameNotes.font = UIFont(name: object.font, size: object.size)
            createDescriptionNotes.font = UIFont(name: object.font, size: object.size)
            print("работает")
        }
        
    
    
    
    
    
        
        //MARK: ButtomAction
        @IBAction func BoldAction(_ sender: UIButton) {
            self.createNameNotes.font = UIFont.boldSystemFont(ofSize: finishSize)
            self.createDescriptionNotes.font = UIFont.boldSystemFont(ofSize: finishSize)
            
            
        }
        @IBAction func cursiveAction(_ sender: UIButton) {
            self.createNameNotes.font = UIFont.italicSystemFont(ofSize: finishSize)
            self.createDescriptionNotes.font = UIFont.italicSystemFont(ofSize: finishSize)
            
        }
        
        @IBAction func clearAction(_ sender: UIButton) {
            self.createNameNotes.text = ""
            self.createDescriptionNotes.text = ""
        }
        
    }

