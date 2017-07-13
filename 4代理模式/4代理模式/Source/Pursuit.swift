//
//  Pursuit.swift
//  4代理模式
//
//  Created by tsc on 2017/7/13.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//被代理人
class Pursuit: NSObject, GiveGift {
    
    var girl: SchoolGirl?
    
    init(mm: SchoolGirl) {
        
        girl = mm
        
        super.init()
    }
    
    func giveDolls() {
        print("送布娃娃")
    }
    
    func giveFlowers() {
        print("送花")
    }
    
    func giveChocolate() {
        print("送巧克力")
    }
}
