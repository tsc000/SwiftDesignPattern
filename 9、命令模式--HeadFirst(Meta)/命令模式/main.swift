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
let ceilingFanLowCommand = CeilingFanLowCommand(ceilingFan: ceilingFan)
let ceilingFanMediumCommand = CeilingFanMediumCommand(ceilingFan: ceilingFan)
let ceilingFanHighCommand = CeilingFanHighCommand(ceilingFan: ceilingFan)

//车库
let garageDoorUpCommand = GarageDoorUpCommand(garageDoor: garageDoor)
let garageDoorDownCommand = GarageDoorDownCommand(garageDoor: garageDoor)
//音响
let stereoOnCommand = StereoOnCommand(stereo: stereo)
let stereoOffCommand = StereoOffCommand(stereo: stereo)


let macroOnCommand = MacroCommand(commands: [lightOnCommand, kitchenLightOnCommand, garageDoorUpCommand, stereoOnCommand, ceilingFanLowCommand])
let macroOffCommand = MacroCommand(commands: [lightOffCommand, kitchenLightOffCommand, garageDoorDownCommand, stereoOffCommand, ceilingFanOffCommand])

remoteControl.setCommandAt(0, onCommand: macroOnCommand, offCommand: macroOffCommand)
print("-------------on-----------")
remoteControl.onButtonDidPressedAt(0)
print("-------------off-----------")
remoteControl.offButtonDidPressed(0)
print("-------------undo-----------")
remoteControl.undoButtonDidPressed()






