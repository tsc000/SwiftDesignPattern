//
//  FactoryDelegate.swift
//  Factory
//
//  Created by tsc on 2017/7/10.
//  Copyright © 2017年 tsc. All rights reserved.
//


enum CaculateType: Int {
    case Add = 0
    case Minus
    case Multiply
    case Divide
}

//简单加、减、乘、除代理
protocol CaculateDelegate {
    var numberA: Float {
        get set
    }
    
    var numberB: Float {
        get set
    }
    
    func caculate() -> Float
}
