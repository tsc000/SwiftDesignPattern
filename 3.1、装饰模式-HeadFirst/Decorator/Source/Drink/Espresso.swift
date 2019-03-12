//
//  Espresso.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

//浓缩咖啡
class Espresso: Beverage {
    var description: String = "Espresso Coffee"

    init() {
        description = "Espresso Coffee"
    }
    
    func getDescription() -> String {
        return description
    }

    func cost() -> Double { return 1.99 }
}
