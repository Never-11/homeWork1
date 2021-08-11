//
//  BearBar.swift
//  HomeWork5
//
//  Created by Андрей on 8.08.21.
//

import Foundation


class BearBar  {
    var arrayBear : [Bear] = []
    
    func addBeerToWarehouse(bear:Bear){
        arrayBear.append(bear)
    }
    
    func pourBeerToCustomer() -> Bool {
        if (arrayBear.isEmpty){
            return false
        } else{
            arrayBear.removeLast()
            return true
        }
    }
    
    func closeTheBar() {
        arrayBear.removeAll()
    }
    
    func writeStatistics() -> String {
        var infoAllBear = ""
        for bear in arrayBear{
            infoAllBear += bear.infoBear()
        }
        return infoAllBear
    }
}


