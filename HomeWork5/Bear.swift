//
//  Bear.swift
//  HomeWork5
//
//  Created by Андрей on 8.08.21.
//

import Foundation

class Bear{
    var nameBeer : String
    var madeIn : String
    var prace : Double
    var bottleVolume : Double
    
    init(nameBeer : String, madeIn : String, prace : Double, bottleVolume : Double) {
        self.nameBeer = nameBeer
        self.madeIn = madeIn
        self.prace = prace
        self.bottleVolume = bottleVolume
        
    }
    
    func infoBear() -> String {
        let info = nameBeer + "," + madeIn + "," + String(prace) + "," + String(bottleVolume)
        return info
    }
//
//    static func heinieken() ->Bear {
//        return Bear(nameBeer: "Heinieken", madeIn: "Нидерланды", prace: 2.5, bottleVolume: 0.5)
//    }
//    static func tuborg() ->Bear {
//        return Bear(nameBeer: "Tuborg", madeIn: "Россия", prace: 2.0, bottleVolume: 1.0)
//    }
    
    
}
func heinieken() ->Bear {
    return Bear(nameBeer: "Heinieken", madeIn: "Нидерланды", prace: 2.5, bottleVolume: 0.5)
}
func tuborg() ->Bear {
    return Bear(nameBeer: "Tuborg", madeIn: "Россия", prace: 2.0, bottleVolume: 1.0)
}
