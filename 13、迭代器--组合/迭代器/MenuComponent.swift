//
//  File.swift
//  迭代器
//
//  Created by Honey on 2019/4/1.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

protocol MenuComponent {
    func getName() -> String
    func getDescription() -> String
    func isVegeterian() -> Bool
    func getPrice() -> Double
    func add(component: MenuComponent)
    func remove(component: MenuComponent)
    func getChild(at index: Int) -> MenuComponent?
    func customPrint()
}

extension MenuComponent {
    func getName() -> String {
        fatalError("need to override")
    }

    func getDescription() -> String {
        fatalError("need to override")
    }

    func isVegeterian() -> Bool {
        fatalError("need to override")
    }

    func getPrice() -> Double {
        fatalError("need to override")
    }

    func add(component: MenuComponent) {
        fatalError("need to override")
    }

    func remove(component: MenuComponent) {
        fatalError("need to override")
    }

    func getChild(at index: Int) -> MenuComponent? {
        fatalError("need to override")
    }

    func customPrint() {
        fatalError("need to override")
    }
}
