//
//  MyVehicleCoordinatorTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class MyVehicleCoordinatorTests: XCTestCase {

    var myVehicleCoordinator: MyVehicleCoordinator!
    var navController: MockNavigationController!
    
    override func setUp() {
        navController = MockNavigationController()
        myVehicleCoordinator = MyVehicleCoordinator(navController: navController)
    }
    
    func test_WhenMyVehicleCoordinatorStartMethodCalled_ThenMyVehicleViewControllerShouldLoad() {
        myVehicleCoordinator.start()
        XCTAssert(self.navController.topViewController?.isKind(of: MyVehicleViewController.self) ?? false)
    }
}
