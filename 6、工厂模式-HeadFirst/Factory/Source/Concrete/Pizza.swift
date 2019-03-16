//
//  Pizza.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class Pizza: PizzaProtocol {
    var name: String = "Unknow Pizza"
    var sauce: String = "Unknow Sauce"
    var dough: String = "Unknow Daugh"
    var toppings: [String] = []  //pizza上面要放的东西

    func prepare() {
        print("Preparing + \(name)")
        print("Tossing dough...")
        print("Adding sauce...")
        print("Adding toppings...")
    }

    func bake() {
        print("Bake for 25 minutes for 350")
    }

    func cut() {
        print("Cutting the pizza into diagonal slice")
    }

    func box() {
        print("Place pizza in offical Pizzastore Box")
    }
}
