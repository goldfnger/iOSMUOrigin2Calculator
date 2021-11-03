//
//  Accessory.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 02.01.2021.
//

import Foundation

struct Accessory {
    
    let accessoryName: String
    let accessoryTag: Int
    let accessoryIcon: String
//    let accessoryPAtk: String
//    let accessoryMAtk: String
//    let accessoryPDef: String
//    let accessoryMDef: String
//    let accessoryMaxHp: String
//    let accessoryHit: String

    init(accessoryName: String, accessoryTag: Int, accessoryIcon: String) {
        self.accessoryName = accessoryName
        self.accessoryTag = accessoryTag
        self.accessoryIcon = accessoryIcon
    }
}
