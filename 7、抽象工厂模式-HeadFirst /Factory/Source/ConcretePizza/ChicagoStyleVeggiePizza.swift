//
//  ChiacagoStyleVeggiePizza.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class ChicagoStyleVeggiePizza: Pizza {
    var chicagoPizzaIngredientFactory: ChicagoIngredientFactory

    init(chicagoPizzaIngredientFactory: ChicagoIngredientFactory) {
        self.chicagoPizzaIngredientFactory = chicagoPizzaIngredientFactory
        super.init()
        name = "Chicago Style Deep Fish Veggie Pizza"
    }

    override func prepare() {
        print("\nPreparing + \(name)")
        dough = chicagoPizzaIngredientFactory.createDough()
        sauce = chicagoPizzaIngredientFactory.createSauce()
        veggies = chicagoPizzaIngredientFactory.createVeggies()
        print("Ingredient: \(dough.name), \(sauce.name), \(veggies.count)")
    }

    override func cut() {
        print("Cutting the pizza into square slices")
    }
}
