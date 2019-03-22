//
//  SimpleRemoteControl.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class SimpleRemoteControl {
    var slot: CommandProtocol?

    func setCommand(command: CommandProtocol) {
        slot = command
    }

    func buttonWasPressed() {
        slot?.excute()
    }
}
