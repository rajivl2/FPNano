//
//  MyVehicleViewController.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import UIKit

class MyVehicleViewController: UIViewController {

    weak var delegate: MyVehicleControllerDelegate?
    
    private let screenlabel: UILabel = {
        let name = UILabel()
        name.text = "My Vehicle"
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textAlignment = .center
        return name
    }()
    
    private let image = UIImageView(image: UIImage(named: "default"))
    
    private let vehicleName: UILabel = {
        let name = UILabel()
        name.text = "Ford F-150"
        name.font = UIFont.boldSystemFont(ofSize: 20)
        name.textAlignment = .center
        return name
    }()
    
    private let myVehicleDetailsButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Vehicle Details", for: .normal)
        btn.backgroundColor = UIColor.clear
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = false
        self.view.backgroundColor = UIColor(red: 110/255, green: 160/255, blue: 180/255, alpha: 1)
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 110/255, green: 160/255, blue: 180/255, alpha: 1)
        navigationController?.navigationBar.tintColor = UIColor.black
        
        setUpViews()
    }

    func setUpViews(){
        self.view.addSubview(myVehicleDetailsButton)
        myVehicleDetailsButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(200)
        }
        
        self.view.addSubview(screenlabel)
        screenlabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().multipliedBy(0.15)
            make.width.equalTo(200)
        }
        
        self.view.addSubview(image)
        image.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(screenlabel.snp.bottom).offset(10)
            make.height.equalTo(200)
            make.width.equalTo(250)
        }
        
        self.view.addSubview(vehicleName)
        vehicleName.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(image.snp.bottom).offset(10)
            make.width.equalTo(200)
        }
        
        myVehicleDetailsButton.addTarget(self, action: #selector(myVehicleDetailsButtonTapped), for: .touchUpInside)
    }
    
    @objc func myVehicleDetailsButtonTapped(){
        delegate?.myVehicleDetailsButtonTapped(myVehicle: VehicleDetails(vehicleName: "Ford F-150", vin: "V123ENG456M2019", frontRightTirePressure: "33kPA", frontLefttirePressure: "34kPA", rearRightTirePressure: "35kPA", rearLeftTirePressure: "35kPA", fuelLevel: "70%"))
    }
}

protocol MyVehicleControllerDelegate: class {
    func myVehicleDetailsButtonTapped(myVehicle: VehicleDetails)
}
