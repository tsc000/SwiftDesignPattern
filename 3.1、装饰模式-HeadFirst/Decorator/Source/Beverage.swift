//
//  Beverage.swift
//  Decorator
//
//  Created by zilly.MAC009 on 2019/3/12.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

//接口，swift没有抽象类，只能用协议实现
protocol Beverage {
    var description: String { set get }
    func getDescription() -> String
    func cost() -> Double
}

////抽象基类  错误方式
//class Beverage {
//    var description = "Unknown Beverage"
//
//    func getDescription() -> String { return description }
//
//    func cost() -> Double { return 0.0 }
//}
