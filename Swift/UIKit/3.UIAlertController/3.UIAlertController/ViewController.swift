//
//  ViewController.swift
//  3.UIAlertController
//
//  Created by Macbook pro on 05/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    let myButton = UIButton()
    //self.myButton.backgroundColor =
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.myButton.tintColor = UIColor.red
//        self.myButton.backgroundColor = UIColor.green
//        self.myButton.frame = CGRect(x: 82, y: 477, width: 222, height: 94)
//        self.view.addSubview(self.myButton)
//        self.myButton.setTitle("Color", for: .normal)
//        self.myButton.addTarget(self, action: #selector(actionButton(target:)), for: .valueChanged)
      
    }
    
    
    @IBAction func showButton(_ sender: UIButton) {
        
        self.labelName.text = "Hi"
        
        
        alertShow(title: "Внимание", message: "Введите Ваше имя", style: .alert)
        self.labelName.textColor = UIColor.green
    }
    
    @IBAction func bottonColorRed (_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Цвет будет изменен", message: "На красный", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { alertAction in
            self.labelName.textColor = UIColor.red
        }
        
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
    
    @IBAction func bottonColorYellow(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Цвет будет изменен", message: "на желтый", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default) { (alertAction) in
            self.labelName.textColor = UIColor.yellow
        }
        
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
    
    @IBAction func bottonColorPurple(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Цвет будет изменен", message: "На фиолетовый", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { (alertAction) in
            self.labelName.textColor = UIColor.purple
        }
        
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
    
    
    
    func alertShow (title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let alerAction = UIAlertAction(title: "ok", style: .default) { (alerAction) in
            let alertText = alertController.textFields?.first
            self.labelName.text! += "," + (alertText?.text)! + "!"
        }
            // Выводим этот текст если он существует
            //let alertTextField = alertController.textFields?.first?.text
            //print(alertTextField ?? "nil text")
        // Создаем поле для текста
        //alertController.addTextField()
        alertController.addTextField { (textField) in
            textField.isSecureTextEntry = true
        }
        alertController.addAction(alerAction)
        self.present(alertController, animated: true)
    }
    
   
            
}
    

