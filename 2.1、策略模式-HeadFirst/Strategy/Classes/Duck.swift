//
//  Duck.swift
//  Strategy
//
//  Created by zilly.MAC009 on 2019/3/7.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import UIKit

class Duck {

    //fly 和 quack 不是每个子类都可能具备的所以它们是变化的部分，应该抽取出来
    //设计原则：使用组合(FlyBehavior, QuackBehivor)而不是使用继承
    var flyBehavior: FlyBehavior?        //针对接口（FlyBehavior）编程而不是针对实现编程
    var quackBehavior: QuackBehivor?     //针对接口（QuackBehivor）编程而不是针对实现编程

    //不需要变化的行为
    func swim() {
        print("I can swim")
    }

    //根据子类的而变化的行为
    func display() {

    }

    func performQuack() {
        flyBehavior?.fly()
    }

    func performFly() {
        quackBehavior?.quack()
    }
}

//具体子类，绿头鸭
class Mallard: Duck {
    override func display() {
        print("一只绿头鸭")
    }
}
