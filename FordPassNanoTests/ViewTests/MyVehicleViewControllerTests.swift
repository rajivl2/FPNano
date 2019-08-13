//
//  MyVehicleViewControllerTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class MyVehicleViewControllerTests: XCTestCase {

    var mockMyVehicleVC: MockMyVehicleViewController!
    var myVehicleCoordinator: MyVehicleCoordinator!
    var mockNavigationController: MockNavigationController!
    
    let utility = UtilityMethods()
    
    override func setUp() {
        mockMyVehicleVC = MockMyVehicleViewController()
        
        mockNavigationController = MockNavigationController()
        myVehicleCoordinator = MyVehicleCoordinator(navController: mockNavigationController)
        mockMyVehicleVC.delegate = myVehicleCoordinator
        
        _ = mockMyVehicleVC.view
    }

    func test_WhenMyVehicleViewControllerLoaded_ThenTwoLableOneImageViewAndOneButtonshouldPresent() {
        
        let appName = utility.findLabelsForView(view: mockMyVehicleVC.view, labelText: "My Vehicle")
        
        XCTAssertNotNil(appName)
        
        let vehicleName = utility.findLabelsForView(view: mockMyVehicleVC.view, labelText: "Ford F-150")
        
        XCTAssertNotNil(vehicleName)
        
        let myVehicleButton = utility.findButtonsForView(view: mockMyVehicleVC.view, buttonTittle: "Vehicle Details")
        
        XCTAssertNotNil(myVehicleButton)
        
        mockMyVehicleVC.myVehicleDetailsButtonTapped()
        
        XCTAssert(self.mockNavigationController.topViewController?.isKind(of: MyVehicleDetailsViewController.self) ?? false)
        
    }

}
