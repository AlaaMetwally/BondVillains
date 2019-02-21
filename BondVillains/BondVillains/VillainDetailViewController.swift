//
//  VillainDetailViewController.swift
//  BondVillains
//
//  Created by Geek on 1/13/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import Foundation
import UIKit

class VillainDetailViewController:UIViewController{
    
    var villain: Villain!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.labelView.text = villain.name
        self.imageView.image = UIImage(named: villain.imageName)
    }
}
