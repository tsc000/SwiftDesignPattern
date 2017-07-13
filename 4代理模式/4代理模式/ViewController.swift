//
//  ViewController.swift
//  4代理模式
//
//  Created by tsc on 2017/7/13.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //代理承受人
        let mm = SchoolGirl(name: "娇娇")

        //代理（gg 被代理人内部自动创建一个默认值）
        let daili = Proxy(mm: mm)

        daili.giveDolls()
        
        daili.giveFlowers()
        
        daili.giveChocolate()
    }

}

