//
//  SecondViewController.swift
//  UiNavigationViewController
//
//  Created by Macbook pro on 08/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    fileprivate func createTitleView() {
        //self.title = "SecondVC"
        //
        let imageView = UIImageView(frame:(CGRect(x: 0, y: 0, width: 100, height: 40)))
        //метод скейл не дает растягивать картинку
        imageView.contentMode = .scaleAspectFit
        // присваиваем переменной картинку
        let image = UIImage(named: "apple.png")
        // вставляем картинку в  тайтл и во вью
        imageView.image = image
        self.navigationItem.titleView = imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        
        createTitleView()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera,
                                                                 target: self,
                                                                 action: #selector(actionRight(param:)))
        

        // Do any additional setup after loading the view.
    }
    
    @objc func actionRight (param: UIBarButtonItem) {
        print("add Right")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    @objc func goBack() {
        //self.navigationController?.popViewController(animated: true)
        // Присваиваем Имя
        var array = self.navigationController?.viewControllers
        // Уничтожаем последний из памяти
        array?.removeLast()
        // Даем команду к перенаправлению к рут вьюконтроллеру
        if let newController = array {
            self.navigationController?.viewControllers = newController
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
