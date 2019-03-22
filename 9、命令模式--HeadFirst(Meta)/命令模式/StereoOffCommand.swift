//
//  StereoOffCommand.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class StereoOffCommand: CommandProtocol {
    var stereo: Stereo

    init(stereo: Stereo) {
        self.stereo = stereo
    }

    func excute() {
        stereo.off()
    }

    func undo() {
        stereo.on()
        stereo.setCd()
        stereo.setVolume(11)
    }
}
