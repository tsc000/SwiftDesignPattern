//
//  CaffeineBeverage.swift
//  封装算法
//
//  Created by Honey on 2019/3/26.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

protocol CaffeineBeverage: class {
    func boilWater()
    func brew()
    func pourInCup()
    func addCondiments()
    func prepareRecipe()
    func hook()
}

extension CaffeineBeverage {
    //swift 中协议无法使用final，所以下面这个有被重写的风险
    func prepareRecipe() {
        boilWater()
        brew()
        pourInCup()
        addCondiments()
    }

    func boilWater() {
        print("CaffeineBeverage--boilWater")
    }

    func pourInCup() {
        print("CaffeineBeverage--pourInCup")
    }
}
