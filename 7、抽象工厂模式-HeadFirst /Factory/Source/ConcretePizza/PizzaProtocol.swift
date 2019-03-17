//
//  PizzaProtocl.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

protocol PizzaProtocol {
    var name: String { get set }
    var sauce: SauceProtocol { get set }
    var dough: DoughProtocol { get set }
    var cheese: CheeseProtocol { get set }
    var pepperoni: PepperoniProtocol { get set }
    var clams: ClamsProtocol { get set }
    var veggies: [VeggiesProtocol] { get set }

    func prepare()
    func bake()
    func cut()
    func box()
}
