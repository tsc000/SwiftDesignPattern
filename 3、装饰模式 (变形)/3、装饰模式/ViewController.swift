//
//  ViewController.swift
//  3、装饰模式
//
//  Created by tsc on 2017/7/12.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = Person(name: "小菜")
        
        let bigTrouser = BigTrouser()
        
        let tShirts =  TShirts()
        
        bigTrouser.decorate(person: person)
        
        tShirts.decorate(person: bigTrouser)
        
        tShirts.show()
        
        
    }

}

