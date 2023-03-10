//
//  ViewController.swift
//  UiSwitch, selector, addTraget, CGReact
//
//  Created by Macbook pro on 05/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    //  Обьявили свитч
    var  mySwitch = UISwitch()
    var  myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Размер элемента  и расположение
        self.mySwitch.frame = CGRect.zero
        self.mySwitch.layer.cornerRadius = 16
        self.mySwitch.center = self.view.center
        //Без этой записи кнопка не выводится на экран
        self.view.addSubview(self.mySwitch)
        
        //Цвет бэка
        self.mySwitch.backgroundColor = UIColor.red
        // Цвет тумблера
        self.mySwitch.thumbTintColor = UIColor.orange
        //Цвет включенного состояния
        self.mySwitch.onTintColor = UIColor.yellow
        self.mySwitch.addTarget(self, action: #selector(on(target:)), for: .valueChanged)
        
        
        self.myButton.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        self.myButton.backgroundColor = UIColor.orange
        // Я так понял расположение этой строчки не обязательно в читабельемой последовательсности
        self.view.addSubview(self.myButton)
        self.myButton.setTitle("OK", for: .normal)
        self.myButton.setTitle("Прожата", for: .highlighted)
        

        
        
        
        
//        //Создали свитч с фреймом по х и у в 100 поинтов
//        self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
//        // Вывели на экран
//        self.view.addSubview(self.mySwitch)
//        // Включили  и поставили анимацию
//        self.mySwitch.setOn(true, animated: true)
//        // Проверяем включение в консоль
//        if self.mySwitch.isOn {
//            print("Switch on ")
//        } else {
//            print("Switch off")
//        }
//        // Поставили наблюдателя Target, c помощью селектора
//        self.mySwitch.addTarget(self, action: #selector(switchOff(parametrs:)), for: .valueChanged)
//
        
    }
    @objc func on(target: UISwitch) {
        if target.isOn {
            self.myButton.isUserInteractionEnabled = false
        } else {
            self.myButton.isUserInteractionEnabled = true
        }
    }
    
    // Требуется приставка @objc
//    @objc func switchOff(parametrs: UISwitch) {
//            print("param is =", parametrs)
//
//            if parametrs.isOn {
//                print("Switch On")
//            } else {
//                print("Switch Off")
//            }
//
//    }
}




