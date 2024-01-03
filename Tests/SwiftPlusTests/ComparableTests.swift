import XCTest
@testable import SwiftPlus

final class ComparableTests: XCTestCase {

    func testClampingWithinRange() {
        let number = 5
        let range = 0...10
        let result = number.clamped(within: range)
        let expected = 5
        XCTAssertEqual(result, expected)
    }

    func testClampingAboveUpperBound() {
        let number = 15
        let range = 0...10
        let result = number.clamped(within: range)
        let expected = 10
        XCTAssertEqual(result, expected)
    }

    func testClampingBelowLowerBound() {
        let number = -5
        let range = 0...10
        let result = number.clamped(within: range)
        let expected = 0
        XCTAssertEqual(result, expected)
    }
}
