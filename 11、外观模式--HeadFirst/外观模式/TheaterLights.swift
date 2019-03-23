//
//  TheaterLights.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class TheaterLights {
    //启动家庭影院灯
    func on() {
        print("TheaterLights on")
    }
    
    //关闭家庭影院灯
    func off() {
        print("TheaterLights off")
    }
    
    //调暗家庭影院灯
    func dim(_ degree: Int) {
        print("TheaterLights dim: \(degree)")
    }
}
