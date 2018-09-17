//
//  ControlCenter.swift
//  Pirate Fleet
//
//  Created by Jarrod Parkes on 9/2/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

struct GridLocation {
    let x: Int
    let y: Int
}

struct Ship {
    let length: Int
    let location: GridLocation
    let isVertical: Bool
}

struct Mine : _Mine_ {
    let location : GridLocation
    let explosionText : String
    
}

class ControlCenter {
    
    func addShipsAndMines(human: Human) {
        let mediumShip1 = Ship(length: 3, location: GridLocation(x:1, y:2),isVertical: false)
        human.addShipToGrid(mediumShip1)
        let mediumShip2 = Ship(length: 3, location: GridLocation(x:3, y:5),isVertical: true)
        human.addShipToGrid(mediumShip2)
        let smallShip = Ship(length: 2, location: GridLocation(x:0, y:0),isVertical: false)
        human.addShipToGrid(smallShip)
        let largeShip = Ship(length: 4, location: GridLocation(x:4, y:2),isVertical: true)
        human.addShipToGrid(largeShip)
        let xlargeShip = Ship(length: 5, location: GridLocation(x:7, y:1),isVertical: true)
        human.addShipToGrid(xlargeShip)
        
        let mine1 = Mine(location: GridLocation(x: 1, y: 4) , explosionText : "First Mine" )
        human.addMineToGrid(mine1)
        let mine2 = Mine(location: GridLocation(x: 6, y: 3) , explosionText : "Second Mine" )
        human.addMineToGrid(mine2)
    }
    
    func calculateFinalScore(gameStats: GameStats) -> Int {
        
        
        var finalScore: Int
        
        let enemyShipsSunk = 5 - gameStats.enemyShipsRemaining
        let guessPenalty = gameStats.guessPenalty
        let humanShipsRemaining = 5 - gameStats.humanShipsSunk
        let numberOfGuesses = gameStats.numberOfHitsOnEnemy + gameStats.numberOfMissesByHuman
        let shipBonus = gameStats.shipBonus
        let sinkBonus = gameStats.sinkBonus
        
        finalScore = (enemyShipsSunk * sinkBonus) + (humanShipsRemaining * shipBonus) - (numberOfGuesses * guessPenalty)
        
        print("the value of final score is \(finalScore)")
        
        return finalScore
        
      
    }
}

