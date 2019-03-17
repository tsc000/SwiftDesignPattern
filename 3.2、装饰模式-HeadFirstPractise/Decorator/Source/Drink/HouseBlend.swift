//
//  HouseBlend.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

//混合咖啡
class HouseBlend: Beverage {
    var size: SizeType = .normal

    var description: String = "House Blend Coffee"

    init() {
        description = "House Blend Coffee"
    }

    func getDescription() -> String { return description }

    func cost() -> Double { return 0.89 }
}
