//
//  main.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

let light = Light(title: "Living Room")
let kitchenLight = Light(title: "Kitchen")
let ceilingFan = CeilingFan(title: "Living Room")
let garageDoor = GarageDoor(title: "GarageDoor")
let stereo = Stereo(title: "Living Room")

let remoteControl = RemoteControl()

//普通灯
let lightOnCommand = LightOnCommand(light: light)
let lightOffCommand = LightOffCommand(light: light)
//厨房灯
let kitchenLightOnCommand = LightOnCommand(light: light)
let kitchenLightOffCommand = LightOffCommand(light: light)
//吊扇
let ceilingFanOnCommand = CeilingFanOnCommand(ceilingFan: ceilingFan)
let ceilingFanOffCommand = CeilingFanOffCommand(ceilingFan: ceilingFan)
//车库
let garageDoorUpCommand = GarageDoorUpCommand(garageDoor: garageDoor)
let garageDoorDownCommand = GarageDoorDownCommand(garageDoor: garageDoor)
//音响
let stereoOnCommand = StereoOnCommand(stereo: stereo)
let stereoOffCommand = StereoOffCommand(stereo: stereo)


//设置命令
remoteControl.setCommandAt(0, onCommand: lightOnCommand, offCommand: lightOffCommand)
remoteControl.setCommandAt(1, onCommand: kitchenLightOnCommand, offCommand: kitchenLightOffCommand)
remoteControl.setCommandAt(2, onCommand: ceilingFanOnCommand, offCommand: ceilingFanOffCommand)
remoteControl.setCommandAt(3, onCommand: garageDoorUpCommand, offCommand: garageDoorDownCommand)

//执行
remoteControl.onButtonDidPressedAt(0)
remoteControl.offButtonDidPressed(0)
remoteControl.onButtonDidPressedAt(1)
remoteControl.offButtonDidPressed(1)
remoteControl.onButtonDidPressedAt(2)
remoteControl.offButtonDidPressed(2)
remoteControl.onButtonDidPressedAt(3)
remoteControl.offButtonDidPressed(3)
remoteControl.onButtonDidPressedAt(6)
remoteControl.offButtonDidPressed(6)

//print("-----------------------Light------------------------")
////开灯
//remoteControl.setCommand(command: lightOnCommand)
//remoteControl.buttonWasPressed()
////关灯
//remoteControl.setCommand(command: lightOffCommand)
//remoteControl.buttonWasPressed()
//
//print("-----------------------GarageDoor------------------------")
//
//remoteControl.setCommand(command: garageDoorLightOnCommand)
//remoteControl.buttonWasPressed()
//remoteControl.setCommand(command: garageDoorLightOffCommand)
//remoteControl.buttonWasPressed()
//remoteControl.setCommand(command: garageDoorUpCommand)
//remoteControl.buttonWasPressed()
//remoteControl.setCommand(command: garageDoorDownCommand)
//remoteControl.buttonWasPressed()
//remoteControl.setCommand(command: garageDoorStopCommand)
//remoteControl.buttonWasPressed()
//
