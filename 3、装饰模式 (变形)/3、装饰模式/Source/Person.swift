//
//  Person.swift
//  3、装饰模式
//
//  Created by tsc on 2017/7/12.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//人类（抽象基类）
class Person: NSObject {

    private var name: String;
    
    init(name: String) {
        self.name = name
        
        super.init()
    }
    
    func show() {
        print("装扮的\(name)")
    }
}
