//
//  main.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

let nyStore = NYStylePizzaStore()
let nyStyleCheesePizza = nyStore.orderPizza(type: "cheese")

print("\n--------------------------------------------------\n")

let chicagoStore = ChichagoStylePizzaStore()
let chicagoStyleCheesePizza = chicagoStore.orderPizza(type: "cheese")



