//
//  ViewController.swift
//  Factory
//
//  Created by tsc on 2017/7/10.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

//Factory 工厂类，根据条件返回相应的对象（加、减、乘、除）
//被集成的类包括 加、减、乘、除
//加、减、乘、除 遵守代理 可以统一处理计算方法
class ViewController: UIViewController {

    @IBOutlet weak var numberATF: UITextField!
    @IBOutlet weak var caculatorTF: UITextField!
    @IBOutlet weak var numberBTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func caculatorButtonDidClick(_ sender: UIButton) {

        var caculator: CaculateDelegate = Factory.createOperator(operatorParameter: caculatorTF.text ?? "") as! CaculateDelegate
        
        caculator.numberA = Float(numberATF.text!) ?? 0
        
        caculator.numberB = Float(numberBTF.text!) ?? 0
        
        let result = caculator.caculate()
        
        resultLabel.text = String(result)
        
    }
}

