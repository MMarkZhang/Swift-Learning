//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty{
            return true
        }
        else if shuffle.characters.count != s1.characters.count + s2.characters.count{
                return false
            }
            
            var indexOfS1 = s1.startIndex
            var indexOfS2 = s2.startIndex
            for c in shuffle.characters {
                if indexOfS1 != s1.endIndex && c == s1[indexOfS1] {
                    indexOfS1 = indexOfS1.successor()
                } else if indexOfS2 != s2.endIndex && c == s2[indexOfS2] {
                    indexOfS2 = indexOfS2.successor()
                } else {
                    return false
                }
            }
            return true
        }
}


