//
//  WeaponBehavior.swift
//  Strategy
//
//  Created by Honey on 2019/3/9.
//  Copyright © 2019 童世超. All rights reserved.
//

import Foundation

protocol WeaponBehavior {
    func useWeapon()
}

extension WeaponBehavior {
    func useWeapon() {
        print("这是默认的Weapon--Nothing")
    }
}

class KnifeBehavior: WeaponBehavior {
    func useWeapon() {
        print("武器是Knife")
    }
}

class BowAndArrowBehavior: WeaponBehavior {
    func useWeapon() {
        print("武器是BowAndArrow")
    }
}

class AxeBehavior: WeaponBehavior {
    func useWeapon() {
        print("武器是Axe")
    }
}

class SwordBehavior: WeaponBehavior {
    func useWeapon() {
        print("武器是Sword")
    }
}
