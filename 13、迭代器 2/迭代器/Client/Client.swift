//
//  Client.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

class Client {
    var pancakeHouseMenu: MenuIterator
    var dinnerMenu: MenuIterator

    init(pancakeHouseMenu: PancakeHouseMenu, dinnerMenu: DinnerMenu) {
        (self.pancakeHouseMenu, self.dinnerMenu) = (pancakeHouseMenu, dinnerMenu)
    }

    func printMenu() {
        let pancakeIterator = pancakeHouseMenu.createIterator()
        let dinnerIterator = dinnerMenu.createIterator()
        printMenu(iterator: pancakeIterator)
        printMenu(iterator: dinnerIterator)
    }

    func printMenu(iterator: Iterator) {
        print("****************打印菜单****************")
        while iterator.hasNext() {
            let menu = iterator.next()
            print("\(menu.getName()) == \(menu.getDescription()) == \(menu.getPrice()) == \(menu.getVegeterian())")
        }
    }
}
