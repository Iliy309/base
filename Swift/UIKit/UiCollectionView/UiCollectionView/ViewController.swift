//
//  ViewController.swift
//  UiCollectionView
//
//  Created by Macbook pro on 29/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    var itemMenuArray: [Menu] = {
        var blank1 = Menu(name: "Coca", imageName: "Cola")
        var blank2 = Menu(name: "Cofe", imageName: "Cofe")
        return [blank1, blank2]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionview.dataSource = self
        collectionview.delegate = self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowVC"{
            if let vc = segue.destination as? ShowVC {
                let menu = sender as? Menu
                print(menu ?? "nil")
                vc.menu = menu
            }
        }
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let  itemCollection = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as? MenuCollectionViewCell{
            
            itemCollection.menu = itemMenuArray[indexPath.row]
            
            return itemCollection
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu  = itemMenuArray[indexPath.row]
        self.performSegue(withIdentifier: "ShowVC", sender: menu)
    }
    
    
}
