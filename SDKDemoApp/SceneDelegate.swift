//
//  SceneDelegate.swift
//  SDKDemoApp
//
//  Created by nithikul on 7/18/23.
//

import UIKit
import SmartLivingSDK
import Wormholy

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // MARK: [START] Configuration
    private let tuyaAppKey = "kqmkt7hwdjmk7ck8dgjr"
    private let tuyaSecretKey = "y5c77x8kd7qv8t4kwrqjswsuaxyh8jf3"
    // MARK: [END] Configuration
    
    
    private let mockNSHome = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJjdXN0b21lcl9pZCI6IjEiLCJyb2xlX2lkIjoiT1dORVIiLCJwcm9qZWN0X2lkIjoibnMiLCJob3VzZV9ubyI6ImhvdXNlIGFnYWluIiwiY2hhbm5lbCI6IkFQIiwiZXhwIjoxNjk5NTI2NzQwfQ.R76bqCRL9oq8gZVdpsBCNt1FbDS00cyueaarq8iLV30lwh8akOOri1VT9-w3Vf2XkzvncajaolskfpKNYX7xyXsEdr0ae081AjlorbYMO5JaCMmCwzBsmlfsbWYP0qYWOP6ce2My8edmsbiN6rvt8RKEgvoTWJfoXJgpJZpB8-tmq-7NfjmiDMGo6CfbSxdQHFBx-ZiOtX3tlboj6pt4Tb9vtYy0pX0vTU5xlXUXrWx9FqkxRtoyR5DQUhwDyDhsLzP7ckJa8zDHlv6GzP0aYyMF-DFqYk64lOTbHZdJYuej7a_rWIbgQLpCykjNGBcWR6rH1f32rgqfPv_1_lOhRA"
    
    private let mockNoMatch = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJjdXN0b21lcl9pZCI6IjEiLCJyb2xlX2lkIjoiT1dORVIiLCJwcm9qZWN0X2lkIjoibnMiLCJob3VzZV9ubyI6IkJBTk5OTk5OTk4iLCJjaGFubmVsIjoiQVAiLCJleHAiOjE2OTk1MzAwMzZ9.RlpwCyNtHEkbHe9JVMGkm06kmfZ59OcaWP7ALfpbRPomurxp-A9I-ixqQRSgW90o4pTINd8yZs9CaPMAr1AYCH1-hxdTkKdAWW7K-OCYuvwkB-Zky8c11ZvrVuUOCotx8jwGu10TUGSUHQ6pE-Uh08ARsxNz6EdfnzgQXd0EessjEYIhnrHWzgDsVDlWCGkDqeSD3t128maMq7jsyyZjNX9w1xayTKCQokoJR-lITT1Bu87hAKnnNq-weD1EC_YflidCRBabIHU9flNMa5LC-JSk4mxsW-kc_DlPFvUmd4vTQutFD4rzPdECTg2rnaFFDC3DgoSPgyWrFIoJXXIrPg"

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        SCGSmartLivingApp.configure(thirdPartyToken: "test",
                                    tuyaAppKey: tuyaAppKey,
                                    tuyaSecretKey: tuyaSecretKey)
        
        
        Wormholy.limit = 20
        Wormholy.shakeEnabled = true
        Wormholy.swiftyInitialize()
        Wormholy.swiftyLoad()
        
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
