//
//  CondimentDecorator.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class CondimentDecorator: Beverage {
    var size: SizeType = .normal
    
    var description: String = "Unknown Condiment"

    func getDescription() -> String { return description }

    func cost() -> Double { return 0.0  }
}
