//
//  HomeViewController.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    weak var delegate: HomeViewControllerDelegate?
    
    private let appName: UILabel = {
        let name = UILabel()
        name.text = "FordPass Nano"
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textAlignment = .center
        return name
    }()
    
    private let myVehicleButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("My Vehicle", for: .normal)
        btn.backgroundColor = UIColor.clear
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn
    }()
    
    private let myAccountButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("My Account", for: .normal)
        btn.backgroundColor = UIColor.clear
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn
    }()
    
    private let needHelpButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Need Help?", for: .normal)
        btn.backgroundColor = UIColor.clear
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 110/255, green: 160/255, blue: 180/255, alpha: 1)
        
        self.navigationController?.isNavigationBarHidden = true
        
        setUpViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    func setUpViews(){
        self.view.addSubview(appName)
        appName.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().multipliedBy(0.25)
            make.width.equalTo(200)
        }
        
        self.view.addSubview(myAccountButton)
        myAccountButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(200)
        }
        
        self.view.addSubview(myVehicleButton)
        myVehicleButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myAccountButton.snp.top).offset(-30)
            make.width.equalTo(200)
        }
        
        self.view.addSubview(needHelpButton)
        needHelpButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(myAccountButton.snp.bottom).offset(30)
            make.width.equalTo(200)
        }
        
        myVehicleButton.addTarget(self, action: #selector(myVehicleButtonTapped), for: .touchUpInside)
        myAccountButton.addTarget(self, action: #selector(myAccountButtonTapped), for: .touchUpInside)
        needHelpButton.addTarget(self, action: #selector(needHelpButtonTapped), for: .touchUpInside)
    }
    
    @objc func myVehicleButtonTapped(){
        delegate?.myVehicleButtonTapped()
    }
    
    @objc func myAccountButtonTapped(){
        delegate?.myAccountButtonTapped()
    }
    
    @objc func needHelpButtonTapped(){
        delegate?.needHelpButtonTapped()
    }
}

protocol HomeViewControllerDelegate : class {
    func myVehicleButtonTapped()
    func myAccountButtonTapped()
    func needHelpButtonTapped()
}
