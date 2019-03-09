//
//  ViewController.swift
//  2策略模式
//
//  Created by tsc on 2017/7/11.
//  Copyright © 2017年 tsc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var unitPriceTF: UITextField!
    @IBOutlet weak var countTF: UITextField!
    @IBOutlet weak var caculateType: UIPickerView!
    @IBOutlet weak var moneyResult: UILabel!
    var titleArray: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //天生 缺点1：客户端必须知道有的策略类
        titleArray = ["正常收费", "打八折", "满300减100"]
    }

    @IBAction func caculator(_ sender: UIButton) {
        let row = caculateType.selectedRow(inComponent: 0)
        let type = CacultorType(rawValue: row) ?? CacultorType.Normal
        //client
        let context = CashContext()
        context.cashContext(type: type)
        let result = context.getResult(money: Double(unitPriceTF.text ?? "0")! * Double(countTF.text ?? "0")!)
        moneyResult.text = String(result)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return titleArray[row]
    }

}

