//
//  Created by Daniel Inoa on 10/12/23.
//

import XCTest
@testable import SwiftPlus

final class MathTests: XCTestCase {

    // MARK: - Proportion

    func test_inverse_lerp() {
        let number: Double = 65
        let lowerBound: Double = 60
        let upperBound: Double = 70
        let expectedRatio: Double = 0.5
        let result = Math.proportion(of: number, from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    func test_inverse_lerp_with_negative_lower_bound() {
        let number: Double = 0
        let lowerBound: Double = -100
        let upperBound: Double = 100
        let expectedRatio: Double = 0.5
        let result = Math.proportion(of: number, from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    func test_inverse_lerp_with_descending_range() {
        let number: Double = 7
        let lowerBound: Double = 10
        let upperBound: Double = 0
        let expectedRatio: Double = 0.3
        let result = Math.proportion(of: number, from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    func test_inverse_lerp_with_descending_range_2() {
        let number: Double = 61
        let lowerBound: Double = 70
        let upperBound: Double = 60
        let expectedRatio: Double = 0.9
        let result = Math.proportion(of: number, from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    func test_inverse_lerp_in_descending_range_with_positive_lower_bound_and_negative_upper_bound() {
        let number: Double = 0
        let lowerBound: Double = 100
        let upperBound: Double = -100
        let expectedRatio: Double = 0.5
        let result = Math.proportion(of: number, from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedRatio, result)
    }

    // MARK: -  1D Interpolation

    func test_interpolation() {
        let proportion: Double = 0.7
        let lowerBound: Double = 10
        let upperBound: Double = 20
        let expectedValue: Double = 17
        let result = Math.interpolate(proportion: proportion, from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedValue, result)
    }

    func test_interpolation_with_descending_range() {
        let proportion: Double = 0.7
        let lowerBound: Double = 10
        let upperBound: Double = 0
        let expectedValue: Double = 3
        let result = Math.interpolate(proportion: proportion, from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedValue, result)
    }

    func test_interpolation_with_descending_range_2() {
        let proportion: Double = 0.75
        let lowerBound: Double = 10
        let upperBound: Double = -10
        let expectedValue: Double = -5
        let result = Math.interpolate(proportion: proportion, from: lowerBound, to: upperBound)
        XCTAssertEqual(expectedValue, result)
    }

    // MARK: - Scaling

    func test_scaling_number_from_source_to_target_range() {
        let number: Double = 5
        let sourceRange: ClosedRange<Double> = 0...10
        let targetRange: ClosedRange<Double> = 60...70
        let expectedNumber: Double = 65
        let result = Math.scale(number, from: sourceRange, to: targetRange)
        XCTAssertEqual(expectedNumber, result)
    }

    func test_scaling_number_from_source_to_target_range_with_negative_lower_bound() {
        let number: Double = 5
        let sourceRange: ClosedRange<Double> = 0...10
        let targetRange: ClosedRange<Double> = -100...100
        let expectedNumber: Double = 0
        let result = Math.scale(number, from: sourceRange, to: targetRange)
        XCTAssertEqual(expectedNumber, result)
    }

    func test_scaling_number_from_source_to_target_range_with_identical_lower_and_upper_bound() {
        let number: Double = 5
        let sourceRange: ClosedRange<Double> = 0...10
        let targetRange: ClosedRange<Double> = 42...42
        let expectedNumber: Double = 42
        let result = Math.scale(number, from: sourceRange, to: targetRange)
        XCTAssertEqual(expectedNumber, result)
    }

    func test_scaling_any_number_from_source_to_target_range_with_identical_lower_and_upper_bound_equals_target_bound() {
        let number: Double = 7
        let sourceRange: ClosedRange<Double> = 0...10
        let targetRange: ClosedRange<Double> = 42...42
        let expectedNumber: Double = 42
        let result = Math.scale(number, from: sourceRange, to: targetRange)
        XCTAssertEqual(expectedNumber, result)
    }
}
