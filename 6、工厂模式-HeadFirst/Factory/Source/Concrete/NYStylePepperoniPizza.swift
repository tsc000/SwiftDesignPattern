//
//  NYStylePepperoniPizza.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class NYStylePepperoniPizza: Pizza {
    override init() {
        super.init()
        name = "NY Style Sauce and Pepperoni Pizza"
        dough = "This Crust Dough"
        sauce = "Marinara Sauce"
        toppings.append("Grated Reggiano Cheese")
    }
}
