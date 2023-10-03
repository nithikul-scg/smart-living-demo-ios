//
//  ViewController.swift
//  SDKDemoApp
//
//  Created by nithikul on 7/18/23.
//

import UIKit
import SmartLivingSDK

class ViewController: UIViewController, SCGAccountDelegate {
    private let button: UIButton = {
       let button = UIButton()
        button.setTitle("open SDK", for: .normal)
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
        SCGAccount.sharedInstance.delegate = self
        setupViews()
        showButton()
    }
    
    private func setupViews() {
        view.addSubview(titleLabel)
        view.addSubview(button)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // Center the button horizontally and vertically in the view
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16)
        ])
    }
    
    private func showButton() {
        button.addTarget(self, action: #selector(presentSDK), for: .touchUpInside)
    }

    @objc private func presentSDK() {
        // You can move this code
        // SCGSmartLivingApp.shared?.presentSmartLivingApp()
        // here if you want to persist the current user.
        // However, since we don't have a logout function in the SDK,
        // in this example, we will log out before starting to present the SDK.
        button.setTitle("Opening SDK ...", for: .normal)
        SCGAccount.sharedInstance.logout()
    }

    func didLogout() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            SCGSmartLivingApp.shared?.presentSmartLivingApp()
        }
    }
}
