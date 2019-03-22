//
//  Light.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class Light {
    var title: String

    init(title: String) {
        self.title = title
    }

    func on() {
        print("Light is on")
    }

    func off() {
        print("Light is off")
    }
}
