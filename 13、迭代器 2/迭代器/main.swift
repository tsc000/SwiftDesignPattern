//
//  main.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

///Client

var pancakeMenu = PancakeHouseMenu()
var breakfastLists = pancakeMenu.menuItems

var dinnerMenu = DinnerMenu()
var lunchLists = dinnerMenu.menuItems


var client = Client(pancakeHouseMenu: pancakeMenu, dinnerMenu: dinnerMenu)
client.printMenu()
