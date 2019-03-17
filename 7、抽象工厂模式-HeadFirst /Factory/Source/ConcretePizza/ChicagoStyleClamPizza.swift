//
//  ChiacagoStyleClamPizza.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class ChicagoStyleClamPizza: Pizza {
    var chicagoPizzaIngredientFactory: ChicagoIngredientFactory

    init(chicagoPizzaIngredientFactory: ChicagoIngredientFactory) {
        self.chicagoPizzaIngredientFactory = chicagoPizzaIngredientFactory
        super.init()
        name = "Chicago Style Deep Fish Clam Pizza"
    }

    override func prepare() {
        print("\nPreparing + \(name)")
        dough = chicagoPizzaIngredientFactory.createDough()
        sauce = chicagoPizzaIngredientFactory.createSauce()
        clams = chicagoPizzaIngredientFactory.createClams()
        print("Ingredient: \(dough.name), \(sauce.name), \(clams.name)")
    }

    override func cut() {
        print("Cutting the pizza into square slices")
    }
}
