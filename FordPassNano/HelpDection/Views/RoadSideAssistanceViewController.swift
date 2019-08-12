//
//  RoadSideAssistanceViewController.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import UIKit

class RoadSideAssistanceViewController: UIViewController {

    let screenlabel: UILabel = {
        let name = UILabel()
        name.text = "Road Side Assistance"
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textAlignment = .center
        return name
    }()
    
    let roadSideAssistanceTextArea: UITextView = {
        let textView = UITextView()
        textView.text = "kgvckjhebcdhbclejcbllkf"
        textView.backgroundColor = .clear
        textView.textColor = .black
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = false
        self.view.backgroundColor = UIColor(red: 110/255, green: 160/255, blue: 180/255, alpha: 1)
        
        setupViews()
    }

    func setupViews(){
        
        self.view.addSubview(screenlabel)
        screenlabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().multipliedBy(0.15)
            make.width.equalTo(400)
        }
        
        self.view.addSubview(roadSideAssistanceTextArea)
        roadSideAssistanceTextArea.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.width.equalTo(400)
            make.top.equalTo(screenlabel.snp.bottom).offset(30)
        }
    }
}
