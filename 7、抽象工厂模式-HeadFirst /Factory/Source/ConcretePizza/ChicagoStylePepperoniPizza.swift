//
//  ChicagoStylePepperoniPizza.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class ChicagoStylePepperoniPizza: Pizza {
    var chicagoPizzaIngredientFactory: ChicagoIngredientFactory

    init(chicagoPizzaIngredientFactory: ChicagoIngredientFactory) {
        self.chicagoPizzaIngredientFactory = chicagoPizzaIngredientFactory
        super.init()
        name = "Chicago Style Deep Fish Pepperoni Pizza"
    }

    override func prepare() {
        print("\nPreparing + \(name)")
        dough = chicagoPizzaIngredientFactory.createDough()
        sauce = chicagoPizzaIngredientFactory.createSauce()
        pepperoni = chicagoPizzaIngredientFactory.createPepperoni()
        print("Ingredient: \(dough.name), \(sauce.name), \(pepperoni.name)")
    }

    override func cut() {
        print("Cutting the pizza into square slices")
    }
}
