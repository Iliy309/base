//
//  ViewController.swift
//  MVP
//
//  Created by Macbook pro on 08/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutletLabel: UILabel!
    
    @IBOutlet weak var tickerOutletLabel: UILabel!
    
    @IBOutlet weak var valueOutletLabel: UILabel!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        displayData(i: getRandomValue())
    }
    
    
    var count = 0
    var testData = [Crypto]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let model = Crypto.testData
        setupData(with: model)
        setupInstialState()
    }
    
    
    func setupData (with testData: ([Crypto])) {
        self.testData = testData
    }
    
    func setupInstialState () {
        displayData (i: count)
    }
    
    func displayData (i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameOutletLabel.text    = testData[i].name
            tickerOutletLabel.text  = testData[i].ticker
            valueOutletLabel.text   = String(testData[i].value)
        } else {
            print("no data")
        }
    }

    func getRandomValue() -> Int {
        let random = Int.random(in: 0 ..< testData.count)
        return random
    }

}

