//
//  LightOnCommand.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class LightOnCommand: CommandProtocol {
    var light: Light

    init(light: Light) {
        self.light = light
    }

    func excute() {
        light.on()
    }

    func undo() {
        light.off()
    }
}
