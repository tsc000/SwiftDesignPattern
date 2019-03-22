//
//  CommandProtocol.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

protocol CommandProtocol {
    func excute()
    func undo()
}

extension CommandProtocol {
    func undo() {
        print("Undo nothing!")
    }
}
