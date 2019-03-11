//
//  ObserverProtocol.swift
//  Observer
//
//  Created by zilly.MAC009 on 2019/3/11.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//观察者抽象类
//这里没有协议而是用了一个基于OC的类，是因为swift的类和协议，如果被放到数组中，不能用数组来判等（contains）
class Observer: NSObject {

    //此方法不利于扩展
    func update(temperature: Float, humidity: Float, pressure: Float) {}

    //此方法有更好的扩展性
    func update(observer: Observer, arg: Any?) {}
}
