//
//  MockNavigationController.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import Foundation
import UIKit
@testable import FordPassNano

class MockNavigationController: UINavigationController{
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: false)
    }
}
