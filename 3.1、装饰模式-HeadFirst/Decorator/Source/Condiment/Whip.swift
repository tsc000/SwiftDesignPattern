//
//  Whip.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

//奶泡
class Whip: CondimentDecorator {
    var beverage: Beverage

    init(beverage: Beverage) {
        self.beverage = beverage
    }

    override func getDescription() -> String { return beverage.getDescription() + ", Whip" }

    override func cost() -> Double { return 0.10 }
}
