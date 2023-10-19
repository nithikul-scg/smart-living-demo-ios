//
//  SceneDelegate.swift
//  SDKDemoApp
//
//  Created by nithikul on 7/18/23.
//

import UIKit
import SmartLivingSDK
//import ThingSmartHomeKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // MARK: [START] Configuration
    private let tuyaAppKey = "pvnautmdek3qxrhsgs5f"
    private let tuyaSecretKey = "tg3c849uacpkvcharakvhqayghkrsqyc"
    // MARK: [END] Configuration
    

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        SCGSmartLivingApp.configure(customerId: "1",
                                    role: .owner,
                                    projectId: "Grand Pleno",
                                    houseNo: "1234",
                                    channel: "AP",
                                    tuyaAppKey: tuyaAppKey,
                                    tuyaSecretKey: tuyaSecretKey)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = ViewController()
        
        window?.makeKeyAndVisible()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }
}
