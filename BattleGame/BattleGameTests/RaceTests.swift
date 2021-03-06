//
//  RaceTests.swift
//  BattleGameTests
//
//  Created by Jérôme Guèrin on 07/07/2020.
//  Copyright © 2020 Jérôme Guèrin. All rights reserved.
//

import XCTest
@testable import BattleGame

class RaceTests: XCTestCase {
    func testInitOrk_WhenEverythingItsOK_ShouldHaveOrkFilled() {
        let ork = Ork("ORKI")
        ork.weapon = Weapon.list[0]
        XCTAssertTrue(ork.name == "ORKI")
        XCTAssertTrue(ork.canHeal == false)
        XCTAssertTrue(ork.canAttack == true)
        XCTAssertTrue(ork.lifePoint == 15)
        XCTAssertTrue(ork.weapon.name == "mace")
        XCTAssertTrue(ork.weapon.healPoint == 0)
        XCTAssertTrue(ork.weapon.damagePoint == 1)
    }
    
    func testInitKnight_WhenEverythingItsOK_ShouldHaveOrkFilled() {
        let knight = Knight("KNOCKI")
        knight.weapon = Weapon.list[1]
        XCTAssertTrue(knight.name == "KNOCKI")
        XCTAssertTrue(knight.canHeal == false)
        XCTAssertTrue(knight.canAttack == true)
        XCTAssertTrue(knight.lifePoint == 10)
        XCTAssertTrue(knight.weapon.name == "sword")
        XCTAssertTrue(knight.weapon.healPoint == 0)
        XCTAssertTrue(knight.weapon.damagePoint == 2)
    }
    
    func testInitWizard_WhenEverythingItsOK_ShouldHaveOrkFilled() {
        let wizard = Wizard("WIZZI")
        wizard.weapon = Weapon.list[2]
        XCTAssertTrue(wizard.name == "WIZZI")
        XCTAssertTrue(wizard.canHeal == true)
        XCTAssertTrue(wizard.canAttack == false)
        XCTAssertTrue(wizard.lifePoint == 12)
        XCTAssertTrue(wizard.weapon.name == "rod")
        XCTAssertTrue(wizard.weapon.healPoint == 1)
        XCTAssertTrue(wizard.weapon.damagePoint == 0)
    }
}
