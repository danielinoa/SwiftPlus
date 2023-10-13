//
//  Created by Daniel Inoa on 10/11/23.
//

import XCTest
@testable import SwiftPlus

final class DoubleTests: XCTestCase {

    // MARK: - Exponentiation

    func test_raising_2_to_power_of_3() {
        let base: Double = 2
        let exponent: Int = 3
        let expected: Double = 8
        let actual: Double = base.exponentiated(to: exponent)
        XCTAssertEqual(actual, expected)
    }

    func test_raising_2_to_power_of_0() {
        let base: Double = 2
        let exponent: Int = 0
        let expected: Double = 1
        let actual: Double = base.exponentiated(to: exponent)
        XCTAssertEqual(actual, expected)
    }

    func test_raising_2_to_power_of_negative_1() {
        let base: Double = 2
        let exponent: Int = -1
        let expected: Double = 0.5
        let actual: Double = base.exponentiated(to: exponent)
        XCTAssertEqual(actual, expected)
    }

    // MARK: - Rounding

    func test_rounding_off() {
        let expected: Double = 3.14
        let actual: Double = 3.141592.rounded(fractionalDigits: 2)
        XCTAssertEqual(actual, expected, accuracy: 0)
    }

    func test_rounding_up() {
        let expected: Double = 0.50
        let actual: Double = 0.4999.rounded(fractionalDigits: 2)
        XCTAssertEqual(actual, expected, accuracy: 0)
    }

    func test_rounding_number_with_2_fractional_digits_to_0_fractional_digits() {
        let expected: Double = 3
        let actual: Double = 3.14.rounded(fractionalDigits: 0)
        XCTAssertEqual(actual, expected, accuracy: 0)
    }

    func test_rounding_number_with_3_fractional_digits_to_3_fractional_digits() {
        let expected: Double = 0.499
        let actual: Double = 0.499.rounded(fractionalDigits: 3)
        XCTAssertEqual(actual, expected, accuracy: 0)
    }

    // MARK: - Proportion

    func test_inverse_lerp() {
        let number: Double = 65
        let lowerBound: Double = 60
        let upperBound: Double = 70
        let expectedRatio: Double = 0.5
        let result = number.proportioned(from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    func test_inverse_lerp_with_negative_lower_bound() {
        let number: Double = 0
        let lowerBound: Double = -100
        let upperBound: Double = 100
        let expectedRatio: Double = 0.5
        let result = number.proportioned(from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    func test_inverse_lerp_with_descending_range() {
        let number: Double = 7
        let lowerBound: Double = 10
        let upperBound: Double = 0
        let expectedRatio: Double = 0.3
        let result = number.proportioned(from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    func test_inverse_lerp_with_descending_range_2() {
        let number: Double = 61
        let lowerBound: Double = 70
        let upperBound: Double = 60
        let expectedRatio: Double = 0.9
        let result = number.proportioned(from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    func test_inverse_lerp_in_descending_range_with_positive_lower_bound_and_negative_upper_bound() {
        let number: Double = 0
        let lowerBound: Double = 100
        let upperBound: Double = -100
        let expectedRatio: Double = 0.5
        let result = number.proportioned(from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    // MARK: -  1D Interpolation

    func test_interpolation() {
        let ratio: Double = 0.7
        let lowerBound: Double = 10
        let upperBound: Double = 20
        let expectedValue: Double = 17
        let result = ratio.interpolated(from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedValue, result)
    }

    func test_interpolation_with_descending_range() {
        let ratio: Double = 0.7
        let lowerBound: Double = 10
        let upperBound: Double = 0
        let expectedValue: Double = 3
        let result = ratio.interpolated(from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedValue, result)
    }

    func test_interpolation_with_descending_range_2() {
        let ratio: Double = 0.75
        let lowerBound: Double = 10
        let upperBound: Double = -10
        let expectedValue: Double = -5
        let result = ratio.interpolated(from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedValue, result)
    }

    // MARK: - Scaling

    func test_scaling_number_from_source_to_target_range() {
        let number: Double = 5
        let sourceRange: ClosedRange<Double> = 0...10
        let targetRange: ClosedRange<Double> = 60...70
        let expectedNumber: Double = 65
        let result = number.scaled(from: sourceRange, to: targetRange)
        XCTAssertEqual(expectedNumber, result)
    }

    func test_scaling_number_from_source_to_target_range_with_negative_lower_bound() {
        let number: Double = 5
        let sourceRange: ClosedRange<Double> = 0...10
        let targetRange: ClosedRange<Double> = -100...100
        let expectedNumber: Double = 0
        let result = number.scaled(from: sourceRange, to: targetRange)
        XCTAssertEqual(expectedNumber, result)
    }

    func test_scaling_number_from_source_to_target_range_with_identical_lower_and_upper_bound() {
        let number: Double = 5
        let sourceRange: ClosedRange<Double> = 0...10
        let targetRange: ClosedRange<Double> = 42...42
        let expectedNumber: Double = 42
        let result = number.scaled(from: sourceRange, to: targetRange)
        XCTAssertEqual(expectedNumber, result)
    }

    func test_scaling_any_number_from_source_to_target_range_with_identical_lower_and_upper_bound_equals_target_bound() {
        let number: Double = 7
        let sourceRange: ClosedRange<Double> = 0...10
        let targetRange: ClosedRange<Double> = 42...42
        let expectedNumber: Double = 42
        let result = number.scaled(from: sourceRange, to: targetRange)
        XCTAssertEqual(expectedNumber, result)
    }
}
