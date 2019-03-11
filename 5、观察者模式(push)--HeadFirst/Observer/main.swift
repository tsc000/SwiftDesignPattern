//
//  main.swift
//  Observer
//
//  Created by zilly.MAC009 on 2019/3/11.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//WeatherData -----> StatisticsDisplay, ForecastDisplay
//WeatherData2 -----> ThirdPartyDisplay

//可观察对象
let weatherData = WeatherData()

//观察者
let statisticsDisplay = StatisticsDisplay(subject: weatherData)
let forecastDisplay = ForecastDisplay(subject: weatherData)

print("-------------准备发三个通知-------------\n")

//发通知
weatherData.setMeasurements(temperature: 80, humidity: 65, pressure: 30.4)
weatherData.setMeasurements(temperature: 82, humidity: 70, pressure: 29.2)
weatherData.setMeasurements(temperature: 78, humidity: 90, pressure: 30.4)

print("\n-------------准备发第四个通知-------------")
print("-------------移除ForecastDisplay-------------\n")
forecastDisplay.removeFromSubject()
weatherData.setMeasurements(temperature: 99, humidity: 40, pressure: 38.4)



/***************************************************************/
print("\n\n-------------WeatherData2-------------")
let weatherData2 = WeatherData2()
let thirdPartyDisplay = ThirdPartyDisplay(subject: weatherData2)
weatherData2.setMeasurements(temperature: 10, humidity: 10, pressure: 38.4)


