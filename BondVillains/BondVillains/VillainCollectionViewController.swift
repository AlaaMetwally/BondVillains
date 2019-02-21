//
//  VillainCollectionViewController.swift
//  BondVillains
//
//  Created by Geek on 1/17/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import Foundation
import UIKit

class VillainCollectionViewController:UICollectionViewController{
    var allVillains = Villain.allVillains
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VillainCollectionViewCell", for: indexPath) as! VillainCollectionViewCell
        let villain = self.allVillains[(indexPath as NSIndexPath).row]

        cell.labelCollection.text = villain.name
        cell.imageCollection?.image = UIImage(named: villain.imageName)
        
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController
        
        detailController.villain = allVillains[(indexPath as NSIndexPath).row]
        navigationController!.pushViewController(detailController, animated: true)
        
    }
}
