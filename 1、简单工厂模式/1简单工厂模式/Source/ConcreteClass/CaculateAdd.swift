//
//  CaculateAdd.swift
//  Factory
//
//  Created by tsc on 2017/7/10.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

class CaculateAdd: NSObject, CaculateDelegate {
    var numberA: Float = 0.0
    var numberB: Float = 0.0

    func caculate() -> Float {
        return numberA + numberB
    }
}
