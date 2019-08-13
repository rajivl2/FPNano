//
//  MyVehicleDetailsViewController.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import UIKit

class MyVehicleDetailsViewController: UIViewController {

    private var myVehicle: VehicleDetails?
    
    private let screenlabel: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textAlignment = .center
        return name
    }()
    
    private let vinLabel: UILabel = {
        let name = UILabel()
        name.text = "VIN"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let fuelLevelLabel: UILabel = {
        let name = UILabel()
        name.text = "Fuel Level"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let vinValue: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let fuelLevelValue: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let tirePressureLabel: UILabel = {
        let name = UILabel()
        name.text = "Tire Pressure"
        name.font = UIFont.boldSystemFont(ofSize: 20)
        name.textAlignment = .center
        return name
    }()
    
    private let fronLeftLabel: UILabel = {
        let name = UILabel()
        name.text = "Front Left"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let frontRightLabel: UILabel = {
        let name = UILabel()
        name.text = "Front Right"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let rearLeftLabel: UILabel = {
        let name = UILabel()
        name.text = "Rear Left"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let rearRightLabel: UILabel = {
        let name = UILabel()
        name.text = "Rear Right"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let fronLeftValue: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let frontRightValue: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let rearLeftValue: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    private let rearRightvalue: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = false
        self.view.backgroundColor = UIColor(red: 110/255, green: 160/255, blue: 180/255, alpha: 1)
        
        setUpViews()
        
        setUpData()
    }
    
    init(vehicleDetail: VehicleDetails) {
        self.myVehicle = vehicleDetail
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        
        self.view.addSubview(screenlabel)
        screenlabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().multipliedBy(0.15)
            make.width.equalTo(400)
        }
        
        self.view.addSubview(vinLabel)
        vinLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(screenlabel.snp.bottom).offset(40)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(fuelLevelLabel)
        fuelLevelLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(vinLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(tirePressureLabel)
        tirePressureLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(fuelLevelLabel.snp.bottom).offset(30)
            make.width.equalTo(200)
        }
        
        self.view.addSubview(fronLeftLabel)
        fronLeftLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(tirePressureLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(frontRightLabel)
        frontRightLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(fronLeftLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(rearLeftLabel)
        rearLeftLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(frontRightLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(rearRightLabel)
        rearRightLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(rearLeftLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(vinValue)
        vinValue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(screenlabel.snp.bottom).offset(40)
            make.width.equalTo(200)
        }
        
        self.view.addSubview(fuelLevelValue)
        fuelLevelValue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(vinValue.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(fronLeftValue)
        fronLeftValue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(tirePressureLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(frontRightValue)
        frontRightValue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(fronLeftValue.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(rearLeftValue)
        rearLeftValue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(frontRightValue.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(rearRightvalue)
        rearRightvalue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(rearLeftValue.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
    }
    
    func setUpData(){
        self.screenlabel.text = self.myVehicle?.vehicleName
        self.vinValue.text = self.myVehicle?.vin
        self.frontRightValue.text = self.myVehicle?.frontRightTirePressure
        self.fronLeftValue.text = self.myVehicle?.frontLefttirePressure
        self.rearRightvalue.text = self.myVehicle?.rearRightTirePressure
        self.rearLeftValue.text = self.myVehicle?.rearLeftTirePressure
        self.fuelLevelValue.text = self.myVehicle?.fuelLevel
    }

}
