//
//  NoCommand.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class NoCommand: CommandProtocol {
    func excute() {
        print("No Command. Do Nothing")
    }
}
