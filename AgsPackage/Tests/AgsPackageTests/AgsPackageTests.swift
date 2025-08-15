import Testing
@testable import AgsPackage
import Foundation

@Test func example() async throws {
    let tenMillionNumbers: UInt = NSNumber(floatLiteral: pow(10, 7)).uintValue
    let computerA = Computer(computingPower: pow(10, 10), algorithm: .insertionSort(tenMillionNumbers))
    let computerB = Computer(computingPower: pow(10, 7), algorithm: .mergeSort(tenMillionNumbers))

    print(computerA.timeToCompute)
    print(computerA.timeToCompute.duration)
    #expect(computerA.timeToCompute == 20000)

    print("------------------------------------")

    print(computerB.timeToCompute)
    print(computerB.timeToCompute.duration)
    #expect(Int(computerB.timeToCompute) == 1162)
}



