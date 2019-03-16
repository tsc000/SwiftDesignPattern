//
//  PizzaIngredientFactory.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/14.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//每一个协议方法就相当于一个产品，PizzaIngredientFactory是多个产品的集合
//每个协议方法的实现利用的是工厂模式
protocol PizzaIngredientFactory {
    //创建面团
    func createDough() -> DoughProtocol
    //创建酱汁
    func createSauce() -> SauceProtocol
    //创建奶酪
    func createCheese() -> CheeseProtocol
    //创建蔬菜
    func createVeggies() -> [VeggiesProtocol]
    //创建意大利辣香肠
    func createPepperoni() -> PepperoniProtocol
    //创建蛤蜊
    func createClams() -> ClamsProtocol
}
