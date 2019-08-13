//
//  MyAccountViewControllerTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class MyAccountViewControllerTests: XCTestCase {

    var myAccountVC: MyAccountViewController!
    
    let utility = UtilityMethods()
    
    override func setUp() {
        myAccountVC = MyAccountViewController()
        
        _ = myAccountVC.view
    }

    func test_WhenMyAccountHomeControllerLoaded_MyDetailsLabelShouldPresent() {
        let name = utility.findLabelsForView(view: myAccountVC.view, labelText: "My Account")
        
        XCTAssertNotNil(name)
        let email = utility.findLabelsForView(view: myAccountVC.view, labelText: "Email")
        
        XCTAssertNotNil(email)
        let state = utility.findLabelsForView(view: myAccountVC.view, labelText: "State")
        
        XCTAssertNotNil(state)
        let country = utility.findLabelsForView(view: myAccountVC.view, labelText: "Country")
        
        XCTAssertNotNil(country)
    }

}
