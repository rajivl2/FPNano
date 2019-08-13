//
//  MyAccountCoordinatorTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class MyAccountCoordinatorTests: XCTestCase {
    
    var myAccountCoordinator: MyAccountCoordinator!
    var navController: MockNavigationController!
    
    override func setUp() {
        navController = MockNavigationController()
        myAccountCoordinator = MyAccountCoordinator(navController: navController)
    }
    
    func test_WhenMyAccountCoordinatorStartMethodCalled_ThenMyAccountViewControllerShouldLoad() {
        myAccountCoordinator.start()
        XCTAssert(self.navController.topViewController?.isKind(of: MyAccountViewController.self) ?? false)
    }
    
}
