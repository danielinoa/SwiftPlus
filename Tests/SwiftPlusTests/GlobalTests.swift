//
//  Created by Daniel Inoa on 10/12/23.
//

import XCTest
@testable import SwiftPlus

final class GlobalTests: XCTestCase {

    // MARK: - Exponentiation

    func test_raising_2_to_power_of_3() {
        let base: Double = 2
        let exponent: Int = 3
        let expected: Double = 8
        let actual: Double = exponentiate(base: base, exponent: exponent)
        XCTAssertEqual(actual, expected)
    }

    func test_raising_2_to_power_of_0() {
        let base: Double = 2
        let exponent: Int = 0
        let expected: Double = 1
        let actual: Double = exponentiate(base: base, exponent: exponent)
        XCTAssertEqual(actual, expected)
    }

    func test_raising_2_to_power_of_negative_1() {
        let base: Double = 2
        let exponent: Int = -1
        let expected: Double = 0.5
        let actual: Double = exponentiate(base: base, exponent: exponent)
        XCTAssertEqual(actual, expected)
    }
}
