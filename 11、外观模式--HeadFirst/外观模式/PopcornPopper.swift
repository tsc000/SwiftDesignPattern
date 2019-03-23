//
//  PopcornPopper.swift
//  外观模式
//
//  Created by Honey on 2019/3/22.
//  Copyright © 2019 Honey. All rights reserved.
//

import Cocoa

class PopcornPopper {
    //启动爆米花机器
    func on() {
        print("PopcornPopper on")
    }
    
    //开闭爆米花机器
    func off() {
        print("PopcornPopper off")
    }
    
    //产出爆米花
    func pop() {
        print("PopcornPopper pop")
    }
}
