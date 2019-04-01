//
//  Client.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

class Client {
    var menus: Menu

    init(menus: Menu) {
        self.menus = menus
    }

    func printMenu() {
        allMenus.customPrint()
    }
}
