//
//  ChicagoIngredientFactory.swift
//  Factory
//
//  Created by zilly.MAC009 on 2019/3/14.
//  Copyright © 2019 zilly.MAC009. All rights reserved.
//

import Foundation

class ChicagoIngredientFactory: PizzaIngredientFactory {
    func createDough() -> DoughProtocol { return ThickCrushDough() }

    func createSauce() -> SauceProtocol { return PlumTomatoSauce() }

    func createCheese() -> CheeseProtocol { return Mozzarella() }

    func createVeggies() -> [VeggiesProtocol] { return [Spinach(), BlackOlives(), EggPlant()] }

    func createPepperoni() -> PepperoniProtocol { return SlicedPepperoni() }

    func createClams() -> ClamsProtocol { return FrozenClams() }
}
