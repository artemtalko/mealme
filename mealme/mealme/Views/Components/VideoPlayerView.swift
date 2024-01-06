//
//  VideoPlayerView.swift
//  mealme
//
//  Created by Artem Talko on 06.01.2024.
//

import UIKit
import AVFoundation

final class VideoPlayerView: UIView {
    private lazy var player: AVPlayer? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupPlayer()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: Helpers
extension VideoPlayerView {
    private func setupPlayer() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.001) {
            guard let path = Bundle.main.path(forResource: "cooking", ofType: "mp4") else {
                     return
                 }
            self.player = AVPlayer(url: URL(fileURLWithPath: path))
            
            let playerLayer = AVPlayerLayer(player: self.player)
            playerLayer.frame = self.bounds
            playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
            self.layer.insertSublayer(playerLayer, at: 0)
            
            self.player?.actionAtItemEnd = .none
            NotificationCenter.default.addObserver(self, selector: #selector(self.playerItemDidReachEnd), name: .AVPlayerItemDidPlayToEndTime, object: self.player?.currentItem)
            
            self.player?.seek(to: CMTime.zero)
            self.player?.play()
            self.player?.isMuted = true
        }
    }
}

//MARK: Action
extension VideoPlayerView {
    @objc private func playerItemDidReachEnd() {
        player?.seek(to: CMTime.zero)
    }
}

