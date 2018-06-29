//
//  Méchant.swift
//  Robot
//
//  Created by Vigneswaranathan Sugeethkumar on 29/06/2018.
//  Copyright © 2018 Vigneswaranathan Sugeethkumar. All rights reserved.
//

import Foundation

class Méchant : Robot {

    var damage = 0
    var distance = false
    
    
    
    override init() {
        super.init()
        damage = 20
        distance = true
    }


    func attaquer (distance : Bool, robot : Robot) {
        if distance {
            robot.hp = robot.hp - damage
            
        } else {
            robot.hp = robot.hp - (damage*2)
        }
    }
}
