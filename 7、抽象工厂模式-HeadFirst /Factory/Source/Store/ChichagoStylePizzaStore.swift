//
//  ChichagoStylePizzaStore.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class ChichagoStylePizzaStore: PizzaStore {
    var chicagoPizzaIngredientFactory = ChicagoIngredientFactory()

    override func createPizza(type: String) -> PizzaProtocol {
        switch type {
        case "cheese":
            return ChicagoStyleCheesePizza(chicagoPizzaIngredientFactory: chicagoPizzaIngredientFactory)
        case "pepperoni":
            return ChicagoStylePepperoniPizza(chicagoPizzaIngredientFactory: chicagoPizzaIngredientFactory)
        case "clam":
            return ChicagoStyleClamPizza(chicagoPizzaIngredientFactory: chicagoPizzaIngredientFactory)
        case "veggie":
            return ChicagoStyleVeggiePizza(chicagoPizzaIngredientFactory: chicagoPizzaIngredientFactory)
        default:
            return Pizza()
        }
    }
}
