//
//  CdPlayer.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class CdPlayer {
    var amplifier: Amplifier?
    
    init(amplifier: Amplifier?) {
        self.amplifier = amplifier
    }
    
    //启动CD电源
    func on() {
        print("CdPlayer on")
    }
    
    //开闭CD电源
    func off() {
        print("CdPlayer off")
    }
    
    //弹出光盘
    func eject() {
        print("CdPlayer eject")
    }
    
    //暂停播放
    func pause() {
        print("CdPlayer pause")
    }
    
    //播放Cd
    func play() {
        print("CdPlayer play")
    }
    
    //停止播放Cd
    func stop() {
        print("CdPlayer stop")
    }
}
