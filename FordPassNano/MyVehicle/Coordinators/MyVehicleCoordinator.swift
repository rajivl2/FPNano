//
//  MyVehicleCoordinator.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import Foundation
import UIKit

class MyVehicleCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let myVehicleVC = MyVehicleViewController()
        myVehicleVC.delegate = self
        self.navigationController.pushViewController(myVehicleVC, animated: true)
    }
}

extension MyVehicleCoordinator: MyVehicleControllerDelegate{
    func myVehicleDetailsButtonTapped() {
        let myVehicleDetailsVC = MyVehicleDetailsViewController()
        self.navigationController.pushViewController(myVehicleDetailsVC, animated: true)
    }
}
