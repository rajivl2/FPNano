//
//  HomeViewControllerTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class HomeViewControllerTests: XCTestCase {

    var homeVC: HomeViewController!
    var homeCoordinator: HomeCoordinator!
    var mockNavigationController: MockNavigationController!
    
    let utility = UtilityMethods()
    
    override func setUp() {
        
        homeVC = HomeViewController()
        
        mockNavigationController = MockNavigationController()
        homeCoordinator = HomeCoordinator(navController: mockNavigationController)
        homeVC.delegate = homeCoordinator
        
        _ = homeVC.view
    }
    
    func test_WhenHomeControllerLoaded_ThenOneLabelAndThreeButtonPresent(){
        
        let appName = utility.findLabelsForView(view: homeVC.view, labelText: "FordPass Nano")
        
        XCTAssertNotNil(appName)
        
        let myVehicleButton = utility.findButtonsForView(view: homeVC.view, buttonTittle: "My Vehicle")
        
        XCTAssertNotNil(myVehicleButton)
        
        let myAccountButton = utility.findButtonsForView(view: homeVC.view, buttonTittle: "My Account")
        
        XCTAssertNotNil(myAccountButton)
        
        let helpButton = utility.findButtonsForView(view: homeVC.view, buttonTittle: "Need Help?")
        
        XCTAssertNotNil(helpButton)
        
    }
    
    func test_GivenHomeViewControllerWhenButtonTapped_ThenNavigateToCurrencyViewController(){
        
        let myVehicleButton = utility.findButtonsForView(view: homeVC.view, buttonTittle: "My Vehicle")
        myVehicleButton?.sendActions(for: .touchUpInside)
        
        XCTAssertNotNil(mockNavigationController.topViewController as? MyVehicleViewController)
        
        let myAccountButton = utility.findButtonsForView(view: homeVC.view, buttonTittle: "My Account")
        myAccountButton?.sendActions(for: .touchUpInside)
        
        XCTAssertNotNil(mockNavigationController.topViewController as? MyAccountViewController)
        
        let helpButton = utility.findButtonsForView(view: homeVC.view, buttonTittle: "My Account")
        helpButton?.sendActions(for: .touchUpInside)
        
        XCTAssertNotNil(mockNavigationController.topViewController as? MyAccountViewController)
        
        
    }

}
