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
    var position = (x: 0, y: 0)
    var distance = false

// Constructeur
    
    init (){
        hp = 100
        moveSpeed = 3
        position.0 = 0
        position.1 = 0
        distance = true
    }
    
    init (name : String, hp : Int, position: (Int,Int), moveSpeed : Int){
        
        self.name = name
        self.hp = hp
        self.position = position
        self.moveSpeed = moveSpeed
        
    }
// fonction presenter
    func introduce() {
        print("Bonjour je m'apelle "+name+" . j'ai \(hp) points de vie et je me deplace à \(moveSpeed) cases par secondes. Je suis à la case de coordonnées(\(position.0);\(position.1))")
    }

// Fonction se deplacer
    
   
    
    func move(pos: Int, dir: Directions) {
        
       switch dir {
        
        case .Left:
            
            position.0.self = position.0 - pos
        
        
        case .Right:
            position.1.self = position.0 + pos
        
        
        case .Top:
            position.1.self = position.1 + pos
        
        
        case .Dawn:
            
            position.1.self = position.1 - pos
            
        }
    
    }
    
// Move hazard
    
   func seDeplacerAleatoirement(coup : Int) {
        var direct = directions
        
        i = 0
        
        while i < coup {
            let randInt = ((Int(arc4random() % 7)) - 3)
            let randDir = (Int(arc4random() % 5))
            
            if randDir == 1 {
                direct = .Left
            }
            
            if randDir == 2 {
                direct = .Right
            }
            
            if randDir == 3 {
                direct = .Top
            }
            
            if randDir == 4 {
                direct = .Dawn
            }
        
            
            move(pos: randInt, dir : direct)
          i += 1
         }
        
        
   
    }
    
}


