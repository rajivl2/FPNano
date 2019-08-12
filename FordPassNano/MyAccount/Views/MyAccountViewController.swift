//
//  MyAccountViewController.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import UIKit

class MyAccountViewController: UIViewController {

    let screenlabel: UILabel = {
        let name = UILabel()
        name.text = "My Account"
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textAlignment = .center
        return name
    }()
    
    let nameLabel: UILabel = {
        let name = UILabel()
        name.text = "Name"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let emailLabel: UILabel = {
        let name = UILabel()
        name.text = "Email"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let stateLabel: UILabel = {
        let name = UILabel()
        name.text = "State"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let countyryLabel: UILabel = {
        let name = UILabel()
        name.text = "Country"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let nameValue: UILabel = {
        let name = UILabel()
        name.text = "Rajiv L K"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let emailvalue: UILabel = {
        let name = UILabel()
        name.text = "rajiv@ios.com"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let stateValue: UILabel = {
        let name = UILabel()
        name.text = "Tamil Nadu"
        name.font = UIFont.boldSystemFont(ofSize: 15)
        name.textAlignment = .center
        return name
    }()
    
    let countryValue: UILabel = {
        let name = UILabel()
        name.text = "India"
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
            make.width.equalTo(300)
        }
        
        self.view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(screenlabel.snp.bottom).offset(40)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(emailLabel)
        emailLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(nameLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(stateLabel)
        stateLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(emailLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(countyryLabel)
        countyryLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(stateLabel.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(nameValue)
        nameValue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(screenlabel.snp.bottom).offset(40)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(emailvalue)
        emailvalue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(nameValue.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(stateValue)
        stateValue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(emailvalue.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
        
        self.view.addSubview(countryValue)
        countryValue.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(stateValue.snp.bottom).offset(20)
            make.width.equalTo(100)
        }
    }

}
