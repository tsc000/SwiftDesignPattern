//
//  SchoolGirl.swift
//  4代理模式
//
//  Created by tsc on 2017/7/13.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//代理直接接触的对象
class SchoolGirl: NSObject {
    
    var name: String?
    
    init(name: String) {
        self.name = name
    }
}
