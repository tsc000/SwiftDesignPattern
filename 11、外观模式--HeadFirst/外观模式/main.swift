//
//  main.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation


var cd = CdPlayer(amplifier: nil)
var dvd = DvDPlayer(amplifier: nil)
var tuner = Tuner(amplifier: nil)
var projector = Projector(dvdPlayer: dvd)
var screen = Screen()
var lights = TheaterLights()
var poper = PopcornPopper()

var amp = Amplifier(tuner: tuner, dvdPlayer: dvd, cdPlayer: cd)
cd.amplifier = amp
dvd.amplifier = amp
tuner.amplifier = amp

var homeTheadterFacade = HomeTheaterFacade(amp: amp, tuner: tuner, dvd: dvd, cd: cd, projector: projector, lights: lights, screen: screen, popper: poper)

homeTheadterFacade.watchMovie("King Lion")
print()
homeTheadterFacade.endMovie()
