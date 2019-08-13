//
//  HelpSectionCoordinatorTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class HelpSectionCoordinatorTests: XCTestCase {
    
    var helpCoordinator: HelpSectionCoordinator!
    var navController: MockNavigationController!
    
    override func setUp() {
        navController = MockNavigationController()
        helpCoordinator = HelpSectionCoordinator(navController: navController)
    }
    
    func test_WhenMyAccountCoordinatorStartMethodCalled_ThenMyAccountViewControllerShouldLoad() {
        helpCoordinator.start()
        XCTAssert(self.navController.topViewController?.isKind(of: HelpTopicsViewController.self) ?? false)
    }
    
    func test_WhenRoadSideAssistanceButtonTappedCalled_ThenShouldShowMyVehicleDetailsViewController(){
        helpCoordinator.roadSideAssistanceButtonTapped(isRoadSideAssistanceSelected: true)
        XCTAssert(self.navController.topViewController?.isKind(of: DetailedHelpSectionViewController.self) ?? false)
    }
    
    func test_WhenVehicleDetailsButtonTappedCalled_ThenShouldShowMyVehicleDetailsViewController(){
        helpCoordinator.roadSideAssistanceButtonTapped(isRoadSideAssistanceSelected: false)
        XCTAssert(self.navController.topViewController?.isKind(of: DetailedHelpSectionViewController.self) ?? false)
    }
}
