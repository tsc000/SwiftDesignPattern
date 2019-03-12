//
//  Finery.swift
//  3、装饰模式
//
//  Created by tsc on 2017/7/12.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//服饰基类
class Finery: Component {
    
    private var component: Component?
    
    func decorate(component: Component) {
        self.component = component
    }
    
    override func show() {
        guard let component = component else { return }
        component.show()
    }
}
