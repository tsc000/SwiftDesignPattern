//
//  CheesePizza.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class CheesePizza: Pizza {
    override init() {
        super.init()
        name = "Cheese Pizza"
    }
}
