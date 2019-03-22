//
//  MallardDuck.swift
//  适配器
//
//  Created by zilly.MAC009 on 2019/3/20.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class MallardDuck: DuckProtocol {
    func quack() {
        print("Quack")
    }

    func fly() {
        print("Flying")
    }
}
