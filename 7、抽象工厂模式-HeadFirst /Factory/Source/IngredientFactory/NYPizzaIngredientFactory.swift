//
//  NYPizzaIngredientFactory.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/14.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

//NewYork原料工厂
class NYPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> DoughProtocol { return ThickCrushDough() }

    func createSauce() -> SauceProtocol { return MarinaraSauce() }

    func createCheese() -> CheeseProtocol { return RegginaoCheese() }

    func createVeggies() -> [VeggiesProtocol] { return [Garlic(), Onion(), Mushroom(), RedPepper()] }

    func createPepperoni() -> PepperoniProtocol { return SlicedPepperoni() }

    func createClams() -> ClamsProtocol { return FreshClam() }
}
