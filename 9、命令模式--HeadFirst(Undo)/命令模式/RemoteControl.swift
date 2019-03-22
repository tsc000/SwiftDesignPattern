//
//  RemoteControl.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class RemoteControl {
    var onCommands: [CommandProtocol]
    var offCommands: [CommandProtocol]
    var undoCommand: CommandProtocol?

    init() {
        onCommands = []
        offCommands = []
        let noCommand = NoCommand()
        (0..<7).forEach { _ in
            onCommands.append(noCommand)
            offCommands.append(noCommand)
        }
        undoCommand = noCommand
    }

    func setCommandAt(_ index: Int, onCommand: CommandProtocol, offCommand: CommandProtocol) {
        onCommands[index] = onCommand
        offCommands[index] = offCommand
    }

    func onButtonDidPressedAt(_ index: Int) {
        onCommands[index].excute()
        undoCommand = onCommands[index]
    }

    func offButtonDidPressed(_ index: Int) {
        offCommands[index].excute()
        undoCommand = offCommands[index]
    }

    func undoButtonDidPressed() {
        undoCommand?.undo()
    }
}
