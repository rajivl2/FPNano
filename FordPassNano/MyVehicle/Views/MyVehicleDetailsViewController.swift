//
//  MyVehicleDetailsViewController.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import UIKit

class MyVehicleDetailsViewController: UIViewController {

    let screenlabel: UILabel = {
        let name = UILabel()
        name.text = "Vehicle Details - Night Furry"
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textAlignment = .center
        return name
    }()
    
    let vinLabel: UILabel = {
        let name = UILabel()
        name.text = "VIN"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let fuelLevelLabel: UILabel = {
        let name = UILabel()
        name.text = "Fuel Level"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let vinValue: UILabel = {
        let name = UILabel()
        name.text = "HYJDOOp756242HJL"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let fuelLevelValue: UILabel = {
        let name = UILabel()
        name.text = "50%"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let tirePressureLabel: UILabel = {
        let name = UILabel()
        name.text = "Tire Pressure"
        name.font = UIFont.boldSystemFont(ofSize: 20)
        name.textAlignment = .center
        return name
    }()
    
    let fronLeftLabel: UILabel = {
        let name = UILabel()
        name.text = "Front Left"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let frontRightLabel: UILabel = {
        let name = UILabel()
        name.text = "Front Right"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let rearLeftLabel: UILabel = {
        let name = UILabel()
        name.text = "Rear Left"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let rearRightLabel: UILabel = {
        let name = UILabel()
        name.text = "Rear Right"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let fronLeftValue: UILabel = {
        let name = UILabel()
        name.text = "35 kPA"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let frontRightValue: UILabel = {
        let name = UILabel()
        name.text = "35 kPA"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let rearLeftValue: UILabel = {
        let name = UILabel()
        name.text = "33 kPA"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let rearRightvalue: UILabel = {
        let name = UILabel()
        name.text = "33 kPA"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = false
        self.view.backgroundColor = UIColor(red: 110/255, green: 160/255, blue: 180/255, alpha: 1)
        
        setUpViews()
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

}
