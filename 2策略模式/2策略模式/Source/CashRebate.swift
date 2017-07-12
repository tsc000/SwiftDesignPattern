//
//  CashRebate.swift
//  2策略模式
//
//  Created by tsc on 2017/7/11.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//打折类
class CashRebate: CashSuper {
    
    private var moneyRebate: Double = 1.0
    
    init(moneyRebate: Double) {
        
        self.moneyRebate = moneyRebate
        
        super.init()
    }

    //打折返回
    override func acceptCash(money: Double) -> Double {
        return money * moneyRebate
    }

}
