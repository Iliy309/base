//
//  ViewControllerTwo.swift
//  1.MVC
//
//  Created by Macbook pro on 04/11/22.
//

import UIKit

class ViewControllerTwo: UIViewController {
     
    // MARK: - LOad
    override func viewDidLoad() {
        super.viewDidLoad()
        hello()
        // Do any additional setup after loading the view.
    }
    
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    // ПРогружается перед сварачиванием?
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    // MARK: - Hello
    func hello () {
        print("Hello")
    }
    

}
