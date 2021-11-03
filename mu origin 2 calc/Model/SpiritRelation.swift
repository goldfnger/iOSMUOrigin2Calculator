//
//  SpiritRelation.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 15.12.2020.
//

import Foundation

struct SpiritRelation {
    
    let relationName: String
    let relationSpirit1: String
    let relationSpirit2: String
    let relationSpirit3: String
    let relationSpirit4: String
    let relationStats: String
    let relationSpiritIcons: [String]

    init(relationName: String, relationSpirit1: String, relationSpirit2: String,  relationSpirit3: String, relationSpirit4: String, relationStats: String, relationSpiritIcons: [String]) {
        self.relationName = relationName
        self.relationSpirit1 = relationSpirit1
        self.relationSpirit2 = relationSpirit2
        self.relationSpirit3 = relationSpirit3
        self.relationSpirit4 = relationSpirit4
        self.relationStats = relationStats
        self.relationSpiritIcons = relationSpiritIcons.sorted()
    }
}
