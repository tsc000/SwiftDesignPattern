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

//上下文
class CashContext: NSObject {

    private var cs: CashSuper!
    
    //优点4： 客户可以根据不同时间 /空间权衡取舍要求从不同策略中进行选择。
    //优点3： 将算法封装在独立的Strategy类中使得你可以独立于其Context改变它，使它易于切换、易于理解、易于扩展。
    //缺点3： 策略模式将造成产生很多策略类
    func cashContext(type: CacultorType) {
        switch type {
        case .Normal:
            cs = CashNormal()
        case .Rebate:
            cs = CashRebate(moneyRebate: 0.8)
        case .Return:
            cs = CashReturn(moneyCondition: 300, moneyReturn: 100)
        }
    }
    
    //优点2： 策略以相同的方式调用所有的算法，减少客户端与算法类之间的耦合
    //传入初始金额，利用私有cs，计算最终金额
    func getResult(money: Double) -> Double {
        return cs.acceptCash(money: money)
    }

}
