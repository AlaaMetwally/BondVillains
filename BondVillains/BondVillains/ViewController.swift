//
//  ViewController.swift
//  BondVillains
//
//  Created by Geek on 1/9/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let allVillains = Villain.allVillains
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VillainCell")!
        let villain = self.allVillains[(indexPath as NSIndexPath).row]

        cell.textLabel?.text = villain.name
        if let detailTextLabel = cell.detailTextLabel{
            detailTextLabel.text = "Scheme \(villain.evilScheme)"
        }
        cell.imageView?.image = UIImage(named: villain.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController
        detailController.villain = self.allVillains[(indexPath as NSIndexPath).row]
        self.navigationController?.pushViewController(detailController, animated: true)
    }
}

