//
//  PancakeHouseMenu.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class PancakeHouseMenu: MenuIterator {
    var menuItems: [MenuItem] = []

    init() {
        let menuItem = MenuItem(name: "K&B's pancake breakfase", description: "Pancake with scambled eggs and toast", vegeterian: true, price: 2.99)
        let menuItem1 = MenuItem(name: "Regular'spancake  breakfast", description: "Pancake with scambled eggs", vegeterian: true, price: 2.99)
        let menuItem2 = MenuItem(name: "Blueberry'spancake  breakfast", description: "Pancake made with fresh blueberry", vegeterian: false, price: 3.49)
        let menuItem3 = MenuItem(name: "Waffle'spancake  breakfast", description: "Pancake with your choice of blueberry or stawberry", vegeterian: true, price: 2.59)
        [menuItem, menuItem1, menuItem2, menuItem3].forEach{ menuItems.append($0) }
    }

    func createIterator() -> Iterator {
        return PancakeHouseIterator(menuItems: menuItems)
    }
}
