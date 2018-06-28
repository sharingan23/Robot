//
//  Robot.swift
//  Robot
//
//  Created by Vigneswaranathan Sugeethkumar on 26/06/2018.
//  Copyright © 2018 Vigneswaranathan Sugeethkumar. All rights reserved.
//

import Foundation

// Class Robot

class Robot {
    var name = ""
    var hp = 0
    var moveSpeed = 0
    var position : [Int]
    
    init (){
        hp = 100
        moveSpeed = 3
        position = [0,0]
    }
    
    func introduce() {
        print("Bonjour je m'apelle "+name+" . j'ai \(hp) points de vie et je me deplace à 3 cases par secondes. Je suis à la case de coordonnées(\(position[0]);\(position[1]))")
    }
    
}


