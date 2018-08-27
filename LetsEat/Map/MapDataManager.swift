//
//  MapDataManager.swift
//  LetsEat
//
//  Created by Krzysztof Lis on 8/26/18.
//  Copyright © 2018 Random Stuff. All rights reserved.
//

import Foundation

class MapDataManager: DataManager {
    fileprivate var items:[RestaurantItem] = []
    
    var annotations:[RestaurantItem] {
        return items
    }
    
    func fetch(completion:(_ annotations:[RestaurantItem]) -> ()) {
        
        if items.count > 0 { items.removeAll() }
        for data in load(file: "MapLocations") {
            items.append(RestaurantItem(dict: data))
        }
        
        completion(items)
    }
}
