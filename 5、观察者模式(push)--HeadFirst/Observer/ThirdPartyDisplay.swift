//
//  ThirdPartyDisplay.swift
//  Observer
//
//  Created by zilly.MAC009 on 2019/3/11.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Cocoa

class ThirdPartyDisplay: Observer, DisplaymentProtocol {

    var subject: SubjectProtocol?
    
    private var temperature: Float = 0.0
    private var humidity: Float = 0.0

    //这里捕获了Subject的变量，这是为了以后可能取消注册，有相应的变量就可以取消注册
    init(subject: SubjectProtocol) {
        self.subject = subject
        super.init()
        //内部主动注册观察者
        self.subject?.registerObserver(observer: self)
    }

    func removeFromSubject() {
        weatherData.removeObserver(observer: self)
    }
    
    //MARK:- ObserverProtocol

    override func update(observer: Observer, arg: Any?) {
        guard let dict = arg as? [String: Any] else { print("解析错误");  return }
        if let temperature = dict["temperature"] as? Float {
            self.temperature = temperature
        }
        if let humidity = dict["humidity"] as? Float {
            self.humidity = humidity
        }
        display()
    }

    //MARK:- DisplaymentProtocol
    func display() {
        print("Current conditions: ThirdPartyDisplay--temperature:\(temperature)--humidity:\(humidity)")
    }

}
