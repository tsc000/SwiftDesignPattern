//
//  CeilingFanLowCommand.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class CeilingFanLowCommand: CommandProtocol {
    var ceilingFan: CeilingFan
    var speed: SpeedType = .off

    init(ceilingFan: CeilingFan) {
        self.ceilingFan = ceilingFan
    }

    func excute() {
        speed = ceilingFan.getSpeed()
        ceilingFan.low()
    }

    func undo() {
        switch speed {
        case .off:
            ceilingFan.off()
        case .low:
            ceilingFan.low()
        case .medium:
            ceilingFan.medium()
        case .high:
            ceilingFan.high()
        }
    }
}
