import XCTest
@testable import SwiftPlus

final class SwiftPlusTests: XCTestCase {

    func testSequenceCompact() {
        let optionalNumbers: [Int?] = [1, nil, 2, nil, 3]
        let results: [Int] = optionalNumbers.compact()
        let expected: [Int] = [1, 2, 3]
        XCTAssertEqual(results, expected)
    }

    static var allTests = [
        ("testSequenceCompact", testSequenceCompact),
    ]
}
