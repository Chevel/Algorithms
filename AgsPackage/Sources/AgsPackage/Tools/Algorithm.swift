//
//  File.swift
//  AgsPackage
//
//  Created by Matej on 15. 8. 25.
//

import Foundation

enum Algorithm {
    case insertionSort(UInt)
    case mergeSort(UInt)
    
    var instructions: Double {
        switch self {
        case .insertionSort(let amount):
            Double(constant) * pow(Double(amount), 2)

        case .mergeSort(let amount):
            Double(constant) * Double(amount) * log2(Double(amount))
        }
    }
    
    private var constant: UInt {
        switch self {
        case .insertionSort: return 2
        case .mergeSort: return 50
        }
    }
}
