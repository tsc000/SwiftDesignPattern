//
//  PizzaStore.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class PizzaSotre {
    var simpleFactory: SimplePizzaFactory

    init(simpleFactory: SimplePizzaFactory) {
        self.simpleFactory = simpleFactory
    }

    func orderPizza(type: String) -> PizzaProtocol {
        let pizza = simpleFactory.createPizza(type: type)
        //pizza的其它操作
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
