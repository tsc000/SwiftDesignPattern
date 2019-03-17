//
//  ChichagoStylePizzaStore.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class ChichagoStylePizzaStore: PizzaStore {
    override func createPizza(type: String) -> PizzaProtocol {
        switch type {
        case "cheese":
            return ChicagoStyleCheesePizza()
        case "pepperoni":
            return ChicagoStylePepperoniPizza()
        case "clam":
            return ChicagoStyleClamPizza()
        case "veggie":
            return ChicagoStyleVeggiePizza()
        default:
            return Pizza()
        }
    }
}
