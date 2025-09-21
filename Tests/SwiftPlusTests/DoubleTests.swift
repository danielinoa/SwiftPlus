//
//  Created by Daniel Inoa on 10/11/23.
//

import Testing
@testable import SwiftPlus

struct DoubleTests {

    // MARK: - Exponentiation

    @Test
    func test_raising_2_to_power_of_3() {
        let base: Double = 2
        let exponent: Int = 3
        let expected: Double = 8
        let actual: Double = base ** exponent
        #expect(actual == expected)
    }

    @Test
    func test_raising_2_to_power_of_0() {
        let base: Double = 2
        let exponent: Int = 0
        let expected: Double = 1
        let actual: Double = base ** exponent
        #expect(actual == expected)
    }

    @Test
    func test_raising_2_to_power_of_negative_1() {
        let base: Double = 2
        let exponent: Int = -1
        let expected: Double = 0.5
        let actual: Double = base ** exponent
        #expect(actual == expected)
    }

    @Test
    func test_exponentation_assignment_operator() {
        var base: Double = 2
        let exponent: Int = 3
        let expected: Double = 8
        base **= exponent
        #expect(base == expected)
    }

    // MARK: - Rounding

    @Test
    func test_rounding_off() {
        let expected: Double = 3.14
        let actual: Double = 3.141592.rounded(fractionalDigits: 2)
        #expect(actual == expected)
    }

    @Test
    func test_rounding_up() {
        let expected: Double = 0.50
        let actual: Double = 0.4999.rounded(fractionalDigits: 2)
        #expect(actual == expected)
    }

    @Test
    func test_rounding_number_with_2_fractional_digits_to_0_fractional_digits() {
        let expected: Double = 3
        let actual: Double = 3.14.rounded(fractionalDigits: 0)
        #expect(actual == expected)
    }

    @Test
    func test_rounding_number_with_3_fractional_digits_to_3_fractional_digits() {
        let expected: Double = 0.499
        let actual: Double = 0.499.rounded(fractionalDigits: 3)
        #expect(actual == expected)
    }
}
