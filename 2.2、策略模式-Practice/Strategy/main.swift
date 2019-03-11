//
//  main.swift
//  Strategy
//
//  Created by Honey on 2019/3/9.
//  Copyright © 2019 童世超. All rights reserved.
//

import Foundation

let sword = SwordBehavior()
let knife = KnifeBehavior()
let bowAndArrow = BowAndArrowBehavior()
let axe = AxeBehavior()

let king = King()
//king.setWeapon(weapon: sword)
king.fight()

let queue = Queue()
queue.setWeapon(weapon: knife)
queue.fight()

let troll = Troll()
troll.setWeapon(weapon: bowAndArrow)
troll.fight()

let knight = Knight()
knight.setWeapon(weapon: axe)
knight.fight()
