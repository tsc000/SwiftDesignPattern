//
//  TurkeyAdaptor.swift
//  适配器
//
//  Created by zilly.MAC009 on 2019/3/20.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//火鸡被适配到鸭子上
class TurkeyAdapter: DuckProtocol {
    var turkey: TurkeyProtocol

    init(turkey: TurkeyProtocol) {
        self.turkey = turkey
    }

    func quack() {
        turkey.gobble()
    }

    func fly() {
        (0..<5).forEach { _ in
            turkey.fly()
        }
    }
}
