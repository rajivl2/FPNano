//
//  MockMyVehicleViewController.swift
//  FordPassNanoTests
//
//  Created by Ford Labs on 13/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import Foundation
import UIKit
@testable import FordPassNano

class MockMyVehicleViewController: MyVehicleViewController{
    override func myVehicleDetailsButtonTapped() {
        let myVehicle = VehicleDetails(vehicleName: "Ford F-150", vin: "V123ENG456M2019", frontRightTirePressure: "33kPA", frontLefttirePressure: "34kPA", rearRightTirePressure: "35kPA", rearLeftTirePressure: "35kPA", fuelLevel: "70%")
        delegate?.myVehicleDetailsButtonTapped(myVehicle: myVehicle)
    }
}
