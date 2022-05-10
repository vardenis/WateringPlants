//
//  TabBarViewController.swift
//  WateringPlants
//
//  Created by Денис on 10.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers()
    }
    

    private func setupViewControllers() {
        let plants = Plant.getPlantList()
        let plantListVC = viewControllers?.first as! ListOfPlantsViewController
        //let sectionVC = viewControllers?.last as! SectionTableViewController
        
        plantListVC.plants = plants
        //sectionVC.persons = persons
    }

}
