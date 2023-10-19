//
//  ViewController.swift
//  SDKDemoApp
//
//  Created by nithikul on 7/18/23.
//

import UIKit
import SmartLivingSDK

class ViewController: UIViewController {
    private let openSDKButton: UIButton = {
       let button = UIButton()
        button.setTitle("Open SDK", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 16)
        return button
    }()
    
    private let logoutButton: UIButton = {
       let button = UIButton()
        button.setTitle("Logout", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 16)
        return button
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "SDK Demo"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupViews()
        showButton()
    }
    
    private func setupViews() {
        let vStackView = UIStackView()
        vStackView.spacing = 16
        vStackView.alignment = .center
        vStackView.axis = .vertical
        
        vStackView.addArrangedSubview(openSDKButton)
        vStackView.addArrangedSubview(logoutButton)
        
        view.addSubview(titleLabel)
        view.addSubview(vStackView)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Center the button horizontally and vertically in the view
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            vStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            vStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            vStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
    
    private func showButton() {
        openSDKButton.addTarget(self, action: #selector(presentSDK), for: .touchUpInside)
        logoutButton.addTarget(self, action: #selector(logout), for: .touchUpInside)
    }

    @objc private func presentSDK() {
        SCGSmartLivingApp.shared?.presentSmartLivingApp()
    }

    @objc private func logout() {
        SCGAccount.sharedInstance.logout()
    }
}
