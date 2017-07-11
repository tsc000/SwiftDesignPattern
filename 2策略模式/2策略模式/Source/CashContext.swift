//
//  CashContext.swift
//  2策略模式
//
//  Created by tsc on 2017/7/11.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

enum CacultorType: Int {
    case Normal
    case Rebate
    case Return
}

class CashContext: NSObject {

    private var cs: CashSuper!
    
    func cashContext(type: CacultorType) {
    
        switch type {
        case .Normal:
            
            cs = CashNormal()
            
            break
        case .Rebate:
            
            cs = CashRebate(moneyRebate: 0.8)
            
            break
        case .Return:
            
            cs = CashReturn(moneyCondition: 300, moneyReturn: 100)
            
            break
        }
    }
    
    //传入初始金额，利用私有cs，计算最终金额
    func getResult(money: Double) -> Double {
        return cs.acceptCash(money: money)
    }

}
