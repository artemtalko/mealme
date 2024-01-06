//
//  SceneDelegate.swift
//  mealme
//
//  Created by Artem Talko on 03.01.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = OnboardingNavigationViewController()
        window.makeKeyAndVisible()
        
        self.window = window
    }
}

