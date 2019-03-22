//
//  main.swift
//  命令模式
//
//  Created by zilly.MAC009 on 2019/3/18.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

let light = Light()
let garageDoor = GarageDoor()

let remoteControl = SimpleRemoteControl()
let lightOnCommand = LightOnCommand(light: light)
let lightOffCommand = LightOffCommand(light: light)
let garageDoorLightOnCommand = GarageDoorLightOnCommand(garageDoor: garageDoor)
let garageDoorLightOffCommand = GarageDoorLightOffCommand(garageDoor: garageDoor)
let garageDoorUpCommand = GarageDoorUpCommand(garageDoor: garageDoor)
let garageDoorDownCommand = GarageDoorDownCommand(garageDoor: garageDoor)
let garageDoorStopCommand = GarageDoorStopCommand(garageDoor: garageDoor)

print("-----------------------Light------------------------")
//开灯
remoteControl.setCommand(command: lightOnCommand)
remoteControl.buttonWasPressed()
//关灯
remoteControl.setCommand(command: lightOffCommand)
remoteControl.buttonWasPressed()

print("-----------------------GarageDoor------------------------")

remoteControl.setCommand(command: garageDoorLightOnCommand)
remoteControl.buttonWasPressed()
remoteControl.setCommand(command: garageDoorLightOffCommand)
remoteControl.buttonWasPressed()
remoteControl.setCommand(command: garageDoorUpCommand)
remoteControl.buttonWasPressed()
remoteControl.setCommand(command: garageDoorDownCommand)
remoteControl.buttonWasPressed()
remoteControl.setCommand(command: garageDoorStopCommand)
remoteControl.buttonWasPressed()

