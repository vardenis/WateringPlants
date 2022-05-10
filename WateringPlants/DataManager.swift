//
//  DataManager.swift
//  WateringPlants
//
//  Created by Денис on 10.05.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var plants:[Plant] =
    [
        Plant(name: "Лимон", wateringFrequency: 3, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 1)),
        Plant(name: "Роза", wateringFrequency: 2, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 9)),
        Plant(name: "Фикус", wateringFrequency: 3, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 8)),
        Plant(name: "Орхидея", wateringFrequency: 3, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 3)),
        Plant(name: "Толстянка", wateringFrequency: 5, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 2)),
        Plant(name: "Сансевиерия", wateringFrequency: 4, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 4)),
        Plant(name: "Red Lime", wateringFrequency: 3, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 1)),
        Plant(name: "Юкка", wateringFrequency: 3, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 2)),
        Plant(name: "Ананас", wateringFrequency: 3, dateOfLastWatering: gettingDate(year: 2022, month: 5, day: 3))
        
    ]
    
    private init() {}
}


extension DataManager {
   static func gettingDate(year: Int, month: Int, day: Int) -> Date {
        let calendar = Calendar.current
        let dateComponents = DateComponents(calendar: calendar, year: year, month: month, day: day)

        let date = calendar.date(from: dateComponents) ?? Date()
        
        return date
    }
}
