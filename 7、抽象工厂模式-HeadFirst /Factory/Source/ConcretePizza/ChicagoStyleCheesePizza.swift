//
//  ChicagoStyleCheesePizza.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class ChicagoStyleCheesePizza: Pizza {
    var chicagoPizzaIngredientFactory: ChicagoIngredientFactory

    init(chicagoPizzaIngredientFactory: ChicagoIngredientFactory) {
        self.chicagoPizzaIngredientFactory = chicagoPizzaIngredientFactory
        super.init()
        name = "Chicago Style Deep Fish Cheese Pizza"
    }

    override func prepare() {
        print("\nPreparing + \(name)")
        dough = chicagoPizzaIngredientFactory.createDough()
        sauce = chicagoPizzaIngredientFactory.createSauce()
        cheese = chicagoPizzaIngredientFactory.createCheese()
        print("Ingredient: \(dough.name), \(sauce.name), \(cheese.name)")
    }

    override func cut() {
        print("Cutting the pizza into square slices")
    }
}
