//
//  Animate.swift
//  SpringAnimate
//
//  Created by Слава Платонов on 22.09.2021.
//

import Foundation

struct Animate {
    let animation: String
    let curve: String
    let duration: Double
    let force: Double
    let delay: Double
    let velocity: Double
    let damping: Double
    
    static func getAnimations() -> [Animate] {
        let animationsSpring = Animations.animate.animations
        let curvesSpring = Animations.animate.curves

        var animations: [Animate] = []
        var index = 0

        for _ in 0..<animationsSpring.count {
            let animate = Animate(
                animation: animationsSpring[index],
                curve: curvesSpring.randomElement() ?? "",
                duration: Double.random(in: 2...3),
                force: Double.random(in: 1.5...2),
                delay: Double.random(in: 0...0.3),
                velocity: Double.random(in: 1...1.3),
                damping: Double.random(in: 0.1...0.3)
            )
            index += 1
            animations.append(animate)
        }
        return animations
    }
}
