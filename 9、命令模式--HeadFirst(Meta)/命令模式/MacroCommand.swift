//
//  MacroCommand.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class MacroCommand: CommandProtocol {
    var commands: [CommandProtocol]

    init(commands: [CommandProtocol]) {
        self.commands = commands
    }

    func excute() {
        self.commands.forEach { (command) in
            command.excute()
        }
    }

    func undo() {
        self.commands.forEach { (command) in
            command.undo()
        }
    }
}
