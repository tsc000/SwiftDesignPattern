//
//  Menu.swift
//  迭代器
//
//  Created by Honey on 2019/4/1.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

class Menu: MenuComponent {
    var components: [MenuComponent] = []
    var name: String
    var description: String

    init(name: String, description: String) {
        (self.name, self.description) = (name, description)
    }

    func add(component: MenuComponent) {
        components.append(component)
    }

    func remove(component: MenuComponent) {
        components = components.filter { (item) -> Bool in
            component.getName() == item.getName()
        }
    }

    func getChild(at index: Int) -> MenuComponent? {
        guard components.isEmpty else { return nil }
        return index >= components.count ? nil : components[index]
    }

    func getName() -> String {
        return name
    }

    func getDescription() -> String {
        return description
    }

    func customPrint() {
        print("------------------打印菜单--------------------")
        print("\n\(getName())")
        print("\n\(getDescription())")
//        print("----------------------------")

        var iterator = components.makeIterator()
        while let e = iterator.next() {
            e.customPrint()
        }
    }
}
