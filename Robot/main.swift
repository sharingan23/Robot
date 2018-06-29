//
//  main.swift
//  Robot
//
//  Created by Vigneswaranathan Sugeethkumar on 26/06/2018.
//  Copyright © 2018 Vigneswaranathan Sugeethkumar. All rights reserved.
//

import Foundation

// Creation de Robot

var j23 = Robot()
j23.name = "j23"

var s23 = Robot()
s23.name = "s23"

// les robots se presentent

s23.introduce()

j23.introduce()

// Creation de Robot

var j5 = Robot()
j5.name = "j5"

var s5 = Robot()
s5.name = "s5"

var manyRobot : [Robot]

// Array robot

manyRobot = [j23,j5,s23,s5]

// boucle robot presentation

var i = 0
var j = manyRobot.count


while i < j {
    manyRobot[i].introduce()
i+=1
}

// move robots

s23.move(pos: 1,dir: "droite")
s23.introduce()

s23.seDeplacerAleatoirement(coup: 4)
s23.introduce()

var cr7 = Robot (name: "Ronaldo", hp : 80, position : [0, 7], moveSpeed : 2)

cr7.introduce()

// Creation du robot mechant

var darkRobot = Méchant()

// Attaque du robot mechant sur le robot Cr7
darkRobot.attaquer(distance: true, robot: cr7)

cr7.introduce()





