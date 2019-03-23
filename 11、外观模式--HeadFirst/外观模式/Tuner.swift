//
//  Tuner.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class Tuner: NSObject {
    var amplifier: Amplifier?
    
    init(amplifier: Amplifier?) {
        self.amplifier = amplifier
    }
    
    //启动无线电收音机
    func on() {
        print("Tuner on")
    }
    
    //关闭无线电收音机
    func off() {
        print("Tuner off")
    }
    
    func setAm() {
        print("Tuner setAm")
    }
    
    func setPm() {
        print("Tuner setPm")
    }
    
    func setFrequency() {
        print("Tuner setFrequency")
    }
}
