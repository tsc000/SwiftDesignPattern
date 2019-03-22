//
//  CeilingFanOffCommand.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class CeilingFanOffCommand: CommandProtocol {
    var ceilingFan: CeilingFan

    init(ceilingFan: CeilingFan) {
        self.ceilingFan = ceilingFan
    }

    func excute() {
        ceilingFan.off()
    }
}
