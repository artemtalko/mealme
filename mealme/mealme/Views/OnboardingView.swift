//
//  OnboardingView.swift
//  mealme
//
//  Created by Artem Talko on 03.01.2024.
//

import UIKit

final class OnboardingView: UIView {
    private let videoPlayerView: VideoPlayerView = {
        let videoPlayerView = VideoPlayerView()
        videoPlayerView.translatesAutoresizingMaskIntoConstraints = false
        
        return videoPlayerView
    }()
    
    private let storiesLabel: UILabel = {
        let storiesLabel = UILabel()
        storiesLabel.textColor = .white
        storiesLabel.font = .systemFont(ofSize: 36.sizeW, weight: .bold)
        storiesLabel.text = StringConstants.onboardingStories.uppercased()
        storiesLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return storiesLabel
    }()
    
    private let welcomeLabel: UILabel = {
        let welcomeLabel = UILabel()
        welcomeLabel.textColor = .white
        welcomeLabel.font = .systemFont(ofSize: 24.sizeW, weight: .bold)
        welcomeLabel.text = StringConstants.onboardingWelcome
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return welcomeLabel
    }()
    
    private let newUserButton: UIButton = {
        let newUserButton = UIButton()
        newUserButton.backgroundColor = ColorConstants.oliveGreen
        newUserButton.layer.cornerRadius = 20
        newUserButton.layer.masksToBounds = true
        newUserButton.setTitle(StringConstants.onboardingNewString, for: .normal)
        newUserButton.setTitleColor(.white, for: .normal)
        newUserButton.translatesAutoresizingMaskIntoConstraints = false
        
        return newUserButton
    }()
    
    private let loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.backgroundColor = ColorConstants.oliveGreen
        loginButton.layer.cornerRadius = 20
        loginButton.layer.masksToBounds = true
        loginButton.setTitle(StringConstants.onboardingBeenThere, for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        return loginButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(videoPlayerView)
        addSubview(storiesLabel)
        addSubview(welcomeLabel)
        addSubview(newUserButton)
        addSubview(loginButton)
        
        setupContraints()
    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            videoPlayerView.topAnchor.constraint(equalTo: topAnchor),
            videoPlayerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            videoPlayerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            videoPlayerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            storiesLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100.sizeH),
            storiesLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            
            welcomeLabel.topAnchor.constraint(equalTo: storiesLabel.bottomAnchor, constant: 360.sizeH),
            welcomeLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            
            newUserButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40.sizeH),
            newUserButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20.sizeW),
            newUserButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20.sizeW),
            newUserButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            newUserButton.heightAnchor.constraint(equalToConstant: 48.sizeH),

            loginButton.topAnchor.constraint(equalTo: newUserButton.bottomAnchor, constant: 20.sizeH),
            loginButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20.sizeW),
            loginButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20.sizeW),
            loginButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 48.sizeH),
        ])
    }
}
