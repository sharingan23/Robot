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
