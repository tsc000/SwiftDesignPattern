//
//  NYPizzaStore.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class NYStylePizzaStore: PizzaStore {
    override func createPizza(type: String) -> PizzaProtocol {
        switch type {
        case "cheese":
            return NYStyleCheesePizza()
        case "pepperoni":
            return NYStylePepperoniPizza()
        case "clam":
            return NYStyleClamPizza()
        case "veggie":
            return NYStyleVeggiePizza()
        default:
            return Pizza()
        }
    }
}
