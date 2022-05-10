//
//  Plant.swift
//  WateringPlants
//
//  Created by Денис on 09.05.2022.
//

import Foundation

struct Plant {
    let name: String
    let wateringFrequency: Int
    var dateOfLastWatering: Date
    
    var daysBeforeWatering: Int {
        let daysHavePassed: Int = Calendar.current.dateComponents([.day], from: dateOfLastWatering, to: Date()).day ?? 0
        
        var days = wateringFrequency - daysHavePassed
        
        if days < 0 {days = 0}
        
        return days
    }
    
    var watering: String {
        if daysBeforeWatering == 0 {return "Необходим полив растения"}
        else {return "Дней до полива растения: \(daysBeforeWatering)"}
    }
}


extension Plant {
    static func getPlantList() -> [Plant] {
        DataManager.shared.plants
    }
}
