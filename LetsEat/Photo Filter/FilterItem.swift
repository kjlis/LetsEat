//
//  FilterItem.swift
//  LetsEat
//
//  Created by Krzysztof Lis on 9/15/18.
//  Copyright © 2018 Random Stuff. All rights reserved.
//

import Foundation

class FilterItem: NSObject {
    let filter: String
    let name: String
    
    init(dict:[String:AnyObject]) {
        name = dict["name"] as! String
        filter = dict["filter"] as! String
    }
}
