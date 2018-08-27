//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Krzysztof Lis on 8/19/18.
//  Copyright © 2018 Random Stuff. All rights reserved.
//

import Foundation

struct ExploreItem {
    var name:String?
    var image:String?
}

extension ExploreItem {
    init(dict:[String:AnyObject]) {
        self.name = dict["name"] as? String
        self.image = dict["image"] as? String
    }
}
