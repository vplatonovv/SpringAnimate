//
//  ViewController.swift
//  SpringAnimate
//
//  Created by Слава Платонов on 22.09.2021.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet weak var animateView: SpringView!
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var velocityLabel: UILabel!
    @IBOutlet weak var dampingLabel: UILabel!
    
    private let animations = Animate.getAnimations()
    private var index = 0
        
    @IBAction func animationButtonTapped(_ sender: SpringButton) {
        
        let animates = animations.map { $0.animation }
        let curves = animations.map { $0.curve }
        let durations = animations.map { $0.duration }
        let forces = animations.map { $0.force }
        let delays = animations.map { $0.delay }
        let velocityes = animations.map { $0.velocity }
        let dampings = animations.map { $0.damping }
        
        animationLabel.text = "Animation: " + animates[index]
        curveLabel.text = "Curve: " + curves[index]
        durationLabel.text = "Duration: " + String(format: "%.2f", durations[index])
        forceLabel.text = "Force: " + String(format: "%.2f", forces[index])
        delayLabel.text = "Delay: " + String(format: "%.2f", delays[index])
        velocityLabel.text = "Velocity: " + String(format: "%.2f", velocityes[index])
        dampingLabel.text = "Damping: " + String(format: "%.2f", dampings[index])
        
        animateView.animation = animates[index]
        animateView.curve = curves[index]
        animateView.duration = durations[index]
        animateView.force = forces[index]
        animateView.delay = delays[index]
        animateView.velocity = velocityes[index]
        animateView.damping = dampings[index]
        animateView.animate()
        
        if index == animates.count - 1 {
            index = 0
        } else {
            index += 1
        }
        
        sender.setTitle("Next animation: " + animates[index], for: .normal)
    }
}

