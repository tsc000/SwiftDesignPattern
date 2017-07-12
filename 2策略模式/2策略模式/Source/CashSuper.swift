//
//  CashSuper.swift
//  2策略模式
//
//  Created by tsc on 2017/7/11.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

class CashSuper: NSObject {

    //优点1： 继承有助于析取出这些算法中的公共功能。
    //缺点2： Strategy和Context之间的通信开销，对于子类实现的通信接口(acceptCash)，参数（money）可以会永远不会使用
    func acceptCash(money: Double) -> Double {
        return 0.0
    }
}
