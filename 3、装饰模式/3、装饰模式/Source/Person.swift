//
//  Person.swift
//  3、装饰模式
//
//  Created by tsc on 2017/7/12.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//人类（被装饰对象）
class Person: Component {
    private var name: String;
    
    init(name: String) {
        self.name = name
        super.init()
    }
    
    override func show() {
        print("装扮的\(name)")
    }
}
