//
//  Villains.swift
//  BondVillains
//
//  Created by Geek on 1/9/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import Foundation
import UIKit

struct Villain{
    let name: String
    let evilScheme: String
    let imageName: String
    
    static let NameKey = "NameKey"
    static let EvilSchemeKey = "EvilSchemeKey"
    static let ImageNameKey = "ImageNameKey"
    
    init(dictionary: [String : String]) {
        self.name = dictionary[Villain.NameKey]!
        self.evilScheme = dictionary[Villain.EvilSchemeKey]!
        self.imageName = dictionary[Villain.ImageNameKey]!
    }
}
extension Villain{
    
    static var allVillains: [Villain]{
        var villainArray = [Villain]()
        for d in Villain.localVillainsData(){
            villainArray.append(Villain(dictionary: d))
        }
        return villainArray
    }
    
    static func localVillainsData() -> [[ String : String ]] {
        return [
            [Villain.NameKey : "Mr. Big", Villain.EvilSchemeKey : "Smuggle herion.",  Villain.ImageNameKey : "Big"],
            [Villain.NameKey : "Ernest Blofeld", Villain.EvilSchemeKey : "Many, many, schemes.",  Villain.ImageNameKey : "Blofeld"],
            [Villain.NameKey : "Sir Hugo Drax", Villain.EvilSchemeKey : "Nerve gass Earth, from the Moon.",  Villain.ImageNameKey : "Drax"],
            [Villain.NameKey : "Jaws", Villain.EvilSchemeKey : "Kill Bond with huge metal teeth.",  Villain.ImageNameKey : "Jaws"],
            [Villain.NameKey : "Rosa Klebb", Villain.EvilSchemeKey : "Humiliate MI6",  Villain.ImageNameKey : "Klebb"],
            [Villain.NameKey : "Emilio Largo", Villain.EvilSchemeKey : "Steal nuclear weapons", Villain.ImageNameKey : "EmilioLargo"],
            [Villain.NameKey : "Le Chiffre", Villain.EvilSchemeKey : "Beat bond at poker.",  Villain.ImageNameKey : "Lechiffre"],
            [Villain.NameKey : "Odd Job", Villain.EvilSchemeKey : "Kill Bond with razor hat.",  Villain.ImageNameKey : "OddJob"],
            [Villain.NameKey : "Francisco Scaramanga", Villain.EvilSchemeKey : "Kill Bond after assembling a golden gun.",  Villain.ImageNameKey : "Scaramanga"],
            [Villain.NameKey : "Raoul Silva", Villain.EvilSchemeKey : "Kill M.",  Villain.ImageNameKey : "Silva"],
            [Villain.NameKey : "Alec Trevelyan", Villain.EvilSchemeKey : "Nuke London, after killing Bond.",  Villain.ImageNameKey : "Trevelyan"],
            [Villain.NameKey : "Auric Goldfinger", Villain.EvilSchemeKey : "Nuke Fort Knox.",  Villain.ImageNameKey : "Goldfinger"],
            [Villain.NameKey : "Max Zorin", Villain.EvilSchemeKey : "Destroy Silicon Valley with an earthquake and flood.",  Villain.ImageNameKey : "Zorin"]
        ]
    }
}
