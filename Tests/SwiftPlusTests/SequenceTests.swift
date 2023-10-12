import XCTest
@testable import SwiftPlus

final class SequenceTests: XCTestCase {

    func testSequenceCompact() {
        let elements: [Int?] = [1, nil, 2, nil, 3]
        let results: [Int] = elements.compact()
        let expected: [Int] = [1, 2, 3]
        XCTAssertEqual(results, expected)
    }

    func testSequenceCompactCast() {
        let elements: [Any] = [1, "abc", 2, true, 3]
        let result: [Int] = elements.compactCast()
        let expected = [1, 2, 3]
        XCTAssertEqual(result, expected)
    }
}
