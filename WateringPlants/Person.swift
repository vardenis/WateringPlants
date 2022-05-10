//
//  Person.swift
//  WateringPlants
//
//  Created by Денис on 09.05.2022.
//

import Foundation

struct Person {
    let surname: String
    let name: String
    let contribution: String
    
    var fullName: String {
        "\(surname) \(name)".trimmingCharacters(in: .whitespaces)
    }
    
    static func getAuthorList() -> [Person] {
        [
          Person(surname: "Вареников", name: "Денис", contribution: "Рабочая лошадка"),
          Person(surname: "Ефимов", name: "Алексей", contribution: "Учитель"),
          Person(surname: "Бруйко", name: "Евгения", contribution: "Идейный вдохновитель"),
          Person(surname: "", name: "Мариус", contribution: "Кот который урчит"),
          Person(surname: "", name: "Юстина", contribution: "Постоянно мешающая кошка")
        ]
    }
    
}
