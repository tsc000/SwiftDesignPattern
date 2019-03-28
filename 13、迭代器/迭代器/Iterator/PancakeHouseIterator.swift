//
//  PancakeHouseIterator.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

class PancakeHouseIterator: Iterator {
    private var menuItems: [MenuItem]
    private var position: Int = 0

    init(menuItems: [MenuItem]) {
        self.menuItems = menuItems
    }

    func hasNext() -> Bool {
        return (position >= menuItems.count) ? false : true
    }

    func next() -> MenuItem {
        let menu = menuItems[position]
        position += 1
        return menu
    }
}
