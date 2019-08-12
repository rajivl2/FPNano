//
//  HelpTopicsViewController.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import UIKit

class HelpTopicsViewController: UIViewController {

    weak var delegate: HelpTopicsViewControllerDelegate?
    
    let screenlabel: UILabel = {
        let name = UILabel()
        name.text = "Help Topics"
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textAlignment = .center
        return name
    }()
    
    let roadSideAssistanceButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Road Side Assistance", for: .normal)
        btn.backgroundColor = UIColor.clear
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.contentHorizontalAlignment = .left
        return btn
    }()
    
    let vehicleDetailsButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Vehicle Details", for: .normal)
        btn.backgroundColor = UIColor.clear
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.contentHorizontalAlignment = .left
        return btn
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
            make.width.equalTo(200)
        }
        
        self.view.addSubview(roadSideAssistanceButton)
        roadSideAssistanceButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(30)
            make.top.equalTo(screenlabel.snp.bottom).offset(30)
            make.width.equalToSuperview()
        }
        
        self.view.addSubview(vehicleDetailsButton)
        vehicleDetailsButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(30)
            make.top.equalTo(roadSideAssistanceButton.snp.bottom).offset(30)
            make.width.equalToSuperview()
        }
        
        roadSideAssistanceButton.addTarget(self, action: #selector(roadSideAssistanceButtonTapped), for: .touchUpInside)
        vehicleDetailsButton.addTarget(self, action: #selector(vehicleDetailsButtonTapped), for: .touchUpInside)
    }
    
    @objc func roadSideAssistanceButtonTapped(){
        delegate?.roadSideAssistanceButtonTapped()
    }
    
    @objc func vehicleDetailsButtonTapped(){
        delegate?.vehicleDetailsButtonTapped()
    }

}

protocol HelpTopicsViewControllerDelegate: class {
    func roadSideAssistanceButtonTapped()
    func vehicleDetailsButtonTapped()
}
