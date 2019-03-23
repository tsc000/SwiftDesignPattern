//
//  DvDPlayer.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class DvDPlayer: NSObject {
    var amplifier: Amplifier?
    
    init(amplifier: Amplifier?) {
        self.amplifier = amplifier
    }
    
    //启动DVD电源
    func on() {
        print("DvDPlayer on")
    }
    
    //开闭DVD电源
    func off() {
        print("DvDPlayer off")
    }
    
    //弹出光盘
    func eject() {
        print("DvDPlayer eject")
    }
    
    //暂停播放
    func pause() {
        print("DvDPlayer pause")
    }
    
    //播放DVD
    func play(movie: String) {
        print("DvDPlayer play: \(movie)")
    }
    
    //停止播放DVD
    func stop() {
        print("DvDPlayer stop")
    }
    
    func setSurroundAudio() {
        print("DvDPlayer setSurroundAudio")
    }
    
    func setTwoChannelAudio() {
        print("DvDPlayer setTwoChannelAudio")
    }
}
