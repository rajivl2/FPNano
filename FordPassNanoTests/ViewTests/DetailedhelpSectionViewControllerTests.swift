//
//  DetailedhelpSectionViewControllerTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class DetailedhelpSectionViewControllerTests: XCTestCase {

    var detailedHelpVC: DetailedHelpSectionViewController!
    let utility = UtilityMethods()
    
    override func setUp() {
        
    }

    func test_GivenRoadSideAssistanceSelected_WhenDetailedHelpSectionViewControllerSelected_ThenOneLabelandOneTextViewShouldDisplay() {
        detailedHelpVC = DetailedHelpSectionViewController(isRoadSideAssistanceTapped: true)
        
        XCTAssertNotNil(utility.findUILabelWithAccessibilityIdentifierForView(view: detailedHelpVC.view, accIdentifier: "Screen Label"))
        
        XCTAssertEqual(utility.findUILabelWithAccessibilityIdentifierForView(view: detailedHelpVC.view, accIdentifier: "Screen Label")?.text, "Road Side Assistance")
        
        XCTAssertNotNil(utility.findUITextViewWithAccessibilityIdentifierForView(view: detailedHelpVC.view, accIdentifier: "HelpSection Text View"))
    }
    
    func test_GivenVehicleDetailsSelected_WhenDetailedHelpSectionViewControllerSelected_ThenOneLabelandOneTextViewShouldDisplay() {
        detailedHelpVC = DetailedHelpSectionViewController(isRoadSideAssistanceTapped: false)
        
        XCTAssertNotNil(utility.findUILabelWithAccessibilityIdentifierForView(view: detailedHelpVC.view, accIdentifier: "Screen Label"))
        
        XCTAssertEqual(utility.findUILabelWithAccessibilityIdentifierForView(view: detailedHelpVC.view, accIdentifier: "Screen Label")?.text, "About Your Vehicle")
        
        XCTAssertNotNil(utility.findUITextViewWithAccessibilityIdentifierForView(view: detailedHelpVC.view, accIdentifier: "HelpSection Text View"))
    }


}
