//
//  main.swift
//  适配器
//
//  Created by zilly.MAC009 on 2019/3/20.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation
//火鸡被适配到鸭子上
let wildTurkey = WildTurkey()

let turkeyAdapter = TurkeyAdapter(turkey: wildTurkey)

turkeyAdapter.fly()
turkeyAdapter.quack()
