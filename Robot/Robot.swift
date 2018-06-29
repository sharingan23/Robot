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

// Constructeur
    
    init (){
        hp = 100
        moveSpeed = 3
        position = [0,0]
    }
    
    init (name : String, hp : Int , position : [Int], moveSpeed : Int){
        
        self.name = name
        self.hp = hp
        self.position = position
        self.moveSpeed = moveSpeed
        
    }
// fonction presenter
    func introduce() {
        print("Bonjour je m'apelle "+name+" . j'ai \(hp) points de vie et je me deplace à \(moveSpeed) cases par secondes. Je suis à la case de coordonnées(\(position[0]);\(position[1]))")
    }

// Fonction se deplacer
    
    func move(pos: Int, dir :String) {
        
        if dir == "gauche" {
            position[0].self = position[0] - pos
        }
        
        if dir == "droite" {
            position[0].self = position[0] + pos
        }
        
        if dir == "haut" {
            position[1].self = position[1] + pos
        }
        
        if dir == "bas" {
            
            position[1].self = position[1] - pos
        }
    }
    
// Move hazard
    
    func seDeplacerAleatoirement(coup : Int) {
        let direction = ["gauche", "droite", "haut", "bas"]
        
        i = 0
        
        while i < coup {
            let randInt = ((Int(arc4random() % 7)) - 3)
            let index = Int(arc4random_uniform(UInt32(direction.count)))
            move(pos: randInt, dir: direction[index])
            i += 1
            }
        
        
    }
    
}


