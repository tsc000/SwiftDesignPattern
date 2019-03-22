//
//  Stereo.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/19.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class Stereo {
    var title: String

    init(title: String) {
        self.title = title
    }

    func on() {
        print("Stereo on")
    }

    func off() {
        print("Stereo off")
    }

    func setCd() {
        print("Stereo setCd")
    }

    func setDvd() {
        print("Stereo setDvd")
    }

    func setRadio() {
        print("Stereo setRadio")
    }

    func setVolume(_ volume: Int) {
        print("Stereo setVolume:\(volume)")
    }
}
