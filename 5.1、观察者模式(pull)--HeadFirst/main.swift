//
//  main.swift
//  Observer
//
//  Created by zilly.MAC009 on 2019/3/11.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//观察者自己获取数据
//WeatherData2 -----> CustomDisplay

let weatherData2 = WeatherData2()
let customDisplay = CustomDisplay(subject: weatherData2)//初始化的时候会进行数据的主动拉取

weatherData2.setMeasurements(temperature: 10, humidity: 10, pressure: 30.4) //温度差 10 - 0 > 0.5 这里会通知观察者
weatherData2.setMeasurements(temperature: 10.4, humidity: 10, pressure: 30.4) //温度差 10.4 - 10  < 0.5 这里不会通知观察者
