import Testing
@testable import SwiftPlus

struct ComparableTests {

    @Test
    func `test clamping within range`() {
        let number = 5
        let range = 0...10
        let result = number.clamped(within: range)
        let expected = 5
        #expect(result == expected)
    }

    @Test
    func `test clamping above upper bound`() {
        let number = 15
        let range = 0...10
        let result = number.clamped(within: range)
        let expected = 10
        #expect(result == expected)
    }

    @Test
    func `test clamping below lower bound`() {
        let number = -5
        let range = 0...10
        let result = number.clamped(within: range)
        let expected = 0
        #expect(result == expected)
    }
}
