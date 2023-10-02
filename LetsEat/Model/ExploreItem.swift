//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Hsk Abbas on 23/09/2023.
//

import Foundation

struct ExploreItem{
    let name: String?
    let image: String?
}


extension ExploreItem {
    
    init(dict: [String: String]) {
        self.name = dict["name"]
       self.image = dict["image"]
    }
}
