//
//  File.swift
//  AgsPackage
//
//  Created by Matej on 15. 8. 25.
//

import Foundation

struct Computer {
    let computingPower: Double
    let algorithm: Algorithm
    
    var timeToCompute: TimeInterval {
        algorithm.instructions / computingPower
    }
}
