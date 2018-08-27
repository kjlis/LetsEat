//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Krzysztof Lis on 8/19/18.
//  Copyright © 2018 Random Stuff. All rights reserved.
//

import Foundation

class ExploreDataManager: DataManager {
    fileprivate var items:[ExploreItem] = []

    func fetch() {
        for data in load(file: "ExploreData") {
            items.append(ExploreItem(dict: data))
        }
    }
    
    func numberOfItems() -> Int {
        return items.count
    }
    
    func explore(at index:IndexPath) -> ExploreItem {
        return items[index.item]
    }
}
