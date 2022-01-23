//
//  Animating.swift
//  SpringAnimation
//
//  Created by  BoDim on 23.01.2022.
//

import Foundation

enum AnimationType: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case fadeIn
    case fadeOut
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flash
    case swing
}

enum AnimationCurve: String, CaseIterable {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInBack
    case easeInCirc
    case easeInQuint
    case easeOutQuint
}

struct Animation {
    let typeAnimate: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getRandomAnimation() -> Animation {
        Animation(
            typeAnimate: DataManager.shared.animations.randomElement()?.rawValue ?? AnimationType.slideLeft.rawValue,
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? AnimationCurve.easeIn.rawValue,
            force: Float.random(in: 0...2),
            duration: Float.random(in: 0...3),
            delay: 0.5
        )
    }
}
