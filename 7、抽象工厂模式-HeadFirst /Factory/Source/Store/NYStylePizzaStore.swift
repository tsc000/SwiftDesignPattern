//
//  NYPizzaStore.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class NYStylePizzaStore: PizzaStore {

    var nyPizzaIngredientFactory = NYPizzaIngredientFactory()

    override func createPizza(type: String) -> PizzaProtocol {
        switch type {
        case "cheese":
            return NYStyleCheesePizza(nyPizzaIngredientFactory: nyPizzaIngredientFactory)
        case "pepperoni":
            return NYStylePepperoniPizza(nyPizzaIngredientFactory: nyPizzaIngredientFactory)
        case "clam":
            return NYStyleClamPizza(nyPizzaIngredientFactory: nyPizzaIngredientFactory)
        case "veggie":
            return NYStyleVeggiePizza(nyPizzaIngredientFactory: nyPizzaIngredientFactory)
        default:
            return Pizza()
        }
    }
}
