//
//  RoadSideAssistanceViewController.swift
//  FordPassNano
//
//  Created by Ford Labs on 12/08/19.
//  Copyright © 2019 Ford Labs. All rights reserved.
//

import UIKit

class DetailedHelpSectionViewController: UIViewController {

    private var roadSideAssistance = false
    
    private let screenlabel: UILabel = {
        let name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textAlignment = .center
        name.accessibilityIdentifier = "Screen Label"
        return name
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = false
        self.view.backgroundColor = UIColor(red: 110/255, green: 160/255, blue: 180/255, alpha: 1)
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 110/255, green: 160/255, blue: 180/255, alpha: 1)
        navigationController?.navigationBar.tintColor = UIColor.black
        
        setupViews()
        addTextView()
    }

    init(isRoadSideAssistanceTapped: Bool) {
        self.roadSideAssistance = isRoadSideAssistanceTapped
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        
        self.view.addSubview(screenlabel)
        screenlabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().multipliedBy(0.15)
            make.width.equalTo(400)
        }
    }
    
    func addTextView(){
        let textView = UITextView(frame: CGRect(x: 10.0, y: 10.0, width: 300.0, height: 300.0))
        
        textView.accessibilityIdentifier = "HelpSection Text View"
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.backgroundColor = UIColor.lightGray
        
        // Use RGB colour
        textView.backgroundColor = UIColor.clear
        
        // Update UITextView font size and colour
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.textColor = UIColor.black
        
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        textView.font = UIFont(name: "Verdana", size: 17)
        
        // Capitalize all characters user types
        textView.autocapitalizationType = UITextAutocapitalizationType.allCharacters

        textView.isEditable = false
        
        // Make UITextView corners rounded
        textView.layer.cornerRadius = 10
        
        if roadSideAssistance {
            screenlabel.text = "Road Side Assistance"
            textView.text = "Roadside assistance is a service that helps distressed motorists get their disabled vehicles back on the road or into garages for repair. Roadside assistants are managers and highway patrollers, as well as dispatchers and technicians. They work for towing companies, insurers, corporations and motor clubs."
        } else {
            screenlabel.text = "About Your Vehicle"
            textView.text = "For 2019, Ford made upgrades to enhance the off-road capability of the Raptor series truck line. They introduced new FOX Live Valve Shocks. The new shocks auto adjust the suspension's compression dampening based on the terrain via a live sensor electrically controlled solenoid valves. This new Terrain Management System works with sensors in the body to adjust as the truck is driving. The new Trail control for 2019 also adds adaptive cruise control for off road use."
        }
        
        self.view.addSubview(textView)
    }
}
