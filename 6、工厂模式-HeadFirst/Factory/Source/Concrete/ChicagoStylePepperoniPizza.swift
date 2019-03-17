//
//  ChicagoStylePepperoniPizza.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class ChicagoStylePepperoniPizza: Pizza {
    override init() {
        super.init()
        name = "Chicago Style Deep Fish Pepperoni Pizza"
        dough = "Extra Thick Crust Dough"
        sauce = "Plum Tomato Sauce"
        toppings.append("Shredded Mozzarella Cheese")
    }

    override func cut() {
        print("Cutting the pizza into square slices")
    }
}
