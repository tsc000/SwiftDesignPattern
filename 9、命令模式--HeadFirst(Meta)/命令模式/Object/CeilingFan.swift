//
//  CeilingFan.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

enum SpeedType {
    case off, low, medium, high
}

class CeilingFan {
    var title: String
    var speed: SpeedType = .off

    init(title: String) {
        self.title = title
    }

    func on() {
        print("CeilingFan on")
    }

    func off() {
        print("CeilingFan off")
    }
    
    func getSpeed() -> SpeedType {
        return speed
    }

    func low() {
        print("CeilingFan low")
        speed = .low
    }

    func medium() {
        print("CeilingFan medium")
        speed = .medium
    }

    func high() {
        print("CeilingFan high")
        speed = .high
    }
}
