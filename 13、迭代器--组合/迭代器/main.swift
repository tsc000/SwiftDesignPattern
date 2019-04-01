//
//  main.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

/*
 allMenus ---- [pancakeMenu, dinnerMenu, cafeMenu]
     pancakeMenu ---- [MenuItem(K&B), MenuItem(Regular), MenuItem(Regular), MenuItem(Waffle)]
     dinnerMenu ---- [MenuItem(Pasta), dessertMenu]
        dessertMenu ---- [MenuItem(Apple Pie)]
    cafeMenu ---- []
 */

var pancakeMenu = Menu(name: "Pancake house menu", description: "Breakfast")
var dinnerMenu = Menu(name: "Dinner menu", description: "Lunch")
var cafeMenu = Menu(name: "Cafe menu", description: "Dinner")
var dessertMenu = Menu(name: "Dessert menu", description: "Dessert of Course")

var allMenus = Menu(name: "All menus", description: "All menus combined")

allMenus.add(component: pancakeMenu)
allMenus.add(component: dinnerMenu)
allMenus.add(component: cafeMenu)

pancakeMenu.add(component: MenuItem(name: "K&B's pancake breakfase", description: "Pancake with scambled eggs and toast", isvegeterian: true, price: 2.99))
pancakeMenu.add(component: MenuItem(name: "Regular'spancake  breakfast", description: "Pancake with scambled eggs", isvegeterian: true, price: 6.99))
pancakeMenu.add(component: MenuItem(name: "Regular'spancake  breakfast", description: "Pancake with scambled eggs", isvegeterian: true, price: 2.99))
pancakeMenu.add(component: MenuItem(name: "Waffle'spancake  breakfast", description: "Pancake with your choice of blueberry or stawberry", isvegeterian: true, price: 2.59))

dinnerMenu.add(component: MenuItem(name: "Pasta", description: "Spaghetti with Marinara sauce", isvegeterian: true, price: 3.89))
dinnerMenu.add(component: dessertMenu)

dessertMenu.add(component: MenuItem(name: "Apple Pie", description: "Apple pie with a flakey crust", isvegeterian: true, price: 1.59))

allMenus.customPrint()

let client = Client(menus: allMenus)
client.printMenu()
