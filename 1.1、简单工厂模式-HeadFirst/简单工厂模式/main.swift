//
//  main.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

let simpleFactory = SimplePizzaFactory()
let pizzaStore = PizzaSotre(simpleFactory: simpleFactory)

print("---------------------预定第一个pizza---------------------")
let cheesePizza = pizzaStore.orderPizza(type: "cheese")
print("---------------------预定第二个pizza---------------------")
let clmaPizza = pizzaStore.orderPizza(type: "clam")

