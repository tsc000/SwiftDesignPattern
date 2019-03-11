//
//  WeathData.swift
//  Observer
//
//  Created by zilly.MAC009 on 2019/3/11.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//这个Subject利用的是更为合理的update方法
class WeatherData2: SubjectProtocol {

    private var oldTemperature: Float = 0.0
    private var temperature: Float = 0.0
    private var humidity: Float = 0.0
    private var pressure: Float = 0.0
    private var changed = false

    //包含所有遵守`ObserverProtocol`的对象
    var observers = [Observer]()

    //获取数据就会触发
    func measurementsChanged() {
        //这个可以设置一些判断判断条件来决定是不是要通知观察者
        setChanged()
        notifyObservers()
    }

    //模拟数据获取的过程
    func setMeasurements(temperature: Float, humidity: Float, pressure: Float) {
        oldTemperature = self.temperature
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        measurementsChanged()
    }

    func setChanged() {
        changed = temperature - oldTemperature > 0.5 ? true : false
    }

    //MARK: - 供观察者自己获取数据
    func getTemperature() -> Float {
        return temperature
    }

    func getHumidity() -> Float {
        return humidity
    }

    func getPressure() -> Float {
        return pressure
    }

    //MARK: - SubjectProtocol
    func registerObserver(observer: Observer) {
        if !observers.contains(observer) {
            observers.append(observer)
        }
    }

    func removeObserver(observer: Observer) {
        observers = observers.filter{ $0 != observer}
    }

    func notifyObservers() {
        guard changed else { return }
        observers.forEach{ $0.update(observer: $0, arg: ["temperature": temperature, "humidity":humidity, "pressure":pressure])}
        changed = false
    }

}
