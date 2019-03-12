//
//  DarkRoast.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

//深焙咖啡
class DarkRoast: Beverage {
    var description: String = "Dark Roast Coffee"
    var size: SizeType = .normal
    
    init() {
        description = "Dark Roast Coffee"
    }

    func getDescription() -> String { return description }

    func cost() -> Double { return 0.99 }
}
