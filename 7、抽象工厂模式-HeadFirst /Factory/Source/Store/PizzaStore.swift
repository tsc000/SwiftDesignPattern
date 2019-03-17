//
//  PizzaStore.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//这里相当于Java中的抽象类
class PizzaStore: PizzaStoreProtocol {
    //禁止子类重写，导致其它的操作
    final func orderPizza(type: String) -> PizzaProtocol {
        let pizza = createPizza(type: type)
        //pizza的其它操作
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }

    //swift没有抽象类，只在用协议实现，这里还得返回一个默认值
    func createPizza(type: String) -> PizzaProtocol {
        return Pizza()
    }
}
