//
//  Mocha.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

//摩卡
class Mocha: CondimentDecorator {
    var beverage: Beverage

    init(beverage: Beverage) {
        self.beverage = beverage
    }

    override func getDescription() -> String { return beverage.getDescription() + ", Mocha" }

    override func cost() -> Double { return 0.20 + beverage.cost() }
}
