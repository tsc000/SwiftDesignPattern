//
//  GarageDoorDownCommand.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class GarageDoorDownCommand: CommandProtocol {
    var garageDoor: GarageDoor?

    init(garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }

    func excute() {
        garageDoor?.down()
    }

    func undo() {
        garageDoor?.up()
    }
}
