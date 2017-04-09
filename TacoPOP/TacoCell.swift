//
//  TacoCell.swift
//  TacoPOP
//
//  Created by PRO on 2/15/17.
//  Copyright © 2017 Lazar. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, Shakeable {
    
    @IBOutlet weak var cellImg: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 8.0
        
    }
    
    func configCell(taco: Taco) {
        cellImg.image = UIImage(named: "\(taco.id)")
        lbl.text = taco.productName
    }
}
