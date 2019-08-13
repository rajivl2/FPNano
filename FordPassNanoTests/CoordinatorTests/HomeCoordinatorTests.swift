//
//  HomeCoordinatorTests.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import XCTest
@testable import FordPassNano

class HomeCoordinatorTests: XCTestCase {

    var homeCoordinator: HomeCoordinator!
    var navController: MockNavigationController!
    
    override func setUp() {
        navController = MockNavigationController()
        homeCoordinator = HomeCoordinator(navController: navController)
    }

    func test_WhenHomeCoordinatorStartMethodCalled_ThenHomeViewControllerShouldLoad() {
        homeCoordinator.start()
        XCTAssert(self.navController.topViewController?.isKind(of: HomeViewController.self) ?? false)
    }
}
