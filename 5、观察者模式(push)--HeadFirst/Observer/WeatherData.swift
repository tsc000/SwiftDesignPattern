//
//  WeathData.swift
//  Observer
//
//  Created by zilly.MAC009 on 2019/3/11.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class WeatherData: SubjectProtocol {

    private var temperature: Float = 0.0
    private var humidity: Float = 0.0
    private var pressure: Float = 0.0
    //包含所有遵守`ObserverProtocol`的对象
    var observers = [Observer]()

    //获取数据就会触发
    func measurementsChanged() {
        notifyObservers()
    }

    //模拟数据获取的过程
    func setMeasurements(temperature: Float, humidity: Float, pressure: Float) {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        measurementsChanged()
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
        observers.forEach{ $0.update(temperature: temperature, humidity: humidity, pressure: pressure)}
    }

}
