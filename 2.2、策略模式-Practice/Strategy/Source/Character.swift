//
//  Character.swift
//  Strategy
//
//  Created by Honey on 2019/3/9.
//  Copyright © 2019 童世超. All rights reserved.
//

import Foundation

class Character {
    var weapon: WeaponBehavior?
    
    func setWeapon(weapon: WeaponBehavior) {
        self.weapon = weapon
    }

    func fight() {
        weapon?.useWeapon()
    }
}

class King: Character {
    override func fight() {
        super.fight()
        if let weapon = weapon {
            print("King的武器是\(weapon)")
        } else {
            print("King没有武器")
        }
    }
}

class Queue: Character {
    override func fight() {
        super.fight()
        if let weapon = weapon {
            print("Queue的武器是\(weapon)")
        } else {
            print("Queue没有武器")
        }
    }
}

class Troll: Character {
    override func fight() {
        super.fight()
        if let weapon = weapon {
            print("Troll的武器是\(weapon)")
        } else {
            print("Troll没有武器")
        }
    }
}

class Knight: Character {
    override func fight() {
        super.fight()
        if let weapon = weapon {
            print("Knight的武器是\(weapon)")
        } else {
            print("Knight没有武器")
        }
    }
}

