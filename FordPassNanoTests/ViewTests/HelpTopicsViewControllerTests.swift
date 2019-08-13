//
//  HelpTopicsViewControllerTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class HelpTopicsViewControllerTests: XCTestCase {
    
    var mockHelpVC: MockHelpTopicsViewController!
    var helpCoordinator: HelpSectionCoordinator!
    var mocknavigationcontroller: MockNavigationController!
    let utility = UtilityMethods()
    
    override func setUp() {
        mockHelpVC = MockHelpTopicsViewController()
        mocknavigationcontroller = MockNavigationController()
        helpCoordinator = HelpSectionCoordinator(navController: mocknavigationcontroller)
        mockHelpVC.delegate = helpCoordinator
        _ = mockHelpVC.view
    }
    
    func test_WhenMyAccountHomeControllerLoaded_MyDetailsLabelShouldPresent() {
        let name = utility.findLabelsForView(view: mockHelpVC.view, labelText: "Help Topics")
        
        XCTAssertNotNil(name)
        
        let roadSideAssistanceButton = utility.findButtonsForView(view: mockHelpVC.view, buttonTittle: "Road Side Assistance")
        
        XCTAssertNotNil(roadSideAssistanceButton)
        
        let vehicleDetailsButton = utility.findButtonsForView(view: mockHelpVC.view, buttonTittle: "Vehicle Details")
        
        XCTAssertNotNil(vehicleDetailsButton)
    }
    
    func test_WhenRoadSideAssistanceButtonIsTapped_ThenDetailedHelpSectionViewControllerShouldpresent(){
        mockHelpVC.roadSideAssistanceButtonTapped()
        
        XCTAssert(self.mocknavigationcontroller.topViewController?.isKind(of: DetailedHelpSectionViewController.self) ?? false)
    }
    
    func test_WhenVehicleDetailsButtonIsTapped_ThenDetailedHelpSectionViewControllerShouldpresent(){
        mockHelpVC.vehicleDetailsButtonTapped()
        
        XCTAssert(self.mocknavigationcontroller.topViewController?.isKind(of: DetailedHelpSectionViewController.self) ?? false)
    }
    
}
