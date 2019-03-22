//
//  CeilingFan.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class CeilingFan {
    var title: String

    init(title: String) {
        self.title = title
    }

    func on() {
        print("CeilingFan on")
    }

    func off() {
        print("CeilingFan off")
    }
}
