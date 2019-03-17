//
//  main.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

let newYorkPizzaStore = NYStylePizzaStore()
let newYorkpizza = newYorkPizzaStore.orderPizza(type: "cheese")


let chicagoPizzaStore = ChichagoStylePizzaStore()
let chicagoPizza = chicagoPizzaStore.orderPizza(type: "cheese")
