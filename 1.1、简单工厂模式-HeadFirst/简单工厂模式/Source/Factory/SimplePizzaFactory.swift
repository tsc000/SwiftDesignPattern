//
//  PizzaStore.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class SimplePizzaFactory {
    func createPizza(type: String = "") -> PizzaProtocol {
        switch type {
        case "cheese":
            return CheesePizza()
        case "pepperoni":
            return PepperoniPizza()
        case "clam":
            return ClamPizza()
        default:
            return Pizza()
        }
    }
}
