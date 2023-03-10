//
//  ViewController.swift
//  test
//
//  Created by Macbook pro on 05/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func colorButtonRed(_ sender: UIButton) {

        let alertController = UIAlertController(title: "Цвет будет изменен ", message: "На красный", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ok", style: .default)
        
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
        
       }

    
    
}

