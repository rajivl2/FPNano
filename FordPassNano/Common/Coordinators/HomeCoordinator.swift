//
//  HomeCoordinator.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinators: [Coordinator] = []
    
    var myVehicleCoordinator : MyVehicleCoordinator!
    var myAccountCoordinator : MyAccountCoordinator!
    var helpNeededCoordinator: HelpSectionCoordinator!
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let homeVC = HomeViewController()
        homeVC.delegate = self
        self.navigationController.pushViewController(homeVC, animated: true)
    }
}

extension HomeCoordinator: HomeViewControllerDelegate{
    func myVehicleButtonTapped() {
        myVehicleCoordinator = MyVehicleCoordinator(navController: navigationController)
        startChildCoordinator(coordinator: myVehicleCoordinator)
    }
    
    func myAccountButtonTapped() {
        myAccountCoordinator = MyAccountCoordinator(navController: navigationController)
        startChildCoordinator(coordinator: myAccountCoordinator)
    }
    
    func needHelpButtonTapped() {
        helpNeededCoordinator =  HelpSectionCoordinator(navController: navigationController)
        startChildCoordinator(coordinator: helpNeededCoordinator)
    }
    
    func startChildCoordinator(coordinator: Coordinator){
        childCoordinators.removeAll()
        childCoordinators.append(coordinator)
        coordinator.start()
    }
    
}
