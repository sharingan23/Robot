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
    
    
    
    override init() {
        super.init()
        damage = 20
    }


    func attaquer (robot : Robot) {
        if robot.distance {
            robot.hp = robot.hp - damage
            
        } else {
            robot.hp = robot.hp - (damage*2)
        }
    }
}


