//
//  HomeTheaterFacade.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class HomeTheaterFacade {
    var amp: Amplifier
    var tuner: Tuner
    var dvd: DvDPlayer
    var cd: CdPlayer
    var projector: Projector
    var lights: TheaterLights
    var screen: Screen
    var popper: PopcornPopper
    
    init(amp: Amplifier, tuner: Tuner, dvd: DvDPlayer, cd: CdPlayer, projector: Projector, lights: TheaterLights, screen: Screen, popper: PopcornPopper) {
        (self.amp, self.tuner, self.dvd, self.cd, self.projector, self.lights, self.screen, self.popper) = (amp, tuner, dvd, cd, projector, lights, screen, popper)
    }
    
    //封装一大堆操作
    func watchMovie(_ movie: String) {
        print("Get ready to watch a movie...")
        popper.on()
        popper.pop()
        lights.dim(10)
        screen.down()
        projector.on()
        projector.wideScreenMode()
        amp.on()
        amp.setDvd()
        amp.setSurroundSound()
        amp.setVolumn(5)
        dvd.on()
        dvd.play(movie: movie)
    }
    
    //封装一大堆操作
    func endMovie() {
        print("Shutting movie theater down...")
        popper.off()
        lights.off()
        screen.up()
        projector.off()
        amp.off()
        dvd.stop()
        dvd.eject()
        dvd.off()
    }
    
    func listenToCd() {
        
    }
    
    func endCd() {
        
    }
    
    func listenToRadio() {
        Decimal(integerLiteral: 20)._isNegative
    }
    
    func endRadio() {
        
    }
}
