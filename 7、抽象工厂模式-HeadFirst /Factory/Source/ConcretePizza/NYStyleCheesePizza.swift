//
//  NYStyleCheesePizza.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class NYStyleCheesePizza: Pizza {
    var nyPizzaIngredientFactory: NYPizzaIngredientFactory

    init(nyPizzaIngredientFactory: NYPizzaIngredientFactory) {
        self.nyPizzaIngredientFactory = nyPizzaIngredientFactory
        super.init()
        name = "NY Style Sauce and Cheese Pizza"
    }

    override func prepare() {
        print("\nPreparing + \(name)")
        dough = nyPizzaIngredientFactory.createDough()
        sauce = nyPizzaIngredientFactory.createSauce()
        cheese = nyPizzaIngredientFactory.createCheese()
        print("Ingredient: \(dough.name), \(sauce.name), \(cheese.name)")
    }
}
