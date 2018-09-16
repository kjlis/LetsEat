//
//  FilterManager.swift
//  LetsEat
//
//  Created by Krzysztof Lis on 9/15/18.
//  Copyright © 2018 Random Stuff. All rights reserved.
//

import Foundation

class FilterManager: DataManager {
    func fetch(completionHandler:(_ items:[FilterItem]) -> Swift.Void) {
        var items:[FilterItem] = []
        for data in load(file: "FilterData") {
            items.append(FilterItem(dict: data))
        }
        completionHandler(items)
    }
}
