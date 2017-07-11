//
//  CashReturn.swift
//  2策略模式
//
//  Created by tsc on 2017/7/11.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

class CashReturn: CashSuper {
    
    private var moneyCondition: Double = 0.0
    
    private var moneyReturn: Double = 0.0
    
    //moneyCondition 满足的条件 moneyReturn 返回的金额 例如: 满 300（moneyCondition） 返回 100（moneyReturn）
    init(moneyCondition: Double, moneyReturn: Double) {
    
        self.moneyCondition = moneyCondition
        
        self.moneyReturn = moneyReturn
        
        super.init()

    }
    
    override func acceptCash(money: Double) -> Double {
        
        var result = money
        
        if money > moneyCondition {
            
            //满足条件的数量
            let count: Double = Double(Int(money / moneyCondition))
            
            //减去折扣
            result -= moneyReturn * count
        }
        
        return result
    }


}
