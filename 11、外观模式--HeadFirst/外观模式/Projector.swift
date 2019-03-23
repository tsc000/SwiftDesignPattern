//
//  Projector.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

//投影仪
class Projector: NSObject {
    var dvdPlayer: DvDPlayer
    
    init(dvdPlayer: DvDPlayer) {
        self.dvdPlayer = dvdPlayer
    }
    
    //启动投影仪
    func on() {
        print("Projector on")
    }
    
    //关闭投影仪
    func off() {
        print("Projector off")
    }
    
    func tvMode() {
        print("Projector tvMode")
    }
    
    func wideScreenMode() {
        print("Projector wideScreenMode")
    }
}
