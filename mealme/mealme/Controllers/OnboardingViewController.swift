//
//  ViewController.swift
//  mealme
//
//  Created by Artem Talko on 03.01.2024.
//

import UIKit
import AVFoundation

class OnboardingViewController: UIViewController {
    private let mainView = OnboardingView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
