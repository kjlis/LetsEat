//
//  RestaurantDataManager.swift
//  LetsEat
//
//  Created by Krzysztof Lis on 8/26/18.
//  Copyright © 2018 Random Stuff. All rights reserved.
//

import Foundation

class RestaurantDataManager {
    private var items:[RestaurantItem] = []
    
    func fetch(by location:String, withFilter:String="All",  completionHandler:() -> Swift.Void) {
        var restaurants:[RestaurantItem] = []
        for restaurant in RestaurantAPIManager.loadJSON(file: location) {
            restaurants.append(RestaurantItem(dict: restaurant))
        }
        
        if withFilter != "All" {
            items = restaurants.filter({ $0.cuisines.contains(withFilter) })
        }
        else { items = restaurants }
        completionHandler()
    }
    func numberOfItems() -> Int {
        return items.count
    }
    
    func restaurantItem(at index:IndexPath) -> RestaurantItem {
        return items[index.item]
    }
}
