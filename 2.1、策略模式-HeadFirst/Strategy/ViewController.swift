//
//  ViewController.swift
//  Strategy
//
//  Created by zilly.MAC009 on 2019/3/7.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mallardDuck = Mallard()
        let fly = FlyNoWay()
        let quack = Quack()
        mallardDuck.flyBehavior = fly
        mallardDuck.quackBehavior = quack

        mallardDuck.performFly()
        mallardDuck.performQuack()

    }


}

