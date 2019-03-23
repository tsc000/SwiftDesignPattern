//
//  Amplifier.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class Amplifier {
    var tuner: Tuner
    var dvdPlayer: DvDPlayer
    var cdPlayer: CdPlayer
    
    init(tuner: Tuner, dvdPlayer: DvDPlayer, cdPlayer: CdPlayer) {
        (self.tuner, self.dvdPlayer, self.cdPlayer) = (tuner, dvdPlayer, cdPlayer)
    }
    
    func on() {
        print("Amplifier on")
    }
    
    func off() {
        print("Amplifier off")
    }
    
    func setCd() {
        print("Amplifier setCd")
    }
    
    func setDvd() {
        print("Amplifier setDvd")
    }
    
    func setSurroundSound() {
        print("Amplifier setSurroundSound")
    }
    
    func setTuner() {
        print("Amplifier setTuner")
    }
    
    func setVolumn(_ degree: Int) {
        print("Amplifier setVolumn: \(degree)")
    }
}
