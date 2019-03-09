//
//  CashNormal.swift
//  2策略模式
//
//  Created by tsc on 2017/7/11.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

class CashNormal: CashSuper {
    override func acceptCash(money: Double) -> Double {
        return money
    }
}
