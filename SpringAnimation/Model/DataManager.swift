//
//  DataManager.swift
//  SpringAnimation
//
//  Created by  BoDim on 23.01.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let animations = AnimationType.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
