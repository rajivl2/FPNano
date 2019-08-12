//
//  HelpSectionCoordinator.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import Foundation
import UIKit

class HelpSectionCoordinator: Coordinator{
    
    var childCoordinators: [Coordinator] = []
    
    
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let helpVC = HelpTopicsViewController()
        helpVC.delegate = self
        self.navigationController.pushViewController(helpVC, animated: true)
    }
}

extension HelpSectionCoordinator: HelpTopicsViewControllerDelegate{
    func vehicleDetailsButtonTapped() {
        let vehicleDetailsVC = MyVehicleDetailsViewController()
        self.navigationController.pushViewController(vehicleDetailsVC, animated: true)
    }
    
    func roadSideAssistanceButtonTapped() {
        let roadSideAssVC = RoadSideAssistanceViewController()
        self.navigationController.pushViewController(roadSideAssVC, animated: true)
    }
}
