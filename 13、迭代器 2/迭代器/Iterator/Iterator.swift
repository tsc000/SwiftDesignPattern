//
//  Iterator.swift
//  迭代器
//
//  Created by Honey on 2019/3/28.
//  Copyright © 2019 Honey. All rights reserved.
//

import Foundation

protocol Iterator {
    func hasNext() -> Bool
    func next() -> MenuItem
}
