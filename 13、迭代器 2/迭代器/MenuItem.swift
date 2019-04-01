//
//  MenuItem.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class MenuItem {
    private var name: String
    private var description: String
    private var vegeterian: Bool
    private var price: Double

    init(name: String, description: String, vegeterian: Bool, price: Double) {
        (self.name, self.description, self.vegeterian, self.price) = (name, description, vegeterian, price)
    }

    func getName() -> String {
        return name
    }

    func getDescription() -> String {
        return description
    }

    func getVegeterian() -> Bool {
        return vegeterian
    }

    func getPrice() -> Double {
        return price
    }
}
