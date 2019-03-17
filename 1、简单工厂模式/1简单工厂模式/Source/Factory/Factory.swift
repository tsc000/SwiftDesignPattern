//
//  Factory.swift
//  Factory
//
//  Created by tsc on 2017/7/10.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//工厂类，统一返回对象，如果要添加新的对象，新建类，并添加至case中
class Factory: NSObject {

    class func createOperator(operatorParameter: String) -> AnyObject{
        
        let operators = ["+", "-", "*", "/"];
        let type: CaculateType = CaculateType(rawValue: operators.index(of: operatorParameter) ?? 0) ?? CaculateType.Add

        switch type {
        case .Add:
            return CaculateAdd()
        case .Minus:
            return CaculateMinus()
        case .Multiply:
            return CaculateMultiply()
        case .Divide:
            return CaculateDivide()
        }
    }
}
