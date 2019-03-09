//
//  Proxy.swift
//  4代理模式
//
//  Created by tsc on 2017/7/13.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//代理人，
class Proxy: NSObject, GiveGift {
    
    //代理对象
    var gg: Pursuit?
    
    init(mm: SchoolGirl) {
        gg = Pursuit(mm: mm)
    }
    
    func giveDolls() {
        gg?.giveDolls()
    }
    
    func giveFlowers() {
        gg?.giveFlowers()
    }
    func giveChocolate() {
        gg?.giveChocolate()
    }
}
