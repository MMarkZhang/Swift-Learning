//
//  RobotTurningInstructions.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/5/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func randomlyRotateRightOrLeft(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        if randomNumber == 1 {
         robot.rotateLeft()
         }
        else{
       robot.rotateRight()
        }


    }


        // Step 1.2
        // TODO: Write an if statement that randomly calls either robot.rotateRight() or robot.rotateLeft() (based on the value of the randomNumber constant)
//    }
    
    func continueStraightOrRotate(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        if randomNumber == 1{
        robot.move()
         }
       else {
       randomlyRotateRightOrLeft(robot)
        }


}
    func turnTowardClearPath(robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        
        // Step 3.1
        // TODO: Tell the robot which way to turn toward the clear path. There are four cases where the robot should rotate to the right (the first two have been done for you--uncomment the code below). Write the remaining two cases where the robot should rotate to the right. For all other cases, the robot should rotate to the left.
        if robot.direction == .Left && wallInfo.down {
            robot.rotateRight()
        } else if robot.direction == .Up && wallInfo.left {
            robot.rotateRight()
        }
        else if robot.direction == .Right && wallInfo.up {
            robot.rotateRight()
        }
        else if robot.direction == .Down && wallInfo.right {
            robot.rotateRight()
        }
        else {
            robot.rotateLeft()
        }


 }
}
