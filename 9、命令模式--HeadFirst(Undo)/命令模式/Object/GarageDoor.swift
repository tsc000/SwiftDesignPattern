//
//  GarageDoor.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class GarageDoor {
    var title: String

    init(title: String) {
        self.title = title
    }

    
    func up() {
        print("GarageDoor up")
    }

    func down() {
        print("GarageDoor down")
    }

    func stop() {
        print("GarageDoor stop")
    }

    func lightOn() {
        print("GarageDoor light on")
    }

    func lightOff() {
        print("GarageDoor light off")
    }
}
