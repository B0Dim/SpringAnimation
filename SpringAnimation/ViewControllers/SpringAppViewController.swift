//
//  ViewController.swift
//  SpringAnimation
//
//  Created by  BoDim on 23.01.2022.
//

import UIKit
import Spring

class SpringAppViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var titleAnimateLabel: UILabel!
    @IBOutlet weak var curveAnimationLabel: UILabel!
    @IBOutlet weak var forceAnimationLabel: UILabel!
    @IBOutlet weak var durationAnimationLabel: UILabel!
    @IBOutlet weak var delayAnimationLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func runAnimating(_ sender: UIButton) {
        if springAnimationView.isHidden {
            springAnimationView.isHidden.toggle()
        }
        
        setTitleAnimation()
        
        springAnimationView.animation = animation.typeAnimate
        springAnimationView.curve = animation.curve
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.typeAnimate) Animating", for: .normal)
    }
    
    private func setTitleAnimation() {
        titleAnimateLabel.text = animation.typeAnimate
        curveAnimationLabel.text = animation.curve
        forceAnimationLabel.text = String(format: "%2f", animation.force)
        durationAnimationLabel.text = String(format: "%2f", animation.duration)
        delayAnimationLabel.text = String(format: "%2f", animation.delay)
    }
}

