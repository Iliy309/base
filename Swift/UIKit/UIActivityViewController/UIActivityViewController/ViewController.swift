//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by Macbook pro on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var textField = UITextField()
    var buttomShare = UIButton(type: .roundedRect)
    var activityViewController : UIActivityViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       //MARK: - ButtonShare
        self.buttomShare.frame = CGRect(x: 50, y: 500, width: 280, height: 44)
      
        self.buttomShare.setTitle("Share", for: .normal)
        self.buttomShare.setTitleColor(.black, for: .normal)
        self.buttomShare.backgroundColor = .gray
        self.buttomShare.layer.cornerRadius = 10
        self.buttomShare.addTarget(self, action: #selector(addTarget(target:)), for: .touchUpInside)
        self.view.addSubview(self.buttomShare)
        
        //MARK: -  TextField
        self.textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        self.textField.center = self.view.center
        self.textField.placeholder = "Введите текст"
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.view.addSubview(self.textField)
        
    }
    
    @objc func addTarget (target: Any) {
        let text = self.textField.text
        if text?.count == 0 {
            let alertController = UIAlertController(title: nil, message: "Введите текст", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "ok", style: .cancel)
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
        }
        //MARK: - ActivityViewController
        self.activityViewController = UIActivityViewController(activityItems: [self.textField.text ?? "nil"], applicationActivities: nil)
        self.present(self.activityViewController!, animated: true)
    }
    
    
    


//    func createTextField () {
//        self.textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
//        self.textField.center = self.view.center
//        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
//        self.textField.placeholder = "Enter the share"
//        self.view.addSubview(self.textField)
//    }
// //  what???
//    func createButtomShare () {
//        self.buttomShare.frame = CGRect(x: 50, y: 500, width: 280, height: 44)
//        self.buttomShare = UIButton(type: .roundedRect)
//        self.buttomShare.setTitle("Расшарить", for: .normal)
//        self.buttomShare.addTarget(self, action: #selector(handleShare), for: .touchUpInside)
//        self.view.addSubview(self.buttomShare)
//        self.buttomShare.backgroundColor = .brown
//    }
//
//    @objc func handleShare (paramSender: Any) {
//        let text = self.textField.text
//        if  text?.count == 0  {
//            let message = "Сначала введите текст"
//            let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
//            let alertAction = UIAlertAction(title: "ok", style: .cancel)
//            alertController.addAction(alertAction)
//            self.present(alertController, animated: true)
//        }
//
//        self.activityViewController = UIActivityViewController(activityItems: [self.textField.text ?? "nil"], applicationActivities: nil)
//        self.present(self.activityViewController!, animated: true)
//    }
}

