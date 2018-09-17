//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        var storeInscription = [String]()
        var storeItem = [UDItem]()
        var num = 0
        
        
        for item in inventory {
            if let inscription = item.inscription {
                storeItem.append(item)
                storeInscription.append(inscription)
            }
            else {
                print("nil")
            }
        }
        
        
        for currentInscription in storeInscription {
            if !(currentInscription.containsString("THE ETERNAL STAR")) {
                storeItem.removeAtIndex(num)
            }
            else {
                num += 1
            }
        }
        
        
        if storeItem.count != 0 {
            return storeItem[0]
        } else {
            return nil
        }
}
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"