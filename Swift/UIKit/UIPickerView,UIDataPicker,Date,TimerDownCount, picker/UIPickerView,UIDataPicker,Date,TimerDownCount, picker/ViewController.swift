//
//  ViewController.swift
//  UIPickerView,UIDataPicker,Date,TimerDownCount, picker
//
//  Created by Macbook pro on 06/11/22.
//

import UIKit

class ViewController: UIViewController {

    let piker = UIPickerView()
    let pikerDate = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//     Do any additional setup after loading the view.
        
        self.piker.frame = CGRect(x: 0, y: 84, width: 390, height: 162)
        self.view.addSubview(piker)
        self.piker.delegate = self
        self.piker.dataSource = self
        
        
        //pikerDate.datePickerMode = .date
        pikerDate.center = view.center
        self.view.addSubview(pikerDate)
        pikerDate.addTarget(self, action: #selector(changedPiker(piker:)), for: .valueChanged)
//        var oneYearTime = TimeInterval()
//        oneYearTime = 365 * 24 * 60 * 60
//        let todayDate = Date()
//        let oneYearFromToday = todayDate.addingTimeInterval(oneYearTime)
//        let twoYearFromToday = todayDate.addingTimeInterval(4 * oneYearTime)
        
//        pikerDate.minimumDate = twoYearFromToday
//        pikerDate.maximumDate = oneYearFromToday
//
    }

    @objc func changedPiker (piker: UIDatePicker) {
        if piker.isEqual(piker){
            print("Пользователь выбрал: \(piker.date)")
        }
    }
}



extension ViewController:  UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return  10
    }

    func numberOfComponents( in pikerView: UIPickerView) -> Int {
        return 1
    }

}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "что-то там = \(row)"
        return result
    }
}
