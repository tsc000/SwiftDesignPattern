//
//  QuackBehivor.swift
//  Strategy
//
//  Created by zilly.MAC009 on 2019/3/8.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import UIKit

//设计原则：封装变化-找出应用中需要变化的地方，将他们独立出来，不要和不需要变化的代码混合到一块
//设计原则：针对接口编程而不是针对实现编程
protocol QuackBehivor {
    func quack()
}

//下面是针对QuackBehivor协议定义的算法簇
class Quack: QuackBehivor {
    func quack() {
        print("Quack")
    }
}

class Slient: QuackBehivor {
    func quack() {
        print("slient")
    }
}

class Squeak: QuackBehivor {
    func quack() {
        print("Squeak")
    }
}
