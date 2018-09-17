//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var storeName = [String]()
        var countCurrentName = 0
        var countLongestName = 0
        var longestName = ""
        
        for item in inventory {
            storeName.append(item.name)
        }
        
        for currentName in storeName {
            
            countCurrentName = currentName.characters.count
            
            if countCurrentName > countLongestName {
                countLongestName = countCurrentName
                longestName = currentName
            }
        }
        
        var reverseLongestName = String(longestName.characters.reverse())
        
        return reverseLongestName
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"