//
//  Finery.swift
//  3、装饰模式
//
//  Created by tsc on 2017/7/12.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//服饰基类
class Finery: Person {
    
    private var person: Person?
    
    init() {
        super.init(name: "")
    }
    
    func decorate(person: Person) {
        self.person = person
    }
    
    override func show() {
        
        guard let person = person else {
            return
        }
        
        person.show()
    }
}
