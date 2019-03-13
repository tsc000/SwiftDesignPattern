//
//  PizzaProtocl.swift
//  简单工厂模式
//
//  Created by zilly.MAC009 on 2019/3/13.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

protocol PizzaProtocol {
    var name: String { get set }
    var sauce: String { get set }
    var daugh: String { get set }
    func prepare()
    func bake()
    func cut()
    func box()
}
