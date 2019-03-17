//
//  NYStyleVeggiePizza.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class NYStyleVeggiePizza: Pizza {
    var nyPizzaIngredientFactory: NYPizzaIngredientFactory

    init(nyPizzaIngredientFactory: NYPizzaIngredientFactory) {
        self.nyPizzaIngredientFactory = nyPizzaIngredientFactory
        super.init()
        name = "NY Style Sauce and Veggie Pizza"
    }

    override func prepare() {
        print("\nPreparing + \(name)")
        dough = nyPizzaIngredientFactory.createDough()
        sauce = nyPizzaIngredientFactory.createSauce()
        veggies = nyPizzaIngredientFactory.createVeggies()
        print("Ingredient: \(dough.name), \(sauce.name), \(veggies.count)")
    }
}
