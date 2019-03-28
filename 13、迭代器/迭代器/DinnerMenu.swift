//
//  DinnerMenu.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class DinnerMenu: MenuIterator {
    var menuItems: [MenuItem] = []

    init() {
        let menuItem = MenuItem(name: "Vegetarian BLT", description: "DinnerMenu bacon", vegeterian: true, price: 2.99)
        let menuItem1 = MenuItem(name: "BLT", description: "DinnerMenu lettuce", vegeterian: true, price: 2.99)
        let menuItem2 = MenuItem(name: "Soup", description: "DinnerMenu soup", vegeterian: false, price: 3.49)
        let menuItem3 = MenuItem(name: "Hotdog", description: "DinnerMenu hotdog", vegeterian: true, price: 2.59)
        [menuItem, menuItem1, menuItem2, menuItem3].forEach{ menuItems.append($0) }
    }

    func createIterator() -> Iterator {
        return DinnerMenuIterator(menuItems: menuItems)
    }
}
