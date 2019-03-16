//
//  PizzaStoreProtocol.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

protocol PizzaStoreProtocol {
   func createPizza(type: String) -> PizzaProtocol
}
