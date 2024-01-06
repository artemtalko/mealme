//
//  FirstOpenNavigationViewController.swift
//  mealme
//
//  Created by Artem Talko on 03.01.2024.
//

import UIKit

final class OnboardingNavigationViewController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let onboardingViewController = OnboardingViewController()
        // let mainTabBarViewController = MainTabBarViewController()
    
        setViewControllers([onboardingViewController], animated: true)
    }
}
