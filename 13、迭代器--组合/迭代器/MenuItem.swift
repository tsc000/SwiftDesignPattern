//
//  MenuItem.swift
//  迭代器
//
//  Created by Honey on 2019/4/1.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

class MenuItem: MenuComponent {
    var name: String
    var description: String
    var isvegeterian: Bool
    var price: Double

    init(name: String, description: String, isvegeterian: Bool, price: Double) {
        (self.name, self.description, self.isvegeterian, self.price) = (name, description, isvegeterian, price)
    }

    func getName() -> String {
        return name
    }

    func getDescription() -> String {
        return description
    }

    func isVegeterian() -> Bool {
        return isvegeterian
    }

    func getPrice() -> Double {
        return price
    }

    func customPrint() {
        print("------------------打印菜单项--------------------")
        print("\(getName())")
        print("\(getDescription())")
        print("\(isVegeterian())")
        print("\(getPrice())")
//        print("----------------------------")
    }
}
