//
//  Pizza.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class Pizza: PizzaProtocol {
    var sauce: SauceProtocol = Sauce()
    var dough: DoughProtocol = Dough()
    var cheese: CheeseProtocol = Cheese()
    var pepperoni: PepperoniProtocol = Pepperoni()
    var clams: ClamsProtocol = Clams()
    var veggies: [VeggiesProtocol] = []
    var name: String = "Unknow Pizza"

    func prepare() {
        print("Preparing + \(name)")
        print("Tossing dough...")
        print("Adding sauce...")
        print("Adding toppings...")
    }

    func bake() { print("Step1: Bake for 25 minutes for 350") }

    func cut() { print("Step2: Cutting the pizza into diagonal slice") }

    func box() { print("Step3: Place pizza in offical Pizzastore Box") }
}
