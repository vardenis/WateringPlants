//
//  PlantDetailsViewController.swift
//  WateringPlants
//
//  Created by Денис on 10.05.2022.
//

import UIKit

class PlantDetailsViewController: UIViewController {
    

    @IBOutlet var name: UILabel!
    @IBOutlet var dateOfLastWatering: UILabel!
    @IBOutlet var textWatering: UILabel!
    
    
    var elementNumber: Int!
    var plant: Plant!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = plant.name
        let dateWatering = Calendar.current.dateComponents([.year, .month, .day], from: plant.dateOfLastWatering)
        
        dateOfLastWatering.text = "Дата полива: \(String(describing: dateWatering.day ?? 0)).\(String(describing: dateWatering.month ?? 0)).\(String(describing: dateWatering.year ?? 0))"
        
        textWatering.text = plant.watering
    }

    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
}
