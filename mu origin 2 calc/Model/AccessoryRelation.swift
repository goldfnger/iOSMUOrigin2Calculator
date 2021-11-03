//
//  AccessoryRelation.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 02.01.2021.
//

import Foundation

struct AccessoryRelation {
    
    let relationName: String
    let relationAccessory1: String
    let relationAccessory2: String
    let relationAccessory3: String
    let relationAccessory4: String
    let relationAccessory5: String
    let relationStats: String
    let relationAccessoryIcons: [String]

    init(relationName: String, relationAccessory1: String, relationAccessory2: String,  relationAccessory3: String, relationAccessory4: String, relationAccessory5: String, relationStats: String, relationAccessoryIcons: [String]) {
        self.relationName = relationName
        self.relationAccessory1 = relationAccessory1
        self.relationAccessory2 = relationAccessory2
        self.relationAccessory3 = relationAccessory3
        self.relationAccessory4 = relationAccessory4
        self.relationAccessory5 = relationAccessory5
        self.relationStats = relationStats
        self.relationAccessoryIcons = relationAccessoryIcons.sorted()
    }
}
