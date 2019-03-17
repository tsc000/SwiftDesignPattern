//
//  Decaf.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

//低咖啡因咖啡
class Decaf: Beverage {
    var description: String = "Decaf Coffee"

    init() {
        description = "Decaf Coffee"
    }

    func getDescription() -> String {
        return description
    }

    func cost() -> Double { return 1.05 }
}
