//
//  main.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//深缩咖啡: 不加调料
let epresso = Espresso()
print("\(epresso.getDescription()) $\(epresso.cost())")

//深焙咖啡: 两杯摩卡，一杯奶泡  ，咖啡没有按杯子大小计费，只是对调料进行了收费（按大中小）
var darkRoast: Beverage = DarkRoast()

darkRoast = Mocha(beverage: darkRoast)
darkRoast.size = .venti
darkRoast = Mocha(beverage: darkRoast)
darkRoast.size = .venti
darkRoast = Whip(beverage: darkRoast)
darkRoast.size = .venti
print("\(darkRoast.getDescription()) $\(darkRoast.cost())")




