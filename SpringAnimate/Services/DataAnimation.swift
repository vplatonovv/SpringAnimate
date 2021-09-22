//
//  DataAnimation.swift
//  SpringAnimate
//
//  Created by Слава Платонов on 22.09.2021.
//

import Foundation

class Animations {
    
    static var animate = Animations()
    
    let animations = [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "flash"
    ]
    
    let curves = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut"
    ]
    
    private init() {}
}

