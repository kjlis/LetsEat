//
//  MapDataManager.swift
//  LetsEat
//
//  Created by Krzysztof Lis on 8/26/18.
//  Copyright © 2018 Random Stuff. All rights reserved.
//

import Foundation
import MapKit

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
        
        print("Loaded annotations!")
        print(items)
        completion(items)
    }
    
    func currentRegion(latDelta:CLLocationDegrees, longDelta:CLLocationDegrees) -> MKCoordinateRegion {
        guard let item = items.first else { return MKCoordinateRegion() }
        let span = MKCoordinateSpanMake(latDelta, longDelta)
        return MKCoordinateRegion(center: item.coordinate, span: span)
    }
    
}
