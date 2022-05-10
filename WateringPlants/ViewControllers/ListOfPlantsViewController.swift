//
//  ListOfPlantsViewController.swift
//  WateringPlants
//
//  Created by Денис on 09.05.2022.
//

import UIKit

class ListOfPlantsViewController: UITableViewController {
    
    var plants: [Plant] = []
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 30))

        let label = UILabel()
        label.frame = CGRect.init(x: 20, y: 5, width: headerView.frame.width, height: headerView.frame.height)
        label.text = "Каталог растений"
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        
        headerView.addSubview(label)

        return headerView
    }
  
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        plants.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "plantID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let plant = plants[indexPath.row]
        
        content.text = plant.name
        content.secondaryText = plant.watering

        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {        
        guard let informationPlantVC = segue.destination as? PlantDetailsViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        
        let elementNumber = indexPath.row
        informationPlantVC.elementNumber = elementNumber
        informationPlantVC.plant = plants[elementNumber]
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let informationPlantVC = segue.source as? PlantDetailsViewController else {return}
        
        plants = updatePlant(elementNumber: informationPlantVC.elementNumber)
        
    }
}

extension ListOfPlantsViewController {
    private func updatePlant(elementNumber: Int) -> [Plant] {
        let dataManager = DataManager.shared
        dataManager.plants[elementNumber].dateOfLastWatering = Date()
        let plants = dataManager.plants
        return plants
    }
}
