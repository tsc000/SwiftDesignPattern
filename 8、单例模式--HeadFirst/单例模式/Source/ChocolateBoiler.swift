//
//  ChocolateBoiler.swift
//  单例模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

//巧克力制造工厂
class ChocolateBoiler {
    private var boiled = false
    private var empty = true

    //swift 单例，static(全局)变量是懒加载的相当于lazy，let 修饰的变量不可变
    private static let sharedInstance = ChocolateBoiler()

//    private static let instance = {
//        return ChocolateBoiler()
//    }()

    private init() {
        empty = true
        boiled = false
    }

    class func getInstance() -> ChocolateBoiler {
        return sharedInstance
    }

    func fill() {
        //锅炉为空时填充原料
        if isEmpty() {
            empty = false
            boiled = false
        }
    }

    func drain() {
        //锅炉非空肯已经加热过，取出原料
        if !isEmpty() && isBoiled() {
            empty = true
        }
    }

    func boil() {
        //加热原料，iff 非空且未加热
        if !isEmpty() && !isBoiled() {
            boiled = true
        }
    }

    func isEmpty() -> Bool {
        return empty
    }

    func isBoiled() -> Bool {
        return boiled
    }
}
