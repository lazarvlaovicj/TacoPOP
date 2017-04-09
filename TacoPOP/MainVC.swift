//
//  MainVC.swift
//  TacoPOP
//
//  Created by PRO on 2/15/17.
//  Copyright © 2017 Lazar. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var header: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var tacoArray = [Taco]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Chicked Tacos
        tacoArray.append(Taco(id: 1, productName: "Loaded Chicken Taco"))
        tacoArray.append(Taco(id: 1, productName: "Loaded Chicken Taco"))
        tacoArray.append(Taco(id: 1, productName: "Plain Chicken Taco"))
        tacoArray.append(Taco(id: 1, productName: "Plain Chicken Taco"))
        
        // Beef Tacos
        tacoArray.append(Taco(id: 2, productName: "Loaded Beef Taco"))
        tacoArray.append(Taco(id: 2, productName: "Loaded Beef Taco"))
        tacoArray.append(Taco(id: 2, productName: "Plain Beef Taco"))
        tacoArray.append(Taco(id: 2, productName: "Plain Beef Taco"))
        
        // Brisket Tacos
        tacoArray.append(Taco(id: 3, productName: "Loaded Brisket Taco"))
        tacoArray.append(Taco(id: 3, productName: "Loaded Brisket Taco"))
        tacoArray.append(Taco(id: 3, productName: "Plain Brisket Taco"))
        tacoArray.append(Taco(id: 3, productName: "Plain Brisket Taco"))
        
        // Fish Tacos
        tacoArray.append(Taco(id: 4, productName: "Loaded Fish Taco"))
        tacoArray.append(Taco(id: 4, productName: "Loaded Fish Taco"))
        tacoArray.append(Taco(id: 4, productName: "Plain Fish Taco"))
        tacoArray.append(Taco(id: 4, productName: "Plain Fish Taco"))
        
        tacoArray.shuffle()
        
        header.addDropShadow()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configCell(taco: tacoArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
}

