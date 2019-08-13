//
//  MockHelpTopicsViewController.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import Foundation
import UIKit
@testable import FordPassNano

class MockHelpTopicsViewController: HelpTopicsViewController{
    
    override func vehicleDetailsButtonTapped() {
        delegate?.roadSideAssistanceButtonTapped(isRoadSideAssistanceSelected: false)
    }
    override func roadSideAssistanceButtonTapped() {
        delegate?.roadSideAssistanceButtonTapped(isRoadSideAssistanceSelected: true)
    }
}
